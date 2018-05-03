EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:middle-cache
LIBS:main-cache
LIBS:top-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "noname.sch"
Date "3 jan 2018"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CRYSTAL CSTECE1
U 1 1 5AE1E123
P 2800 1850
F 0 "CSTECE1" H 2800 2000 60  0000 C CNN
F 1 "16MHZ" H 2800 1700 60  0000 C CNN
F 2 "CanSat:Crystal_SMD" H 2800 1850 60  0000 C CNN
F 3 "~" H 2800 1850 60  0000 C CNN
	1    2800 1850
	0    -1   -1   0   
$EndComp
$Comp
L C-RESCUE-main C3
U 1 1 5AE1E124
P 2400 2150
F 0 "C3" H 2400 2250 40  0000 L CNN
F 1 "20 pF" H 2406 2065 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2438 2000 30  0000 C CNN
F 3 "~" H 2400 2150 60  0000 C CNN
	1    2400 2150
	0    -1   -1   0   
$EndComp
$Comp
L C-RESCUE-main C2
U 1 1 5AE1E125
P 2400 1550
F 0 "C2" H 2400 1650 40  0000 L CNN
F 1 "20 pF" H 2406 1465 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2438 1400 30  0000 C CNN
F 3 "~" H 2400 1550 60  0000 C CNN
	1    2400 1550
	0    -1   -1   0   
$EndComp
$Comp
L R-RESCUE-main R4
U 1 1 5AE1E126
P 3050 1850
F 0 "R4" V 3130 1850 40  0000 C CNN
F 1 "1M" V 3057 1851 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2980 1850 30  0001 C CNN
F 3 "~" H 3050 1850 30  0000 C CNN
	1    3050 1850
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-main #PWR01
U 1 1 5AE1E127
P 1950 1950
F 0 "#PWR01" H 1950 1950 30  0001 C CNN
F 1 "GND" H 1950 1880 30  0001 C CNN
F 2 "" H 1950 1950 60  0000 C CNN
F 3 "" H 1950 1950 60  0000 C CNN
	1    1950 1950
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-main R1
U 1 1 5AE1E12E
P 1350 1800
F 0 "R1" V 1430 1800 40  0000 C CNN
F 1 "10k" V 1357 1801 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1280 1800 30  0001 C CNN
F 3 "~" H 1350 1800 30  0000 C CNN
	1    1350 1800
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-main C1
U 1 1 5AE1E130
P 1350 2350
F 0 "C1" H 1350 2450 40  0000 L CNN
F 1 "22 pF" H 1356 2265 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1388 2200 30  0000 C CNN
F 3 "~" H 1350 2350 60  0000 C CNN
	1    1350 2350
	1    0    0    -1  
$EndComp
Text Label 800  2100 0    60   ~ 0
RST
$Comp
L +5V #PWR02
U 1 1 5AE1E131
P 1350 1450
F 0 "#PWR02" H 1350 1540 20  0001 C CNN
F 1 "+5V" H 1350 1600 30  0000 C CNN
F 2 "" H 1350 1450 60  0000 C CNN
F 3 "" H 1350 1450 60  0000 C CNN
	1    1350 1450
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-main #PWR03
U 1 1 5AE1E132
P 1350 2650
F 0 "#PWR03" H 1350 2650 30  0001 C CNN
F 1 "GND" H 1350 2580 30  0001 C CNN
F 2 "" H 1350 2650 60  0000 C CNN
F 3 "" H 1350 2650 60  0000 C CNN
	1    1350 2650
	1    0    0    -1  
$EndComp
Text Label 6200 5150 0    60   ~ 0
TX
Text Label 6200 5050 0    60   ~ 0
RX
Text Label 6150 4250 0    60   ~ 0
SCL
Text Label 6150 4150 0    60   ~ 0
SDA
$Comp
L R-RESCUE-main R2
U 1 1 5AE1E133
P 1600 2950
F 0 "R2" V 1680 2950 40  0000 C CNN
F 1 "2k" V 1607 2951 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1530 2950 30  0001 C CNN
F 3 "~" H 1600 2950 30  0000 C CNN
	1    1600 2950
	0    1    1    0   
$EndComp
$Comp
L R-RESCUE-main R3
U 1 1 5AE1E134
P 1600 3150
F 0 "R3" V 1680 3150 40  0000 C CNN
F 1 "2k" V 1607 3151 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1530 3150 30  0001 C CNN
F 3 "~" H 1600 3150 30  0000 C CNN
	1    1600 3150
	0    1    1    0   
$EndComp
Text Label 1100 2950 0    60   ~ 0
SCL
Text Label 1100 3150 0    60   ~ 0
SDA
Text Label 3250 2050 0    60   ~ 0
XTAL2
Text Label 3250 1750 0    60   ~ 0
XTAL1
$Comp
L C-RESCUE-main C4
U 1 1 5AE1E13A
P 4050 950
F 0 "C4" H 4050 1050 40  0000 L CNN
F 1 "100 nF" H 4056 865 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4088 800 30  0000 C CNN
F 3 "~" H 4050 950 60  0000 C CNN
	1    4050 950 
	-1   0    0    1   
$EndComp
$Comp
L C-RESCUE-main C5
U 1 1 5AE1E13B
P 4350 950
F 0 "C5" H 4350 1050 40  0000 L CNN
F 1 "100 nF" H 4356 865 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4388 800 30  0000 C CNN
F 3 "~" H 4350 950 60  0000 C CNN
	1    4350 950 
	-1   0    0    1   
$EndComp
$Comp
L C-RESCUE-main C6
U 1 1 5AE1E13C
P 4650 950
F 0 "C6" H 4650 1050 40  0000 L CNN
F 1 "100 nF" H 4656 865 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4688 800 30  0000 C CNN
F 3 "~" H 4650 950 60  0000 C CNN
	1    4650 950 
	-1   0    0    1   
$EndComp
$Comp
L C-RESCUE-main C7
U 1 1 5AE1E13D
P 4950 950
F 0 "C7" H 4950 1050 40  0000 L CNN
F 1 "100 nF" H 4956 865 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4988 800 30  0000 C CNN
F 3 "~" H 4950 950 60  0000 C CNN
	1    4950 950 
	-1   0    0    1   
$EndComp
$Comp
L ATMEGA2560-A IC1
U 1 1 5AE1E140
P 4800 4050
F 0 "IC1" H 3650 6850 40  0000 L BNN
F 1 "ATMEGA2560-A" H 5500 1200 40  0000 L BNN
F 2 "CanSat:AtMega2560-AU" H 4800 4050 30  0000 C CIN
F 3 "" H 4800 4050 60  0000 C CNN
	1    4800 4050
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-main #PWR04
U 1 1 5AE1E141
P 3600 850
F 0 "#PWR04" H 3600 850 30  0001 C CNN
F 1 "GND" H 3600 780 30  0001 C CNN
F 2 "" H 3600 850 60  0000 C CNN
F 3 "" H 3600 850 60  0000 C CNN
	1    3600 850 
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR05
U 1 1 5AE1E142
P 5250 1000
F 0 "#PWR05" H 5250 1090 20  0001 C CNN
F 1 "+5V" H 5250 1090 30  0000 C CNN
F 2 "" H 5250 1000 60  0000 C CNN
F 3 "" H 5250 1000 60  0000 C CNN
	1    5250 1000
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-main #PWR06
U 1 1 5AE1E143
P 4800 7150
F 0 "#PWR06" H 4800 7150 30  0001 C CNN
F 1 "GND" H 4800 7080 30  0001 C CNN
F 2 "" H 4800 7150 60  0000 C CNN
F 3 "" H 4800 7150 60  0000 C CNN
	1    4800 7150
	1    0    0    -1  
$EndComp
Text Label 3250 1450 0    60   ~ 0
RST
Text Label 3350 3550 0    60   ~ 0
O2
Text Label 6150 3450 0    60   ~ 0
CAM_TRIG
Text Label 6150 3550 0    60   ~ 0
FLY_TRIG
Text Label 6150 2050 0    60   ~ 0
LED_TOP
Text Label 3000 5150 0    60   ~ 0
RXD-GSM
Text Label 3000 5050 0    60   ~ 0
TXD-GSM
Text Label 6150 4550 0    60   ~ 0
GSM_SLEEP
Text Label 6150 1950 0    60   ~ 0
GSM_KEY
Text Label 3300 4650 0    60   ~ 0
INT4
Text Label 6200 3050 0    60   ~ 0
SERVO
Text Label 6150 2450 0    60   ~ 0
SCK
Text Label 6150 2550 0    60   ~ 0
MOSI
Text Label 6150 2650 0    60   ~ 0
MISO
Text Label 6150 5450 0    60   ~ 0
RFM_INT
Text Label 6150 1850 0    60   ~ 0
SS
Text Label 3100 3450 0    60   ~ 0
V_READ
Text Label 3000 5350 0    60   ~ 0
FC_PWM_4
Text Label 3000 5450 0    60   ~ 0
FC_PWM_3
Text Label 3000 5550 0    60   ~ 0
FC_PWM_2
Text Label 3000 5650 0    60   ~ 0
FC_PWM_1
Text Label 3000 2650 0    60   ~ 0
FC_PWM_7
Text Label 3000 2750 0    60   ~ 0
FC_PWM_6
Text Label 3000 2850 0    60   ~ 0
FC_PWM_5
Text Label 6150 2950 0    60   ~ 0
FC_PWM_8
$Comp
L +3.3V #PWR07
U 1 1 5AE1E1C1
P 1950 2950
F 0 "#PWR07" H 1950 2800 50  0001 C CNN
F 1 "+3.3V" H 1950 3090 50  0000 C CNN
F 2 "" H 1950 2950 50  0001 C CNN
F 3 "" H 1950 2950 50  0001 C CNN
	1    1950 2950
	1    0    0    -1  
$EndComp
Text Label 3300 3650 0    60   ~ 0
CO2
Text Label 6150 4350 0    60   ~ 0
RX_GPS
Text Label 6150 4450 0    60   ~ 0
TX_GPS
$Comp
L GND #PWR08
U 1 1 5AE1E18F
P 900 4100
F 0 "#PWR08" H 900 3850 50  0001 C CNN
F 1 "GND" H 900 3950 50  0000 C CNN
F 2 "" H 900 4100 50  0001 C CNN
F 3 "" H 900 4100 50  0001 C CNN
	1    900  4100
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR09
U 1 1 5AE1E18E
P 900 3800
F 0 "#PWR09" H 900 3650 50  0001 C CNN
F 1 "+5V" H 900 3940 50  0000 C CNN
F 2 "" H 900 3800 50  0001 C CNN
F 3 "" H 900 3800 50  0001 C CNN
	1    900  3800
	1    0    0    -1  
$EndComp
Text Label 2100 3900 0    60   ~ 0
RST
Text Label 2050 3800 0    60   ~ 0
MISO
Text Label 2050 3700 0    60   ~ 0
MOSI
Text Label 2100 3600 0    60   ~ 0
SCK
Text Label 1000 3800 0    60   ~ 0
TX
Text Label 1000 3700 0    60   ~ 0
RX
Text Label 1000 3600 0    60   ~ 0
DTR
$Comp
L Conn_02x05_Counter_Clockwise J1
U 1 1 5AE1E18D
P 1550 3800
F 0 "J1" H 1600 4100 50  0000 C CNN
F 1 "Conn_02x05_Counter_Clockwise" H 1600 3500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch1.27mm" H 1550 3800 50  0001 C CNN
F 3 "" H 1550 3800 50  0001 C CNN
	1    1550 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1550 3200 1550
Wire Wire Line
	3200 1550 3200 1750
Wire Wire Line
	3200 1750 3500 1750
Connection ~ 2800 1550
Wire Wire Line
	3500 2050 3200 2050
Wire Wire Line
	3200 2050 3200 2150
Wire Wire Line
	3200 2150 2600 2150
Connection ~ 2800 2150
Wire Wire Line
	2200 1550 2200 2150
Wire Wire Line
	1950 1850 2200 1850
Connection ~ 2200 1850
Wire Wire Line
	3050 2100 3050 2150
Connection ~ 3050 2150
Wire Wire Line
	3050 1600 3050 1550
Connection ~ 3050 1550
Wire Wire Line
	800  2100 1350 2100
Connection ~ 1350 2100
Wire Wire Line
	1350 2050 1350 2150
Wire Wire Line
	6100 5050 6300 5050
Wire Wire Line
	6100 5150 6300 5150
Wire Wire Line
	6100 4150 6300 4150
Wire Wire Line
	6100 4250 6300 4250
Wire Wire Line
	1850 2950 1850 3150
Wire Wire Line
	1850 3050 1950 3050
Connection ~ 1850 3050
Wire Wire Line
	1100 2950 1350 2950
Wire Wire Line
	1350 3150 1100 3150
Wire Wire Line
	4050 1150 5250 1150
Connection ~ 4350 1150
Connection ~ 4450 1150
Connection ~ 4550 1150
Connection ~ 4650 1150
Wire Wire Line
	3600 750  4950 750 
Connection ~ 4350 750 
Connection ~ 4650 750 
Wire Wire Line
	5250 1150 5250 1000
Connection ~ 4950 1150
Wire Wire Line
	4650 6950 4950 6950
Connection ~ 4750 6950
Connection ~ 4850 6950
Wire Wire Line
	4800 6950 4800 7150
Connection ~ 4800 6950
Wire Wire Line
	3250 1450 3500 1450
Wire Wire Line
	6100 3450 6550 3450
Wire Wire Line
	6100 3550 6550 3550
Wire Wire Line
	6100 2050 6550 2050
Wire Wire Line
	3350 3550 3500 3550
Wire Wire Line
	3000 5050 3500 5050
Wire Wire Line
	3000 5150 3500 5150
Wire Wire Line
	6100 1950 6500 1950
Wire Wire Line
	6100 4550 6700 4550
Wire Wire Line
	3300 4650 3500 4650
Wire Wire Line
	6100 3050 6500 3050
Wire Wire Line
	6100 2650 6350 2650
Wire Wire Line
	6350 2550 6100 2550
Wire Wire Line
	6100 2450 6300 2450
Wire Wire Line
	6100 5450 6500 5450
Wire Wire Line
	6100 1850 6250 1850
Wire Wire Line
	3100 3450 3500 3450
Wire Wire Line
	3500 5350 3000 5350
Wire Wire Line
	3000 5450 3500 5450
Wire Wire Line
	3500 5550 3000 5550
Wire Wire Line
	3000 5650 3500 5650
Wire Wire Line
	3000 2650 3500 2650
Wire Wire Line
	3500 2750 3000 2750
Wire Wire Line
	3000 2850 3500 2850
Wire Wire Line
	6100 2950 6600 2950
Wire Wire Line
	3300 3650 3500 3650
Wire Wire Line
	6100 4350 6450 4350
Wire Wire Line
	6450 4450 6100 4450
Wire Wire Line
	2250 3900 1850 3900
Wire Wire Line
	1850 3800 2250 3800
Wire Wire Line
	2250 3700 1850 3700
Wire Wire Line
	1850 3600 2250 3600
Wire Wire Line
	900  4000 1350 4000
Wire Wire Line
	900  3900 1350 3900
Wire Wire Line
	1000 3800 1350 3800
Wire Wire Line
	1000 3700 1350 3700
Wire Wire Line
	1350 3600 1000 3600
Wire Wire Line
	1350 1450 1350 1550
Wire Wire Line
	1350 2650 1350 2550
Wire Wire Line
	3600 750  3600 850 
Connection ~ 4050 750 
Wire Wire Line
	900  4000 900  4100
Wire Wire Line
	900  3900 900  3800
Wire Wire Line
	1950 3050 1950 2950
Wire Wire Line
	1950 1950 1950 1850
Text Label 8350 3700 0    60   ~ 0
FC_PWM_1
Text Label 8350 3800 0    60   ~ 0
FC_PWM_2
Text Label 8350 3900 0    60   ~ 0
FC_PWM_3
Text Label 8350 4000 0    60   ~ 0
FC_PWM_4
Text Label 8350 4100 0    60   ~ 0
FC_PWM_5
Text Label 8350 4200 0    60   ~ 0
FC_PWM_6
Text Label 8350 4300 0    60   ~ 0
FC_PWM_7
Text Label 8350 4400 0    60   ~ 0
FC_PWM_8
$Comp
L +5V #PWR010
U 1 1 5AE9DEB3
P 7750 3600
F 0 "#PWR010" H 7750 3450 50  0001 C CNN
F 1 "+5V" H 7750 3740 50  0000 C CNN
F 2 "" H 7750 3600 50  0001 C CNN
F 3 "" H 7750 3600 50  0001 C CNN
	1    7750 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 5AE9DEB4
P 7250 4000
F 0 "#PWR011" H 7250 3750 50  0001 C CNN
F 1 "GND" H 7250 3850 50  0000 C CNN
F 2 "" H 7250 4000 50  0001 C CNN
F 3 "" H 7250 4000 50  0001 C CNN
	1    7250 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 3700 8750 3700
Wire Wire Line
	8350 3800 8750 3800
Wire Wire Line
	8350 3900 8750 3900
Wire Wire Line
	8350 4000 8750 4000
Wire Wire Line
	8350 4100 8750 4100
Wire Wire Line
	8350 4200 8750 4200
Wire Wire Line
	8350 4300 8750 4300
Wire Wire Line
	8350 4400 8750 4400
Wire Wire Line
	8350 4500 8750 4500
Wire Wire Line
	8350 4600 8750 4600
Wire Wire Line
	8350 4700 8750 4700
Wire Wire Line
	7250 3900 7850 3900
Wire Wire Line
	7450 4000 7850 4000
Wire Wire Line
	7450 4100 7850 4100
Wire Wire Line
	7450 4200 7850 4200
Wire Wire Line
	7450 4300 7850 4300
Wire Wire Line
	7450 4400 7850 4400
Wire Wire Line
	7450 4500 7850 4500
Wire Wire Line
	7450 4600 7850 4600
Wire Wire Line
	7450 4700 7850 4700
Wire Wire Line
	7250 4000 7250 3900
Wire Wire Line
	7550 3600 7550 3800
Wire Wire Line
	7550 3800 7850 3800
Wire Wire Line
	7750 3600 7750 3700
Wire Wire Line
	7750 3700 7850 3700
Text Label 8450 4500 0    60   ~ 0
RFM_INT
Text Label 8450 4600 0    60   ~ 0
RFM_SS
Text Label 8600 4700 0    60   ~ 0
MOSI
Text Label 7450 4700 0    60   ~ 0
MISO
Text Label 7450 4500 0    60   ~ 0
GSM_RX
Text Label 7450 4400 0    60   ~ 0
GSM_TX
Text Label 7450 4300 0    60   ~ 0
GSM_KEY
Text Label 7450 4600 0    60   ~ 0
SCK
Text Label 7450 4200 0    60   ~ 0
GSM_SLP
Text Label 7450 4100 0    60   ~ 0
FC_EN
Text Label 7450 4000 0    60   ~ 0
CAM_EN
Wire Wire Line
	8350 4800 8750 4800
Wire Wire Line
	8350 4900 8750 4900
Wire Wire Line
	7850 4800 7450 4800
Wire Wire Line
	7450 4900 7850 4900
Text Label 7450 4800 0    60   ~ 0
O2
Text Label 7450 4900 0    60   ~ 0
CO2
Text Label 8650 4800 0    60   ~ 0
O3
Text Label 8450 4900 0    60   ~ 0
V_READ
$Comp
L +3V3 #PWR012
U 1 1 5AE9DEBF
P 7550 3600
F 0 "#PWR012" H 7550 3450 50  0001 C CNN
F 1 "+3V3" H 7550 3740 50  0000 C CNN
F 2 "" H 7550 3600 50  0001 C CNN
F 3 "" H 7550 3600 50  0001 C CNN
	1    7550 3600
	1    0    0    -1  
$EndComp
Text Label 8500 5000 0    60   ~ 0
SERVO
Wire Wire Line
	8350 5000 8750 5000
Text Label 3350 3750 0    60   ~ 0
O3
Wire Wire Line
	3350 3750 3500 3750
$Comp
L Conn_02x15_Counter_Clockwise J2
U 1 1 5AE9F5C2
P 8050 4400
F 0 "J2" H 8100 5200 50  0000 C CNN
F 1 "Main connector" H 8100 3600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x15_Pitch1.27mm" H 8050 4400 50  0001 C CNN
F 3 "" H 8050 4400 50  0001 C CNN
	1    8050 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 5000 7850 5000
Wire Wire Line
	7850 5100 7450 5100
Text Label 7450 5000 0    60   ~ 0
SCL
Text Label 7450 5100 0    60   ~ 0
SDA
$Comp
L GND #PWR013
U 1 1 5AEA01F2
P 7750 1600
F 0 "#PWR013" H 7750 1350 50  0001 C CNN
F 1 "GND" H 7750 1450 50  0000 C CNN
F 2 "" H 7750 1600 50  0001 C CNN
F 3 "" H 7750 1600 50  0001 C CNN
	1    7750 1600
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR014
U 1 1 5AEA01F3
P 7750 1300
F 0 "#PWR014" H 7750 1150 50  0001 C CNN
F 1 "+3V3" H 7750 1440 50  0000 C CNN
F 2 "" H 7750 1300 50  0001 C CNN
F 3 "" H 7750 1300 50  0001 C CNN
	1    7750 1300
	1    0    0    -1  
$EndComp
Text Label 7900 1600 0    60   ~ 0
SCL
Text Label 7900 1700 0    60   ~ 0
SDA
Text Label 7900 1800 0    60   ~ 0
SER_P
Text Label 7900 1900 0    60   ~ 0
LED
Text Label 7900 2000 0    60   ~ 0
RX_GPS
Text Label 7900 2100 0    60   ~ 0
TX_GPS
$Comp
L Conn_01x09 J3
U 1 1 5AEA01F7
P 8400 1800
F 0 "J3" H 8400 2300 50  0000 C CNN
F 1 "Conn_01x09" H 8400 1300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x09_Pitch1.27mm" H 8400 1800 50  0001 C CNN
F 3 "" H 8400 1800 50  0001 C CNN
	1    8400 1800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR015
U 1 1 5AEA01F8
P 7750 2100
F 0 "#PWR015" H 7750 1950 50  0001 C CNN
F 1 "+5V" H 7750 2240 50  0000 C CNN
F 2 "" H 7750 2100 50  0001 C CNN
F 3 "" H 7750 2100 50  0001 C CNN
	1    7750 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 1400 7750 1400
Wire Wire Line
	7750 1400 7750 1300
Wire Wire Line
	8200 1500 7750 1500
Wire Wire Line
	7750 1500 7750 1600
Wire Wire Line
	8200 1600 7900 1600
Wire Wire Line
	8200 1700 7900 1700
Wire Wire Line
	8200 1800 7900 1800
Wire Wire Line
	7900 1900 8200 1900
Wire Wire Line
	7900 2000 8200 2000
Wire Wire Line
	7900 2100 8200 2100
Wire Wire Line
	8200 2200 7750 2200
Wire Wire Line
	7750 2200 7750 2100
$EndSCHEMATC
