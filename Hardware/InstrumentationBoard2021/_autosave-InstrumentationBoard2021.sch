EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 3
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
L InstrumentationBoard2021-rescue:SEN-13879-SEN-13879 U3
U 1 1 5FA317C2
P 2200 5050
F 0 "U3" H 2200 5817 50  0000 C CNN
F 1 "SEN-13879" H 2200 5726 50  0000 C CNN
F 2 "SEN-13879:SPARKFUN_SEN-13879" H 2200 5050 50  0001 L BNN
F 3 "Manufacturer Recommendations" H 2200 5050 50  0001 L BNN
F 4 "SparkFun" H 2200 5050 50  0001 L BNN "Field4"
	1    2200 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5FA3397C
P 2950 5825
F 0 "#PWR0102" H 2950 5575 50  0001 C CNN
F 1 "GND" H 2955 5652 50  0000 C CNN
F 2 "" H 2950 5825 50  0001 C CNN
F 3 "" H 2950 5825 50  0001 C CNN
	1    2950 5825
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5FA340AF
P 3225 4375
F 0 "#PWR0103" H 3225 4225 50  0001 C CNN
F 1 "+5V" H 3240 4548 50  0000 C CNN
F 2 "" H 3225 4375 50  0001 C CNN
F 3 "" H 3225 4375 50  0001 C CNN
	1    3225 4375
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0104
U 1 1 5FA347DC
P 2925 4375
F 0 "#PWR0104" H 2925 4225 50  0001 C CNN
F 1 "+3.3V" H 2940 4548 50  0000 C CNN
F 2 "" H 2925 4375 50  0001 C CNN
F 3 "" H 2925 4375 50  0001 C CNN
	1    2925 4375
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 4550 2925 4550
Wire Wire Line
	2925 4550 2925 4375
Wire Wire Line
	2700 4650 3225 4650
Wire Wire Line
	3225 4650 3225 4375
Wire Wire Line
	2700 5550 2950 5550
Wire Wire Line
	2950 5550 2950 5825
Wire Wire Line
	1000 4750 1700 4750
Wire Wire Line
	1000 4850 1700 4850
Wire Wire Line
	1000 4950 1700 4950
Wire Wire Line
	1000 5050 1700 5050
Wire Wire Line
	1000 5150 1700 5150
$Sheet
S 6725 2475 1450 2125
U 5F8E26AF
F0 "ThermoCouples" 50
F1 "ThermoCouples.sch" 50
F2 "Tm_3" I R 8175 3900 59 
F3 "Tp_3" I R 8175 3800 59 
F4 "TC_C0" I L 6725 2975 59 
F5 "TC_C1" I L 6725 3075 59 
F6 "TC_EN" I L 6725 2875 59 
F7 "MISO" O L 6725 3850 59 
F8 "MOSI" I L 6725 3975 59 
F9 "SCK" I L 6725 4100 59 
F10 "Tm_1" I R 8175 2750 59 
F11 "Tm_4" I R 8175 4350 59 
F12 "Tp_1" I R 8175 2650 59 
F13 "Tp_4" I R 8175 4450 59 
F14 "Tm_2" I R 8175 3350 59 
F15 "Tp_2" I R 8175 3250 59 
F16 "TC_DRDY" O L 6725 3175 59 
F17 "TC_FAULT" O L 6725 3275 59 
$EndSheet
Wire Wire Line
	6025 3850 6375 3850
Wire Wire Line
	6025 3975 6250 3975
Wire Wire Line
	6025 4100 6125 4100
$Comp
L MRDT_Connectors:Molex_SL_02 Conn4
U 1 1 5FED0581
P 8975 2600
F 0 "Conn4" H 8917 2413 60  0000 C CNN
F 1 "Molex_SL_02" H 8917 2519 60  0000 C CNN
F 2 "MRDT_Connectors:MOLEX_SL_02_Vertical" H 8975 2500 60  0001 C CNN
F 3 "" H 8975 2500 60  0001 C CNN
	1    8975 2600
	1    0    0    1   
$EndComp
$Comp
L MRDT_Connectors:Molex_SL_05 Conn1
U 1 1 5FED0B7D
P 800 5200
F 0 "Conn1" H 742 5897 60  0000 C CNN
F 1 "Molex_SL_05" H 742 5791 60  0000 C CNN
F 2 "MRDT_Connectors:MOLEX_SL_05_Vertical" H 800 5200 60  0001 C CNN
F 3 "" H 800 5200 60  0001 C CNN
	1    800  5200
	-1   0    0    -1  
$EndComp
$Sheet
S 4050 2475 1975 3600
U 5F8DEA11
F0 "ESP32" 50
F1 "ESP32.sch" 50
F2 "PT_SCL" O L 4050 3375 59 
F3 "PT_SDA" B L 4050 3225 59 
F4 "LoadCell_TX" O L 4050 3775 59 
F5 "LoadCell_RX" I L 4050 3875 59 
F6 "MISO" I R 6025 3850 59 
F7 "MOSI" O R 6025 3975 59 
F8 "SCK" O R 6025 4100 59 
F9 "SDCard_CS" O R 6025 5325 59 
F10 "5V_Out" O L 4050 2775 59 
F11 "3V3_Out" O L 4050 2650 59 
F12 "TC_DRDY" I R 6025 3175 59 
F13 "TC_FAULT" I R 6025 3275 59 
F14 "TC_EN" O R 6025 2875 59 
F15 "TC_C0" O R 6025 2975 59 
F16 "TC_C1" O R 6025 3075 59 
F17 "LC_DOUT" I L 4050 5150 59 
F18 "LC_SCK" O L 4050 5250 59 
F19 "PT_RDY" I L 4050 3075 59 
$EndSheet
$Comp
L Connector:Micro_SD_Card J2
U 1 1 5FED5D2F
P 7475 5525
F 0 "J2" H 7425 6242 50  0000 C CNN
F 1 "Micro_SD_Card" H 7425 6151 50  0000 C CNN
F 2 "Connector_Card:microSD_HC_Hirose_DM3BT-DSF-PEJS" H 8625 5825 50  0001 C CNN
F 3 "http://katalog.we-online.de/em/datasheet/693072010801.pdf" H 7475 5525 50  0001 C CNN
	1    7475 5525
	1    0    0    -1  
$EndComp
Wire Wire Line
	6025 5325 6575 5325
Wire Wire Line
	6575 5625 6125 5625
Wire Wire Line
	6125 5625 6125 4100
Connection ~ 6125 4100
Wire Wire Line
	6125 4100 6725 4100
Wire Wire Line
	6575 5425 6250 5425
Wire Wire Line
	6250 5425 6250 3975
Connection ~ 6250 3975
Wire Wire Line
	6250 3975 6725 3975
Wire Wire Line
	6575 5825 6375 5825
Wire Wire Line
	6375 5825 6375 3850
Connection ~ 6375 3850
Wire Wire Line
	6375 3850 6725 3850
NoConn ~ 6575 5225
NoConn ~ 6575 5925
$Comp
L power:+3.3V #PWR0105
U 1 1 5FEDC663
P 6500 5075
F 0 "#PWR0105" H 6500 4925 50  0001 C CNN
F 1 "+3.3V" H 6515 5248 50  0000 C CNN
F 2 "" H 6500 5075 50  0001 C CNN
F 3 "" H 6500 5075 50  0001 C CNN
	1    6500 5075
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 5075 6500 5525
Wire Wire Line
	6500 5525 6575 5525
Wire Wire Line
	6575 5725 6500 5725
Wire Wire Line
	6500 5725 6500 6075
$Comp
L power:GND #PWR0106
U 1 1 5FEDDDBF
P 6500 6075
F 0 "#PWR0106" H 6500 5825 50  0001 C CNN
F 1 "GND" H 6505 5902 50  0000 C CNN
F 2 "" H 6500 6075 50  0001 C CNN
F 3 "" H 6500 6075 50  0001 C CNN
	1    6500 6075
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5FEDE8DB
P 8425 6250
F 0 "#PWR0107" H 8425 6000 50  0001 C CNN
F 1 "GND" H 8430 6077 50  0000 C CNN
F 2 "" H 8425 6250 50  0001 C CNN
F 3 "" H 8425 6250 50  0001 C CNN
	1    8425 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8275 6125 8425 6125
Wire Wire Line
	8425 6125 8425 6250
Wire Wire Line
	8175 2650 8775 2650
Wire Wire Line
	8175 2750 8775 2750
$Comp
L MRDT_Connectors:Molex_SL_02 Conn5
U 1 1 5FEE08C6
P 8975 3200
F 0 "Conn5" H 8917 3013 60  0000 C CNN
F 1 "Molex_SL_02" H 8917 3119 60  0000 C CNN
F 2 "MRDT_Connectors:MOLEX_SL_02_Vertical" H 8975 3100 60  0001 C CNN
F 3 "" H 8975 3100 60  0001 C CNN
	1    8975 3200
	1    0    0    1   
$EndComp
Wire Wire Line
	8175 3250 8775 3250
Wire Wire Line
	8175 3350 8775 3350
Wire Wire Line
	8175 3900 8775 3900
$Comp
L MRDT_Connectors:Molex_SL_02 Conn7
U 1 1 5FEE206C
P 8975 4500
F 0 "Conn7" H 8917 4313 60  0000 C CNN
F 1 "Molex_SL_02" H 8917 4419 60  0000 C CNN
F 2 "MRDT_Connectors:MOLEX_SL_02_Vertical" H 8975 4400 60  0001 C CNN
F 3 "" H 8975 4400 60  0001 C CNN
	1    8975 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8175 4350 8775 4350
Wire Wire Line
	8175 4450 8775 4450
Wire Wire Line
	6025 2875 6725 2875
Wire Wire Line
	6025 2975 6725 2975
Wire Wire Line
	6025 3075 6725 3075
Wire Wire Line
	6025 3175 6725 3175
Wire Wire Line
	6025 3275 6725 3275
$Comp
L MRDT_Connectors:Molex_SL_02 Conn3
U 1 1 5FF2E9B8
P 3350 3725
F 0 "Conn3" H 3478 3883 60  0000 L CNN
F 1 "Molex_SL_02" H 3478 3777 60  0000 L CNN
F 2 "MRDT_Connectors:MOLEX_SL_02_Vertical" H 3350 3625 60  0001 C CNN
F 3 "" H 3350 3625 60  0001 C CNN
	1    3350 3725
	-1   0    0    1   
$EndComp
Wire Wire Line
	2700 5150 4050 5150
Wire Wire Line
	2700 5250 4050 5250
Wire Wire Line
	3550 3775 4050 3775
Wire Wire Line
	3550 3875 4050 3875
$Comp
L power:+5V #PWR0108
U 1 1 5FF39B6C
P 3450 2375
F 0 "#PWR0108" H 3450 2225 50  0001 C CNN
F 1 "+5V" H 3465 2548 50  0000 C CNN
F 2 "" H 3450 2375 50  0001 C CNN
F 3 "" H 3450 2375 50  0001 C CNN
	1    3450 2375
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0109
U 1 1 5FF39B72
P 3750 2375
F 0 "#PWR0109" H 3750 2225 50  0001 C CNN
F 1 "+3.3V" H 3765 2548 50  0000 C CNN
F 2 "" H 3750 2375 50  0001 C CNN
F 3 "" H 3750 2375 50  0001 C CNN
	1    3750 2375
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2775 3450 2775
Wire Wire Line
	3450 2375 3450 2775
Wire Wire Line
	3750 2650 4050 2650
Wire Wire Line
	3750 2375 3750 2650
$Comp
L InstrumentationBoard2021-rescue:ADS1114-InstrumentationBoard U?
U 1 1 5FF49B82
P 2175 3075
AR Path="/5FF40721/5FF49B82" Ref="U?"  Part="1" 
AR Path="/5FF49B82" Ref="U2"  Part="1" 
F 0 "U2" H 2175 3638 49  0000 C CNN
F 1 "ADS1114" H 2175 3548 49  0000 C CNN
F 2 "Package_SO:MSOP-10_3x3mm_P0.5mm" H 2175 3075 49  0001 C CNN
F 3 "" H 2175 3075 49  0001 C CNN
	1    2175 3075
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF49B88
P 1375 3600
AR Path="/5FF40721/5FF49B88" Ref="#PWR?"  Part="1" 
AR Path="/5FF49B88" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 1375 3350 50  0001 C CNN
F 1 "GND" H 1380 3427 50  0000 C CNN
F 2 "" H 1375 3600 50  0001 C CNN
F 3 "" H 1375 3600 50  0001 C CNN
	1    1375 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1375 3600 1375 3225
Wire Wire Line
	1375 2925 1675 2925
Wire Wire Line
	1675 3075 1375 3075
Connection ~ 1375 3075
Wire Wire Line
	1375 3075 1375 2925
Wire Wire Line
	1675 3225 1375 3225
Connection ~ 1375 3225
Wire Wire Line
	1375 3225 1375 3075
Wire Wire Line
	2675 3075 4050 3075
Wire Wire Line
	2675 3225 4050 3225
Wire Wire Line
	2675 3375 4050 3375
Wire Wire Line
	2675 2775 3450 2775
Connection ~ 3450 2775
Wire Wire Line
	2675 2925 2875 2925
Wire Wire Line
	2875 2175 2875 2925
$Comp
L MRDT_Connectors:Molex_SL_03 Conn2
U 1 1 5FF58A56
P 2450 2225
F 0 "Conn2" H 2392 2722 60  0000 C CNN
F 1 "Molex_SL_03" H 2392 2616 60  0000 C CNN
F 2 "MRDT_Connectors:MOLEX_SL_03_Vertical" H 2450 2225 60  0001 C CNN
F 3 "" H 2450 2225 60  0001 C CNN
	1    2450 2225
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2650 2175 2875 2175
Wire Wire Line
	2650 2075 3075 2075
Wire Wire Line
	3075 2075 3075 2200
$Comp
L power:GND #PWR?
U 1 1 5FF61162
P 3075 2200
AR Path="/5FF40721/5FF61162" Ref="#PWR?"  Part="1" 
AR Path="/5FF61162" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 3075 1950 50  0001 C CNN
F 1 "GND" H 3080 2027 50  0000 C CNN
F 2 "" H 3075 2200 50  0001 C CNN
F 3 "" H 3075 2200 50  0001 C CNN
	1    3075 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1975 3075 1975
Wire Wire Line
	3075 1975 3075 1800
$Comp
L power:+12V #PWR0112
U 1 1 5FF648F1
P 3075 1800
F 0 "#PWR0112" H 3075 1650 50  0001 C CNN
F 1 "+12V" H 3090 1973 50  0000 C CNN
F 2 "" H 3075 1800 50  0001 C CNN
F 3 "" H 3075 1800 50  0001 C CNN
	1    3075 1800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J1
U 1 1 5FF809B9
P 4700 1700
F 0 "J1" H 4808 1981 50  0000 C CNN
F 1 "Conn_01x03_Male" H 4808 1890 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4700 1700 50  0001 C CNN
F 3 "~" H 4700 1700 50  0001 C CNN
	1    4700 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 5FF81A64
P 5400 725
F 0 "#PWR0113" H 5400 575 50  0001 C CNN
F 1 "+5V" H 5415 898 50  0000 C CNN
F 2 "" H 5400 725 50  0001 C CNN
F 3 "" H 5400 725 50  0001 C CNN
	1    5400 725 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FF88A29
P 5900 1450
AR Path="/5F8E26AF/5FF88A29" Ref="C?"  Part="1" 
AR Path="/5FF88A29" Ref="C2"  Part="1" 
F 0 "C2" V 5725 1400 50  0000 L CNN
F 1 "33uF" V 6050 1350 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 5938 1300 50  0001 C CNN
F 3 "~" H 5900 1450 50  0001 C CNN
	1    5900 1450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4900 1600 5400 1600
Wire Wire Line
	5400 1600 5400 1450
Wire Wire Line
	5400 1450 5750 1450
Wire Wire Line
	6050 1450 6350 1450
$Comp
L power:GND #PWR0114
U 1 1 5FF922D6
P 6350 1750
F 0 "#PWR0114" H 6350 1500 50  0001 C CNN
F 1 "GND" H 6355 1577 50  0000 C CNN
F 2 "" H 6350 1750 50  0001 C CNN
F 3 "" H 6350 1750 50  0001 C CNN
	1    6350 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1700 6350 1700
Wire Wire Line
	6350 1450 6350 1700
Connection ~ 6350 1700
Wire Wire Line
	6350 1700 6350 1750
Wire Wire Line
	4900 1800 5400 1800
Wire Wire Line
	5400 1800 5400 2075
Wire Wire Line
	5400 2075 5625 2075
Wire Wire Line
	5625 2075 5625 2000
$Comp
L power:+12V #PWR0115
U 1 1 5FF9E0CB
P 5625 2000
F 0 "#PWR0115" H 5625 1850 50  0001 C CNN
F 1 "+12V" H 5640 2173 50  0000 C CNN
F 2 "" H 5625 2000 50  0001 C CNN
F 3 "" H 5625 2000 50  0001 C CNN
	1    5625 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5FFA3ED1
P 3175 6700
AR Path="/5F8DEA11/5FFA3ED1" Ref="D?"  Part="1" 
AR Path="/5FFA3ED1" Ref="D1"  Part="1" 
F 0 "D1" H 3175 6600 50  0000 C CNN
F 1 "LED" H 3325 6625 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3175 6700 50  0001 C CNN
F 3 "~" H 3175 6700 50  0001 C CNN
	1    3175 6700
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D?
U 1 1 5FFA6348
P 3175 7025
AR Path="/5F8DEA11/5FFA6348" Ref="D?"  Part="1" 
AR Path="/5FFA6348" Ref="D2"  Part="1" 
F 0 "D2" H 3175 6925 50  0000 C CNN
F 1 "LED" H 3325 6950 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3175 7025 50  0001 C CNN
F 3 "~" H 3175 7025 50  0001 C CNN
	1    3175 7025
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D?
U 1 1 5FFA85E8
P 3175 7350
AR Path="/5F8DEA11/5FFA85E8" Ref="D?"  Part="1" 
AR Path="/5FFA85E8" Ref="D3"  Part="1" 
F 0 "D3" H 3175 7250 50  0000 C CNN
F 1 "LED" H 3325 7275 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3175 7350 50  0001 C CNN
F 3 "~" H 3175 7350 50  0001 C CNN
	1    3175 7350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5FFADF57
P 3775 7525
F 0 "#PWR0116" H 3775 7275 50  0001 C CNN
F 1 "GND" H 3780 7352 50  0000 C CNN
F 2 "" H 3775 7525 50  0001 C CNN
F 3 "" H 3775 7525 50  0001 C CNN
	1    3775 7525
	1    0    0    -1  
$EndComp
Wire Wire Line
	3775 7525 3775 7350
Wire Wire Line
	3775 6700 3325 6700
Wire Wire Line
	3325 7025 3775 7025
Connection ~ 3775 7025
Wire Wire Line
	3775 7025 3775 6700
Wire Wire Line
	3325 7350 3775 7350
Connection ~ 3775 7350
Wire Wire Line
	3775 7350 3775 7025
$Comp
L Device:R R3
U 1 1 5FFB77D0
P 2400 6700
F 0 "R3" V 2193 6700 50  0000 C CNN
F 1 "330" V 2284 6700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2330 6700 50  0001 C CNN
F 3 "~" H 2400 6700 50  0001 C CNN
	1    2400 6700
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5FFB8370
P 2400 7025
F 0 "R4" V 2193 7025 50  0000 C CNN
F 1 "500" V 2284 7025 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2330 7025 50  0001 C CNN
F 3 "~" H 2400 7025 50  0001 C CNN
	1    2400 7025
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5FFBAF23
P 2400 7350
F 0 "R5" V 2193 7350 50  0000 C CNN
F 1 "1k" V 2284 7350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2330 7350 50  0001 C CNN
F 3 "~" H 2400 7350 50  0001 C CNN
	1    2400 7350
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 6700 3025 6700
Wire Wire Line
	2550 7025 3025 7025
Wire Wire Line
	2550 7350 3025 7350
$Comp
L power:+5V #PWR0117
U 1 1 5FFC658B
P 1550 6425
F 0 "#PWR0117" H 1550 6275 50  0001 C CNN
F 1 "+5V" H 1565 6598 50  0000 C CNN
F 2 "" H 1550 6425 50  0001 C CNN
F 3 "" H 1550 6425 50  0001 C CNN
	1    1550 6425
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0118
U 1 1 5FFC6591
P 1900 6425
F 0 "#PWR0118" H 1900 6275 50  0001 C CNN
F 1 "+3.3V" H 1915 6598 50  0000 C CNN
F 2 "" H 1900 6425 50  0001 C CNN
F 3 "" H 1900 6425 50  0001 C CNN
	1    1900 6425
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0119
U 1 1 5FFCA08D
P 1175 6425
F 0 "#PWR0119" H 1175 6275 50  0001 C CNN
F 1 "+12V" H 1190 6598 50  0000 C CNN
F 2 "" H 1175 6425 50  0001 C CNN
F 3 "" H 1175 6425 50  0001 C CNN
	1    1175 6425
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 6425 1900 6700
Wire Wire Line
	1900 6700 2250 6700
Wire Wire Line
	2250 7025 1550 7025
Wire Wire Line
	1550 7025 1550 6425
Wire Wire Line
	1175 6425 1175 7350
Wire Wire Line
	1175 7350 2250 7350
$Comp
L Connector:TestPoint TP?
U 1 1 5FFDE20B
P 1425 5450
AR Path="/5F8DEA11/5FFDE20B" Ref="TP?"  Part="1" 
AR Path="/5FFDE20B" Ref="B-1"  Part="1" 
F 0 "B-1" V 1350 5375 50  0000 L CNN
F 1 "TestPoint" V 1400 5650 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D4.0mm" H 1625 5450 50  0001 C CNN
F 3 "~" H 1625 5450 50  0001 C CNN
	1    1425 5450
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5FFDE211
P 1425 5350
AR Path="/5F8DEA11/5FFDE211" Ref="TP?"  Part="1" 
AR Path="/5FFDE211" Ref="B+1"  Part="1" 
F 0 "B+1" V 1500 5275 50  0000 L CNN
F 1 "TestPoint" V 1450 5550 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D4.0mm" H 1625 5350 50  0001 C CNN
F 3 "~" H 1625 5350 50  0001 C CNN
	1    1425 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1700 5350 1425 5350
Wire Wire Line
	1425 5450 1700 5450
$Comp
L Connector:TestPoint TP?
U 1 1 5FFF7E42
P 1075 7350
AR Path="/5F8DEA11/5FFF7E42" Ref="TP?"  Part="1" 
AR Path="/5FFF7E42" Ref="12V1"  Part="1" 
F 0 "12V1" V 1150 7275 50  0000 L CNN
F 1 "TestPoint" V 975 7175 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D4.0mm" H 1275 7350 50  0001 C CNN
F 3 "~" H 1275 7350 50  0001 C CNN
	1    1075 7350
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5FFFF986
P 1450 7025
AR Path="/5F8DEA11/5FFFF986" Ref="TP?"  Part="1" 
AR Path="/5FFFF986" Ref="5V1"  Part="1" 
F 0 "5V1" V 1525 6950 50  0000 L CNN
F 1 "TestPoint" V 1350 6850 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D4.0mm" H 1650 7025 50  0001 C CNN
F 3 "~" H 1650 7025 50  0001 C CNN
	1    1450 7025
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 600037CD
P 1800 6700
AR Path="/5F8DEA11/600037CD" Ref="TP?"  Part="1" 
AR Path="/600037CD" Ref="3V3"  Part="1" 
F 0 "3V3" V 1875 6625 50  0000 L CNN
F 1 "TestPoint" V 1700 6525 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D4.0mm" H 2000 6700 50  0001 C CNN
F 3 "~" H 2000 6700 50  0001 C CNN
	1    1800 6700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1800 6700 1900 6700
Connection ~ 1900 6700
Wire Wire Line
	1450 7025 1550 7025
Connection ~ 1550 7025
Wire Wire Line
	1075 7350 1175 7350
Connection ~ 1175 7350
$Comp
L Connector:TestPoint TP?
U 1 1 60012F57
P 4025 7350
AR Path="/5F8DEA11/60012F57" Ref="TP?"  Part="1" 
AR Path="/60012F57" Ref="TP6"  Part="1" 
F 0 "TP6" V 4100 7275 50  0000 L CNN
F 1 "TestPoint" V 3925 7175 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D4.0mm" H 4225 7350 50  0001 C CNN
F 3 "~" H 4225 7350 50  0001 C CNN
	1    4025 7350
	0    1    1    0   
$EndComp
Wire Wire Line
	3775 7350 4025 7350
$Comp
L Device:C C?
U 1 1 6001D4CD
P 5900 1025
AR Path="/5F8E26AF/6001D4CD" Ref="C?"  Part="1" 
AR Path="/6001D4CD" Ref="C1"  Part="1" 
F 0 "C1" V 5725 975 50  0000 L CNN
F 1 ".1uF" V 6050 925 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5938 875 50  0001 C CNN
F 3 "~" H 5900 1025 50  0001 C CNN
	1    5900 1025
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5400 725  5400 1025
Connection ~ 5400 1450
Wire Wire Line
	5750 1025 5400 1025
Connection ~ 5400 1025
Wire Wire Line
	5400 1025 5400 1450
Wire Wire Line
	6050 1025 6350 1025
Wire Wire Line
	6350 1025 6350 1450
Connection ~ 6350 1450
Wire Wire Line
	8175 3800 8775 3800
$Comp
L MRDT_Connectors:Molex_SL_02 Conn6
U 1 1 5FEE13ED
P 8975 3750
F 0 "Conn6" H 8917 3563 60  0000 C CNN
F 1 "Molex_SL_02" H 8917 3669 60  0000 C CNN
F 2 "MRDT_Connectors:MOLEX_SL_02_Vertical" H 8975 3650 60  0001 C CNN
F 3 "" H 8975 3650 60  0001 C CNN
	1    8975 3750
	1    0    0    1   
$EndComp
$EndSCHEMATC
