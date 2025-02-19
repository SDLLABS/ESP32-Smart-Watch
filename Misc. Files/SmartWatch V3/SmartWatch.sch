EESchema Schematic File Version 4
LIBS:SmartWatch-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "ESP32 Smartwatch"
Date "10/29/2019"
Rev "3"
Comp ""
Comment1 ""
Comment2 "https://hackaday.io/project/168227-custom-smartwatch"
Comment3 "Offical project page can be found at "
Comment4 ""
$EndDescr
Text GLabel 1300 3150 0    50   Input ~ 0
VUSB
$Comp
L Battery_Management:MCP73811T-420I-OT U5
U 1 1 5DC29692
P 1950 3450
F 0 "U5" H 1450 3850 50  0000 L CNN
F 1 "MCP73811T-420I-OT" H 1450 3950 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 2000 3200 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22036b.pdf" H 1700 3700 50  0001 C CNN
F 4 "MCP73811T-420I/OTCT-ND" H 0   0   50  0001 C CNN "DigiKey Part Number"
	1    1950 3450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J2
U 1 1 5DB891A9
P 1450 1100
F 0 "J2" H 1344 775 50  0000 C CNN
F 1 "Bat_in" H 1344 866 50  0000 C CNN
F 2 "SmartWatch:BATTERY" H 1450 1100 50  0001 C CNN
F 3 "~" H 1450 1100 50  0001 C CNN
	1    1450 1100
	-1   0    0    1   
$EndComp
Text GLabel 1650 1000 2    50   Input ~ 0
BAT+
Wire Wire Line
	1450 3550 1550 3550
$Comp
L power:GND #PWR03
U 1 1 5DB893E5
P 1950 3750
F 0 "#PWR03" H 1950 3500 50  0001 C CNN
F 1 "GND" H 1955 3577 50  0000 C CNN
F 2 "" H 1950 3750 50  0001 C CNN
F 3 "" H 1950 3750 50  0001 C CNN
	1    1950 3750
	1    0    0    -1  
$EndComp
Text GLabel 2550 3350 2    50   Input ~ 0
BAT+
$Comp
L SmartWatch-rescue:MAX9065 U4
U 1 1 5DB91CCB
P 1800 2150
F 0 "U4" H 2150 2500 50  0000 L CNN
F 1 "MAX9065" H 2100 2400 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 1550 2500 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX9065.pdf" H 1550 2500 50  0001 C CNN
F 4 "MAX9065EUK+TCT-ND" H 0   0   50  0001 C CNN "DigiKey Part Number"
	1    1800 2150
	1    0    0    -1  
$EndComp
Text GLabel 1350 1800 0    50   Input ~ 0
BAT+
Wire Wire Line
	1800 1850 1800 1800
Wire Wire Line
	1800 1800 1350 1800
Wire Wire Line
	1350 1800 1350 2150
Wire Wire Line
	1350 2150 1450 2150
$Comp
L power:GND #PWR02
U 1 1 5DB9775B
P 1800 2550
F 0 "#PWR02" H 1800 2300 50  0001 C CNN
F 1 "GND" H 1805 2377 50  0000 C CNN
F 2 "" H 1800 2550 50  0001 C CNN
F 3 "" H 1800 2550 50  0001 C CNN
	1    1800 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 2500 1750 2550
Wire Wire Line
	1750 2550 1800 2550
Wire Wire Line
	1850 2500 1850 2550
Wire Wire Line
	1850 2550 1800 2550
Connection ~ 1800 2550
Text GLabel 2150 2150 2    50   Input ~ 0
UV_LO
$Comp
L SmartWatch-rescue:ADXL337 U7
U 1 1 5DBD1D86
P 3450 3150
F 0 "U7" H 2850 3650 50  0000 R CNN
F 1 "ADXL337" H 2950 3550 50  0000 R CNN
F 2 "SmartWatch:LFCSP-16-1EP_3x3mm_P0.5mm_EP1.6x1.6mm" H 3000 3600 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/ADXL337.pdf" H 3000 3600 50  0001 C CNN
F 4 "ADXL337BCPZ-RL7CT-ND" H 0   0   50  0001 C CNN "DigiKey Part Number"
	1    3450 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2700 3400 2550
Wire Wire Line
	3400 2550 3450 2550
Wire Wire Line
	3500 2550 3500 2700
$Comp
L power:+3.3V #PWR05
U 1 1 5DBD2E26
P 3450 2550
F 0 "#PWR05" H 3450 2400 50  0001 C CNN
F 1 "+3.3V" H 3465 2723 50  0000 C CNN
F 2 "" H 3450 2550 50  0001 C CNN
F 3 "" H 3450 2550 50  0001 C CNN
	1    3450 2550
	1    0    0    -1  
$EndComp
Connection ~ 3450 2550
Wire Wire Line
	3450 2550 3500 2550
$Comp
L power:GND #PWR06
U 1 1 5DBD2E83
P 3450 3700
F 0 "#PWR06" H 3450 3450 50  0001 C CNN
F 1 "GND" H 3455 3527 50  0000 C CNN
F 2 "" H 3450 3700 50  0001 C CNN
F 3 "" H 3450 3700 50  0001 C CNN
	1    3450 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3600 3250 3700
Wire Wire Line
	3250 3700 3350 3700
Wire Wire Line
	3650 3700 3650 3600
Connection ~ 3450 3700
Wire Wire Line
	3450 3700 3550 3700
Wire Wire Line
	3450 3600 3450 3700
Wire Wire Line
	3550 3600 3550 3700
Connection ~ 3550 3700
Wire Wire Line
	3550 3700 3650 3700
Wire Wire Line
	3350 3600 3350 3700
Connection ~ 3350 3700
Wire Wire Line
	3350 3700 3450 3700
Text GLabel 3950 3150 2    50   Input ~ 0
X_SIG
Text GLabel 3950 3250 2    50   Input ~ 0
Y_SIG
Text GLabel 3950 3050 2    50   Input ~ 0
Z_SIG
Text GLabel 5600 4000 2    50   Input ~ 0
X_SIG
Text GLabel 5600 4100 2    50   Input ~ 0
Y_SIG
Text GLabel 5600 4300 2    50   Input ~ 0
Z_SIG
NoConn ~ 2950 3150
Wire Wire Line
	5600 2500 6150 2500
Text Label 5850 2500 0    50   ~ 0
LCD_CS
Wire Wire Line
	5600 3100 6150 3100
Text Label 5850 3100 0    50   ~ 0
LCD_SCK
Wire Wire Line
	5600 3500 6150 3500
Wire Wire Line
	5600 3400 6150 3400
Text Label 5850 3400 0    50   ~ 0
LCD_RST
Wire Wire Line
	5600 3300 6150 3300
Text Label 5850 3300 0    50   ~ 0
LCD_A0
Text Label 8350 4600 2    50   ~ 0
LCD_LED
$Comp
L Device:Q_PMOS_DGS Q3
U 1 1 5DBCFE45
P 7650 4300
F 0 "Q3" H 7855 4346 50  0000 L CNN
F 1 "FDN340P" H 7855 4255 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7850 4400 50  0001 C CNN
F 3 "~" H 7650 4300 50  0001 C CNN
F 4 "FDN340PCT-ND" H 250 100 50  0001 C CNN "DigiKey Part Number"
	1    7650 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 4500 7750 4600
Wire Wire Line
	7750 4600 7850 4600
$Comp
L power:+3.3V #PWR0119
U 1 1 5DBD2E28
P 7750 4100
F 0 "#PWR0119" H 7750 3950 50  0001 C CNN
F 1 "+3.3V" H 7765 4273 50  0000 C CNN
F 2 "" H 7750 4100 50  0001 C CNN
F 3 "" H 7750 4100 50  0001 C CNN
	1    7750 4100
	1    0    0    -1  
$EndComp
Text Label 6950 4300 0    50   ~ 0
LCD_LED_CTRL
Wire Wire Line
	6950 4300 7450 4300
Text Label 5650 3600 0    50   ~ 0
LCD_LED_CTRL
Text GLabel 5600 2000 2    50   Input ~ 0
VUSB
$Comp
L SmartWatch-rescue:S-13A1A33-E8T1U3 U1
U 1 1 5DBF2A56
P 3450 1400
F 0 "U1" H 3850 1850 50  0000 L CNN
F 1 "S-13A1A33-E8T1U3" H 3850 1750 50  0000 L CNN
F 2 "Package_SO:HSOP-8-1EP_3.9x4.9mm_P1.27mm_EP2.41x3.1mm_ThermalVias" H 3200 1050 50  0001 C CNN
F 3 "https://www.ablic.com/en/doc/datasheet/voltage_regulator/S13A1_E.pdf" H 3200 1050 50  0001 C CNN
F 4 "1662-2801-1-ND" H 0   0   50  0001 C CNN "DigiKey Part Number"
	1    3450 1400
	1    0    0    -1  
$EndComp
Text GLabel 2950 1050 0    50   Input ~ 0
BAT+
Wire Wire Line
	3450 1050 2950 1050
$Comp
L Device:C C1
U 1 1 5DBF612E
P 2800 1600
F 0 "C1" H 2915 1646 50  0000 L CNN
F 1 "10nF" H 2915 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2838 1450 50  0001 C CNN
F 3 "~" H 2800 1600 50  0001 C CNN
F 4 "399-7842-1-ND" H 0   0   50  0001 C CNN "DigiKey Part Number"
	1    2800 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5DBF6253
P 4000 1550
F 0 "C2" H 4115 1596 50  0000 L CNN
F 1 "10nF" H 4115 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4038 1400 50  0001 C CNN
F 3 "~" H 4000 1550 50  0001 C CNN
F 4 "399-7842-1-ND" H 0   0   50  0001 C CNN "DigiKey Part Number"
	1    4000 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5DBF62AD
P 4400 1550
F 0 "C3" H 4515 1596 50  0000 L CNN
F 1 "10uF" H 4515 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4438 1400 50  0001 C CNN
F 3 "~" H 4400 1550 50  0001 C CNN
F 4 "478-10766-1-ND" H 0   0   50  0001 C CNN "DigiKey Part Number"
	1    4400 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1400 4000 1400
Connection ~ 4000 1400
Wire Wire Line
	4000 1400 4400 1400
Connection ~ 4400 1400
Wire Wire Line
	4400 1400 4750 1400
Wire Wire Line
	3000 1450 2800 1450
$Comp
L power:GND #PWR0124
U 1 1 5DBFED06
P 2800 1750
F 0 "#PWR0124" H 2800 1500 50  0001 C CNN
F 1 "GND" H 2805 1577 50  0000 C CNN
F 2 "" H 2800 1750 50  0001 C CNN
F 3 "" H 2800 1750 50  0001 C CNN
	1    2800 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 5DBFED52
P 4000 1700
F 0 "#PWR0125" H 4000 1450 50  0001 C CNN
F 1 "GND" H 4005 1527 50  0000 C CNN
F 2 "" H 4000 1700 50  0001 C CNN
F 3 "" H 4000 1700 50  0001 C CNN
	1    4000 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 5DBFED9E
P 4400 1700
F 0 "#PWR0126" H 4400 1450 50  0001 C CNN
F 1 "GND" H 4405 1527 50  0000 C CNN
F 2 "" H 4400 1700 50  0001 C CNN
F 3 "" H 4400 1700 50  0001 C CNN
	1    4400 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 5DBFEDEA
P 3450 1800
F 0 "#PWR0127" H 3450 1550 50  0001 C CNN
F 1 "GND" H 3455 1627 50  0000 C CNN
F 2 "" H 3450 1800 50  0001 C CNN
F 3 "" H 3450 1800 50  0001 C CNN
	1    3450 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0128
U 1 1 5DBFF22C
P 4750 1400
F 0 "#PWR0128" H 4750 1250 50  0001 C CNN
F 1 "+3.3V" H 4765 1573 50  0000 C CNN
F 2 "" H 4750 1400 50  0001 C CNN
F 3 "" H 4750 1400 50  0001 C CNN
	1    4750 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1750 3400 1800
Wire Wire Line
	3400 1800 3450 1800
Wire Wire Line
	3500 1800 3500 1750
Connection ~ 3450 1800
Wire Wire Line
	3450 1800 3500 1800
Text GLabel 3000 1350 0    50   Input ~ 0
UV_LO
$Comp
L power:GND #PWR0129
U 1 1 5DC08CDA
P 1650 1100
F 0 "#PWR0129" H 1650 850 50  0001 C CNN
F 1 "GND" H 1655 927 50  0000 C CNN
F 2 "" H 1650 1100 50  0001 C CNN
F 3 "" H 1650 1100 50  0001 C CNN
	1    1650 1100
	1    0    0    -1  
$EndComp
$Comp
L SmartWatch-rescue:LCD_TOUCH U2
U 1 1 5DE88407
P 8100 2950
F 0 "U2" H 9727 2901 50  0000 L CNN
F 1 "LCD_TOUCH" H 9727 2810 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical" H 8100 2950 50  0001 C CNN
F 3 "https://usa.banggood.com/1_8-Inch-LCD-Screen-SPI-Serial-Port-Module-TFT-Color-Display-Touch-Screen-ST7735-For-Arduino-p-1414465.html?rmmds=myorder&cur_warehouse=CN" H 8100 2950 50  0001 C CNN
	1    8100 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 2500 7900 2500
$Comp
L power:GND #PWR04
U 1 1 5DE9AD0C
P 7900 2500
F 0 "#PWR04" H 7900 2250 50  0001 C CNN
F 1 "GND" V 7905 2372 50  0000 R CNN
F 2 "" H 7900 2500 50  0001 C CNN
F 3 "" H 7900 2500 50  0001 C CNN
	1    7900 2500
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR01
U 1 1 5DE9AD64
P 7500 2600
F 0 "#PWR01" H 7500 2450 50  0001 C CNN
F 1 "+3.3V" H 7515 2773 50  0000 C CNN
F 2 "" H 7500 2600 50  0001 C CNN
F 3 "" H 7500 2600 50  0001 C CNN
	1    7500 2600
	1    0    0    -1  
$EndComp
Text Label 7600 3300 0    50   ~ 0
LCD_CS
Text Label 7600 2900 0    50   ~ 0
LCD_RST
Text Label 7600 3000 0    50   ~ 0
LCD_A0
Text Label 7600 2700 0    50   ~ 0
LCD_SCK
Text Label 7600 3100 0    50   ~ 0
LCD_LED
Wire Wire Line
	5600 2900 6150 2900
Text Label 6150 2900 2    50   ~ 0
TOUCH_CS
Text Label 7600 3400 0    50   ~ 0
TOUCH_CS
Wire Wire Line
	7500 2600 8000 2600
Wire Wire Line
	7600 2800 8000 2800
Wire Wire Line
	7600 2900 8000 2900
Wire Wire Line
	7600 3000 8000 3000
Wire Wire Line
	7600 3100 8000 3100
Wire Wire Line
	7600 3400 8000 3400
Wire Wire Line
	7600 3300 8000 3300
$Sheet
S 4900 1800 700  3050
U 5DBE11BE
F0 "ESP32 Pico D4" 50
F1 "ESP32_dev.sch" 50
F2 "IO10" I R 5600 2700 50 
F3 "IO9" I R 5600 2600 50 
F4 "IO4" I R 5600 2400 50 
F5 "IO5" I R 5600 2500 50 
F6 "IO13" I R 5600 2800 50 
F7 "IO14" I R 5600 2900 50 
F8 "IO36" I R 5600 4200 50 
F9 "IO38" I R 5600 4300 50 
F10 "IO35" I R 5600 4100 50 
F11 "IO33" I R 5600 4000 50 
F12 "IO32" I R 5600 3900 50 
F13 "IO27" I R 5600 3800 50 
F14 "IO26" I R 5600 3700 50 
F15 "IO25" I R 5600 3600 50 
F16 "IO23" I R 5600 3500 50 
F17 "IO22" I R 5600 3400 50 
F18 "IO21" I R 5600 3300 50 
F19 "IO19" I R 5600 3200 50 
F20 "IO18" I R 5600 3100 50 
F21 "VUSB" I R 5600 2000 50 
F22 "Charge_Enable" I R 5600 2100 50 
F23 "IO16" I R 5600 3000 50 
F24 "IO17" I R 5600 2300 50 
F25 "IO34" I R 5600 2200 50 
F26 "IO37" I R 5600 4400 50 
$EndSheet
$Comp
L Device:R R?
U 1 1 5DECA5FB
P 7350 3500
AR Path="/5DBE11BE/5DECA5FB" Ref="R?"  Part="1" 
AR Path="/5DECA5FB" Ref="R4"  Part="1" 
F 0 "R4" V 7250 3500 50  0000 C CNN
F 1 "0R" V 7150 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7280 3500 50  0001 C CNN
F 3 "~" H 7350 3500 50  0001 C CNN
F 4 "311-0.0GRCT-ND" H 0   0   50  0001 C CNN "DigiKey Part Number"
	1    7350 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 3500 7500 3500
Wire Wire Line
	7200 3500 6700 3500
Wire Wire Line
	5600 2700 6150 2700
Text Label 6150 2700 2    50   ~ 0
LCD_PEN
Text Label 6700 3500 0    50   ~ 0
LCD_PEN
$Comp
L Device:R R?
U 1 1 5DEC36F6
P 6350 4200
AR Path="/5DBE11BE/5DEC36F6" Ref="R?"  Part="1" 
AR Path="/5DEC36F6" Ref="R6"  Part="1" 
F 0 "R6" H 6420 4246 50  0000 L CNN
F 1 "10k" H 6420 4155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6280 4200 50  0001 C CNN
F 3 "~" H 6350 4200 50  0001 C CNN
F 4 "311-10KGRCT-ND" H 1200 850 50  0001 C CNN "DigiKey Part Number"
	1    6350 4200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5DEC69DF
P 6350 4500
AR Path="/5DBE11BE/5DEC69DF" Ref="R?"  Part="1" 
AR Path="/5DEC69DF" Ref="R11"  Part="1" 
F 0 "R11" H 6420 4546 50  0000 L CNN
F 1 "10k" H 6420 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6280 4500 50  0001 C CNN
F 3 "~" H 6350 4500 50  0001 C CNN
F 4 "311-10KGRCT-ND" H 1200 1150 50  0001 C CNN "DigiKey Part Number"
	1    6350 4500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5DEC9B4E
P 6350 4650
F 0 "#PWR010" H 6350 4400 50  0001 C CNN
F 1 "GND" H 6355 4477 50  0000 C CNN
F 2 "" H 6350 4650 50  0001 C CNN
F 3 "" H 6350 4650 50  0001 C CNN
	1    6350 4650
	1    0    0    -1  
$EndComp
Text GLabel 6350 4050 0    50   Input ~ 0
BAT+
Wire Wire Line
	6350 4350 6000 4350
Connection ~ 6350 4350
$Comp
L Device:C C?
U 1 1 5DED06F3
P 6550 4500
AR Path="/5DBE11BE/5DED06F3" Ref="C?"  Part="1" 
AR Path="/5DED06F3" Ref="C5"  Part="1" 
F 0 "C5" H 6665 4546 50  0000 L CNN
F 1 "0.1u" H 6665 4455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6588 4350 50  0001 C CNN
F 3 "~" H 6550 4500 50  0001 C CNN
F 4 "1276-1258-1-ND" H 200 3050 50  0001 C CNN "DigiKey Part Number"
	1    6550 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 4350 6550 4350
$Comp
L power:GND #PWR011
U 1 1 5DED5008
P 6550 4650
F 0 "#PWR011" H 6550 4400 50  0001 C CNN
F 1 "GND" H 6555 4477 50  0000 C CNN
F 2 "" H 6550 4650 50  0001 C CNN
F 3 "" H 6550 4650 50  0001 C CNN
	1    6550 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3900 6000 3900
Wire Wire Line
	6000 3900 6000 4350
Wire Wire Line
	5600 3600 6150 3600
Wire Wire Line
	7600 2700 8000 2700
Wire Wire Line
	8000 3200 7600 3200
Text Label 6150 3200 2    50   ~ 0
MISO
Text Label 7600 3200 0    50   ~ 0
MISO
Wire Wire Line
	5600 3200 6150 3200
Text Label 6150 3500 2    50   ~ 0
MOSI
Text Label 7600 2800 0    50   ~ 0
MOSI
Text Label 6400 2100 2    50   ~ 0
Charge_Enable
Wire Wire Line
	5600 2100 6100 2100
Text Label 500  3350 0    50   ~ 0
Charge_Enable
Wire Wire Line
	1300 3150 1450 3150
Wire Wire Line
	1450 3150 1450 3550
Connection ~ 1450 3150
Wire Wire Line
	1450 3150 1950 3150
Wire Wire Line
	6100 2100 6100 2400
Wire Wire Line
	6100 2400 5600 2400
Connection ~ 6100 2100
Wire Wire Line
	6100 2100 6400 2100
$Comp
L Device:R R?
U 1 1 5E4FFC6F
P 1250 3350
AR Path="/5DBE11BE/5E4FFC6F" Ref="R?"  Part="1" 
AR Path="/5E4FFC6F" Ref="R1"  Part="1" 
F 0 "R1" V 1150 3350 50  0000 C CNN
F 1 "0R" V 1050 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1180 3350 50  0001 C CNN
F 3 "~" H 1250 3350 50  0001 C CNN
F 4 "311-0.0GRCT-ND" H -6100 -150 50  0001 C CNN "DigiKey Part Number"
	1    1250 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	500  3350 1100 3350
Wire Wire Line
	1400 3350 1550 3350
NoConn ~ 5600 2200
NoConn ~ 5600 2300
NoConn ~ 5600 2600
NoConn ~ 5600 2800
NoConn ~ 5600 3000
NoConn ~ 5600 3700
NoConn ~ 5600 3800
NoConn ~ 5600 4400
NoConn ~ 5600 4200
$Comp
L Device:R R?
U 1 1 5E59C2F8
P 7850 4750
AR Path="/5DBE11BE/5E59C2F8" Ref="R?"  Part="1" 
AR Path="/5E59C2F8" Ref="R16"  Part="1" 
F 0 "R16" H 7920 4796 50  0000 L CNN
F 1 "10k" H 7920 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7780 4750 50  0001 C CNN
F 3 "~" H 7850 4750 50  0001 C CNN
F 4 "311-10KGRCT-ND" H 2700 1400 50  0001 C CNN "DigiKey Part Number"
	1    7850 4750
	-1   0    0    1   
$EndComp
Connection ~ 7850 4600
Wire Wire Line
	7850 4600 8350 4600
$Comp
L power:GND #PWR07
U 1 1 5E59C353
P 7850 4900
F 0 "#PWR07" H 7850 4650 50  0001 C CNN
F 1 "GND" H 7855 4727 50  0000 C CNN
F 2 "" H 7850 4900 50  0001 C CNN
F 3 "" H 7850 4900 50  0001 C CNN
	1    7850 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C20
U 1 1 5E5A26A8
P 2450 3500
F 0 "C20" H 2565 3546 50  0000 L CNN
F 1 "10uF" H 2565 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2488 3350 50  0001 C CNN
F 3 "~" H 2450 3500 50  0001 C CNN
F 4 "478-10766-1-ND" H -1950 1950 50  0001 C CNN "DigiKey Part Number"
	1    2450 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3350 2450 3350
Connection ~ 2450 3350
Wire Wire Line
	2450 3350 2550 3350
$Comp
L power:GND #PWR09
U 1 1 5E5A3FF9
P 2450 3650
F 0 "#PWR09" H 2450 3400 50  0001 C CNN
F 1 "GND" H 2455 3477 50  0000 C CNN
F 2 "" H 2450 3650 50  0001 C CNN
F 3 "" H 2450 3650 50  0001 C CNN
	1    2450 3650
	1    0    0    -1  
$EndComp
Text Notes 650  7550 0    50   ~ 0
Next Revision Changes: \n- change MCP73811T charging current to 200mA using prog pin\n- remove PMOS for LCD backlight control\n- configure power-in circuitry so the device can run directly from usb power when charging\n- battery voltage sensing solution to something external to micro controller\n- Replace MAX9065 with new battery monitor (or disconnect as a undervoltage shutoff)\n- Implement Power-off functionality for accelormeter and LCD. power drain of these devices in standby is too high\n- Ensure that any touch input interrupt is attached to a RTC GPIO pin so that the ESP32 doesn't have to poll the pin
Text Notes 650  6800 0    50   ~ 0
Note: FT231XS needs to be reconfigured using the FT_PROG utility to allow for proper charging\nCBUS0 -> SLEEP#\nCBUS1 -> VBUS_SENSE\n
$EndSCHEMATC
