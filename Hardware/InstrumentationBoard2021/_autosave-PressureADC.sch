EESchema Schematic File Version 4
LIBS:InstrumentationBoard2021-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L InstrumentationBoard:ADS1114 U?
U 1 1 5FF40B49
P 5600 3750
F 0 "U?" H 5600 4313 49  0000 C CNN
F 1 "ADS1114" H 5600 4223 49  0000 C CNN
F 2 "" H 5600 3750 49  0001 C CNN
F 3 "" H 5600 3750 49  0001 C CNN
	1    5600 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF4107A
P 4800 4275
F 0 "#PWR?" H 4800 4025 50  0001 C CNN
F 1 "GND" H 4805 4102 50  0000 C CNN
F 2 "" H 4800 4275 50  0001 C CNN
F 3 "" H 4800 4275 50  0001 C CNN
	1    4800 4275
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4275 4800 3900
Wire Wire Line
	4800 3600 5100 3600
Wire Wire Line
	5100 3750 4800 3750
Connection ~ 4800 3750
Wire Wire Line
	4800 3750 4800 3600
Wire Wire Line
	5100 3900 4800 3900
Connection ~ 4800 3900
Wire Wire Line
	4800 3900 4800 3750
Text HLabel 6800 3750 2    49   Output ~ 0
PT_RDY
Text HLabel 6800 3900 2    49   BiDi ~ 0
PT_SDA
Text HLabel 6800 4050 2    49   Input ~ 0
PT_SCL
Wire Wire Line
	6800 3750 6100 3750
Wire Wire Line
	6100 3900 6800 3900
Wire Wire Line
	6800 4050 6100 4050
Wire Wire Line
	6100 3450 6800 3450
Wire Wire Line
	6800 3450 6800 3250
$Comp
L power:+5V #PWR?
U 1 1 5FF43E2B
P 6800 3250
F 0 "#PWR?" H 6800 3100 50  0001 C CNN
F 1 "+5V" H 6815 3423 50  0000 C CNN
F 2 "" H 6800 3250 50  0001 C CNN
F 3 "" H 6800 3250 50  0001 C CNN
	1    6800 3250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
