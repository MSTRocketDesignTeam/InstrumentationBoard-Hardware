#include <Arduino_JSON.h>
#include <WiFi.h>
#include <WebSocketClient.h>
#include "HX711.h"
#include <SPI.h>
#include <Wire.h>
#include <mySD.h>


//
#define ERR_INDICATOR  26
#define CONN_INDICATOR 25

//
#define MUX_EN         27
#define MUX_C_ZERO     12
#define MUX_C_ONE      13

//
#define SPI_CS          4
#define SPI_SCK         5
#define SPI_MOSI       18
#define SPI_MISO       19

//I2C Pins & ADC Address
#define I2C_SDA        23
#define I2C_SCL        22
#define ADC_ADDR     0x48

//Load Cell Pins
#define LC_DOUT  16
#define LC_SCK  33

//LoadCell
const float gravity = 9.80665; 
const float lbsToKg = 0.453592;
const long calibrationFactor = -7000;

//Pressure ADC
const float ratioThing = 0.09101; //TODO: Give better name

//Websocket Stuff
String data;
char path[] = "/";   
const char* ssid     = "Instrumentation Data Logger";
const char* password = "fuckmeharderchickensandwich";
char* host = "192.168.4.1";  
const int espport= 3000;
boolean handshakeFailed = 0;

//Timer for sending data
unsigned long currentMillis;
unsigned long previousMillis = 0;
unsigned long startMillis = 0;
unsigned long interval = 20; 
int intervalWirelessUpdate = 5;
int intervalUpdateCount = 0;

//Logging Information
bool loggingStatus = false;
String SDCardFileName;

//Function Declerations
void wsconnect(); 
void processData(String dataJSON, bool &logStatus, String &SDCardFileName);
int getFileNumber(File dir);
float getPressureValue(uint8_t addressRegister);
//float getForceValue();

File Test;
HX711 scale;
WebSocketClient webSocketClient;
WiFiClient client;

void setup() 
{
  Serial.begin(115200);
  delay(10);

  pinMode(ERR_INDICATOR, OUTPUT);
  pinMode(CONN_INDICATOR, OUTPUT);
  pinMode(MUX_EN, OUTPUT);
  pinMode(MUX_C_ZERO, OUTPUT);
  pinMode(MUX_C_ONE, OUTPUT);
  pinMode(SPI_CS, OUTPUT);

  digitalWrite(ERR_INDICATOR, LOW);
  digitalWrite(CONN_INDICATOR, LOW);
  digitalWrite(MUX_EN, LOW);
  digitalWrite(MUX_C_ZERO, LOW);
  digitalWrite(MUX_C_ONE, LOW);

  //Initialize SD Card
  if (!SD.begin( SPI_CS, SPI_MOSI, SPI_MISO, SPI_SCK ) ) 
  {
    Serial.println("initialization failed!");
    return;
  }
  Serial.println("initialization done.");

  //Open ROOT directory, and find how many files there are
  int fileCount;
  Test = SD.open("/");
  if (Test) 
  {    
    fileCount = getFileNumber(Test);
    Test.close();
  } 
  else 
  {
    Serial.println("error opening ROOT");
    return;
  }

  //Connect to RaspberryPi Network
  Serial.println();
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) 
  {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.println("WiFi connected");  
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
  delay(1000);

  //Begin WebSocket
  wsconnect();
  if(handshakeFailed == 0) 
  {
    digitalWrite(CONN_INDICATOR, HIGH);
  }

  //Initialize Pressure Sensor ADC
  Wire.begin(I2C_SDA, I2C_SCL);
  Wire.beginTransmission(ADC_ADDR);
  // Select configuration register
  Wire.write(0x01);
  // AINP = AIN0 and AINN = AIN1, +/- 2.048V
  Wire.write(0x80);
  // Continuous conversion mode, 128 SPS
  Wire.write(0x83);
  // Stop I2C Transmission
  Wire.endTransmission();

  //Initialize LoadCell
  scale.begin(LC_DOUT, LC_SCK);
  scale.set_scale();
  scale.tare();

}

void loop() 
{
  if (client.connected()) 
  {
    currentMillis = millis(); 

    //Get any sent information
    data = "";
    webSocketClient.getData(data);  
    if(data.length() > 0) 
    {  
      processData(data, loggingStatus, SDCardFileName);
    }
    
    if (abs(currentMillis - previousMillis) >= interval) 
    {
      previousMillis = currentMillis;
      if(loggingStatus == true) 
      {
        JSONVar dataSend;
        String SDCardData = "";
        float timeData;
        float forceData = 0;
        float pressureData;

        timeData = ( (previousMillis - startMillis) / (float) 1000);
        pressureData = getPressureValue(0x00);
        forceData = getForceValue();

        SDCardData += timeData;
        SDCardData += ",";
        SDCardData += pressureData;
        SDCardData += ",";
        SDCardData += forceData;
         
        const char * fileName = SDCardFileName.c_str();
        Test = SD.open(fileName, FILE_WRITE);
        if (Test) 
        {
          Test.println(SDCardData);
          Test.flush();
          Test.close();
        } 
        else 
        {
          Serial.println("error opening file");
        }

        if(intervalUpdateCount >= intervalWirelessUpdate) 
        {
          dataSend["MessageType"] = "data";
          dataSend["time"] = timeData;
          dataSend["force"] = forceData; 
          dataSend["pressure"] = pressureData;

          webSocketClient.sendData(JSON.stringify(dataSend));

          intervalUpdateCount = 0;
        }
        else 
        {
          intervalUpdateCount++;
        }
        
        
      }
    }
  }
}

void wsconnect()
{
  // Connect to the websocket server
  if (client.connect(host, espport)) 
  {
    Serial.println("Connected");
  } 
  else 
  {
    Serial.println("Connection failed.");
    delay(1000);  
    if(handshakeFailed)
    {
      handshakeFailed=0;
      ESP.restart();
    }
    handshakeFailed=1;
  }

  // Handshake with the server
  webSocketClient.path = path;
  webSocketClient.host = host;
  if (webSocketClient.handshake(client)) 
  {
    Serial.println("Handshake successful");
  } 
  else 
  { 
   Serial.println("Handshake failed.");
   delay(4000);  
   if(handshakeFailed)
   {
    handshakeFailed=0;
    ESP.restart();
   }
   handshakeFailed=1;
  }
}

void processData(String dataJSON, bool &logStatus, String &SDCardFileName) 
{  
  JSONVar dataS = JSON.parse(dataJSON);
  JSONVar handshake;

  Serial.println(dataJSON);
  if(dataS["MessageType"] == (String) "settings") 
  {
    logStatus = dataS["LoggingStatus"];
    if(logStatus == true) 
    {
      startMillis = currentMillis;
      SDCardFileName = dataS["SDCardFileName"];
      SDCardFileName += ".txt";
      const char* fileNameTwo = SDCardFileName.c_str();
      Test = SD.open(fileNameTwo, FILE_WRITE);
      if (Test) 
      {
        Test.println("Time,Pressure,Force");
        Test.flush();
        Test.close();
        Serial.println("FileSetup Correct");
      } 
      else 
      {
        Serial.println("error opening file");
      }

      handshake["MessageType"] = "handshake";
      handshake["logData"] = true;
      webSocketClient.sendData(JSON.stringify(handshake));
    }
    else 
    {
      handshake["MessageType"] = "handshake";
      handshake["logData"] = false;
      webSocketClient.sendData(JSON.stringify(handshake));
    } 
  }
}


float getPressureValue(uint8_t addressRegister)
{
  unsigned int data[2];

  // Start I2C Transmission
  Wire.beginTransmission(ADC_ADDR);
  // Select data register
  Wire.write(0x00);
  // Stop I2C Transmission
  Wire.endTransmission();

  // Request 2 bytes of data
  Wire.requestFrom(ADC_ADDR, 2);

  // Read 2 bytes of data
  // raw_adc msb, raw_adc lsb
  if (Wire.available() == 2)
  {
    data[0] = Wire.read();
    data[1] = Wire.read();
  }

  // Convert the data
  float raw_adc = (data[0] * 256.0) + data[1];

  if (raw_adc > 32767)
  {
    raw_adc -= 65535;
  }

  //Convert to PSI
  raw_adc -= 5300;
  raw_adc *= ratioThing;
  
  return abs(raw_adc);
}


float getForceValue() 
{
  scale.set_scale(calibrationFactor);
  //Gets value in lbs
  float scaleValue = scale.get_units();
  //Converts to Kg
  scaleValue *= lbsToKg;
  //Converts to N
  scaleValue *= gravity;
  //Make positive
  scaleValue *= -1;
  //Returns value in Newtons
  return scaleValue;
}



int getFileNumber(File dir) 
{
  int fileNumber = 0; 
  
  while(true) 
    {
     File entry =  dir.openNextFile();
     if (! entry)   
       break;
   
     // Print the name
     if ( !entry.isDirectory() )
     {
       Serial.println(entry.name());
       fileNumber++;
     }
     
     entry.close();
   }

   return fileNumber;
}
