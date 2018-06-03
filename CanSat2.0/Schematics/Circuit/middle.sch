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
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L CRYSTAL CSTECE1
U 1 1 5AE1E123
P 2600 2400
F 0 "CSTECE1" H 2600 2550 60  0000 C CNN
F 1 "16MHZ" H 2600 2250 60  0000 C CNN
F 2 "CanSat:Crystal_SMD" H 2600 2400 60  0000 C CNN
F 3 "~" H 2600 2400 60  0000 C CNN
	1    2600 2400
	0    -1   -1   0   
$EndComp
$Comp
L C-RESCUE-main C3
U 1 1 5AE1E124
P 2200 2700
F 0 "C3" H 2200 2800 40  0000 L CNN
F 1 "20 pF" H 2206 2615 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2238 2550 30  0000 C CNN
F 3 "~" H 2200 2700 60  0000 C CNN
	1    2200 2700
	0    -1   -1   0   
$EndComp
$Comp
L C-RESCUE-main C2
U 1 1 5AE1E125
P 2200 2100
F 0 "C2" H 2200 2200 40  0000 L CNN
F 1 "20 pF" H 2206 2015 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2238 1950 30  0000 C CNN
F 3 "~" H 2200 2100 60  0000 C CNN
	1    2200 2100
	0    -1   -1   0   
$EndComp
$Comp
L R-RESCUE-main R4
U 1 1 5AE1E126
P 2850 2400
F 0 "R4" V 2930 2400 40  0000 C CNN
F 1 "1M" V 2857 2401 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2780 2400 30  0001 C CNN
F 3 "~" H 2850 2400 30  0000 C CNN
	1    2850 2400
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-main #PWR01
U 1 1 5AE1E127
P 1750 2500
F 0 "#PWR01" H 1750 2500 30  0001 C CNN
F 1 "GND" H 1750 2430 30  0001 C CNN
F 2 "" H 1750 2500 60  0000 C CNN
F 3 "" H 1750 2500 60  0000 C CNN
	1    1750 2500
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-main R1
U 1 1 5AE1E12E
P 1150 2350
F 0 "R1" V 1230 2350 40  0000 C CNN
F 1 "10k" V 1157 2351 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1080 2350 30  0001 C CNN
F 3 "~" H 1150 2350 30  0000 C CNN
	1    1150 2350
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-main C1
U 1 1 5AE1E130
P 1150 2900
F 0 "C1" H 1150 3000 40  0000 L CNN
F 1 "22 pF" H 1156 2815 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1188 2750 30  0000 C CNN
F 3 "~" H 1150 2900 60  0000 C CNN
	1    1150 2900
	1    0    0    -1  
$EndComp
Text Label 600  2650 0    60   ~ 0
RST
$Comp
L +5V #PWR02
U 1 1 5AE1E131
P 1150 2000
F 0 "#PWR02" H 1150 2090 20  0001 C CNN
F 1 "+5V" H 1150 2150 30  0000 C CNN
F 2 "" H 1150 2000 60  0000 C CNN
F 3 "" H 1150 2000 60  0000 C CNN
	1    1150 2000
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-main #PWR03
U 1 1 5AE1E132
P 1150 3200
F 0 "#PWR03" H 1150 3200 30  0001 C CNN
F 1 "GND" H 1150 3130 30  0001 C CNN
F 2 "" H 1150 3200 60  0000 C CNN
F 3 "" H 1150 3200 60  0000 C CNN
	1    1150 3200
	1    0    0    -1  
$EndComp
Text Label 6000 5700 0    60   ~ 0
TX
Text Label 6000 5600 0    60   ~ 0
RX
Text Label 5950 4700 0    60   ~ 0
SCL
Text Label 5950 4800 0    60   ~ 0
SDA
$Comp
L R-RESCUE-main R2
U 1 1 5AE1E133
P 1400 3500
F 0 "R2" V 1480 3500 40  0000 C CNN
F 1 "2k" V 1407 3501 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1330 3500 30  0001 C CNN
F 3 "~" H 1400 3500 30  0000 C CNN
	1    1400 3500
	0    1    1    0   
$EndComp
$Comp
L R-RESCUE-main R3
U 1 1 5AE1E134
P 1400 3700
F 0 "R3" V 1480 3700 40  0000 C CNN
F 1 "2k" V 1407 3701 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1330 3700 30  0001 C CNN
F 3 "~" H 1400 3700 30  0000 C CNN
	1    1400 3700
	0    1    1    0   
$EndComp
Text Label 900  3500 0    60   ~ 0
SCL
Text Label 900  3700 0    60   ~ 0
SDA
Text Label 3050 2600 0    60   ~ 0
XTAL2
Text Label 3050 2300 0    60   ~ 0
XTAL1
$Comp
L C-RESCUE-main C4
U 1 1 5AE1E13A
P 3650 1300
F 0 "C4" H 3650 1400 40  0000 L CNN
F 1 "100 nF" H 3656 1215 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3688 1150 30  0000 C CNN
F 3 "~" H 3650 1300 60  0000 C CNN
	1    3650 1300
	-1   0    0    1   
$EndComp
$Comp
L C-RESCUE-main C5
U 1 1 5AE1E13B
P 3950 1300
F 0 "C5" H 3950 1400 40  0000 L CNN
F 1 "100 nF" H 3956 1215 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3988 1150 30  0000 C CNN
F 3 "~" H 3950 1300 60  0000 C CNN
	1    3950 1300
	-1   0    0    1   
$EndComp
$Comp
L C-RESCUE-main C6
U 1 1 5AE1E13C
P 4250 1300
F 0 "C6" H 4250 1400 40  0000 L CNN
F 1 "100 nF" H 4256 1215 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4288 1150 30  0000 C CNN
F 3 "~" H 4250 1300 60  0000 C CNN
	1    4250 1300
	-1   0    0    1   
$EndComp
$Comp
L C-RESCUE-main C7
U 1 1 5AE1E13D
P 5300 1300
F 0 "C7" H 5300 1400 40  0000 L CNN
F 1 "100 nF" H 5306 1215 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5338 1150 30  0000 C CNN
F 3 "~" H 5300 1300 60  0000 C CNN
	1    5300 1300
	-1   0    0    1   
$EndComp
$Comp
L GND-RESCUE-main #PWR04
U 1 1 5AE1E143
P 4600 7700
F 0 "#PWR04" H 4600 7700 30  0001 C CNN
F 1 "GND" H 4600 7630 30  0001 C CNN
F 2 "" H 4600 7700 60  0000 C CNN
F 3 "" H 4600 7700 60  0000 C CNN
	1    4600 7700
	1    0    0    -1  
$EndComp
Text Label 3050 2000 0    60   ~ 0
RST
Text Label 3150 4100 0    60   ~ 0
O2
Text Label 5950 2400 0    60   ~ 0
CAM_EN
Text Label 5950 2500 0    60   ~ 0
FC_EN
Text Label 5950 5400 0    60   ~ 0
LED1
Text Label 2800 5700 0    60   ~ 0
GSM_RX
Text Label 2800 5600 0    60   ~ 0
GSM_TX
Text Label 5950 2300 0    60   ~ 0
GSM_SLP
Text Label 5950 2600 0    60   ~ 0
GSM_KEY
Text Label 6000 3600 0    60   ~ 0
SERVO
Text Label 5950 3000 0    60   ~ 0
SCK
Text Label 5950 3100 0    60   ~ 0
MOSI
Text Label 5950 3200 0    60   ~ 0
MISO
Text Label 5950 6000 0    60   ~ 0
RFM_INT
Text Label 2900 7000 0    60   ~ 0
RFM_SS
Text Label 2900 4000 0    60   ~ 0
V_READ
Text Label 2800 5900 0    60   ~ 0
FC_PWM_4
Text Label 5950 2100 0    60   ~ 0
FC_PWM_3
Text Label 5950 2200 0    60   ~ 0
FC_PWM_2
Text Label 2800 6200 0    60   ~ 0
FC_PWM_1
Text Label 2800 3200 0    60   ~ 0
FC_PWM_7
Text Label 2800 3300 0    60   ~ 0
FC_PWM_6
Text Label 2800 3400 0    60   ~ 0
FC_PWM_5
Text Label 5950 3500 0    60   ~ 0
FC_PWM_8
$Comp
L +3.3V #PWR05
U 1 1 5AE1E1C1
P 1750 3500
F 0 "#PWR05" H 1750 3350 50  0001 C CNN
F 1 "+3.3V" H 1750 3640 50  0000 C CNN
F 2 "" H 1750 3500 50  0001 C CNN
F 3 "" H 1750 3500 50  0001 C CNN
	1    1750 3500
	1    0    0    -1  
$EndComp
Text Label 3100 4200 0    60   ~ 0
CO2
Text Label 5950 5000 0    60   ~ 0
RX_GPS
Text Label 5950 4900 0    60   ~ 0
TX_GPS
$Comp
L GND #PWR06
U 1 1 5AE1E18F
P 700 4650
F 0 "#PWR06" H 700 4400 50  0001 C CNN
F 1 "GND" H 700 4500 50  0000 C CNN
F 2 "" H 700 4650 50  0001 C CNN
F 3 "" H 700 4650 50  0001 C CNN
	1    700  4650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR07
U 1 1 5AE1E18E
P 700 4350
F 0 "#PWR07" H 700 4200 50  0001 C CNN
F 1 "+5V" H 700 4490 50  0000 C CNN
F 2 "" H 700 4350 50  0001 C CNN
F 3 "" H 700 4350 50  0001 C CNN
	1    700  4350
	1    0    0    -1  
$EndComp
Text Label 1900 4450 0    60   ~ 0
RST
Text Label 1850 4350 0    60   ~ 0
MISO
Text Label 1850 4250 0    60   ~ 0
MOSI
Text Label 1900 4150 0    60   ~ 0
SCK
Text Label 800  4350 0    60   ~ 0
TX
Text Label 800  4250 0    60   ~ 0
RX
$Comp
L Conn_02x05_Counter_Clockwise J1
U 1 1 5AE1E18D
P 1350 4350
F 0 "J1" H 1400 4650 50  0000 C CNN
F 1 "Conn_02x05_Counter_Clockwise" H 1400 4050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch1.27mm" H 1350 4350 50  0001 C CNN
F 3 "" H 1350 4350 50  0001 C CNN
	1    1350 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2100 3000 2100
Wire Wire Line
	3000 2100 3000 2300
Wire Wire Line
	3000 2300 3300 2300
Connection ~ 2600 2100
Wire Wire Line
	3300 2600 3000 2600
Wire Wire Line
	3000 2600 3000 2700
Wire Wire Line
	3000 2700 2400 2700
Connection ~ 2600 2700
Wire Wire Line
	2000 2100 2000 2700
Wire Wire Line
	1750 2400 2000 2400
Connection ~ 2000 2400
Wire Wire Line
	2850 2650 2850 2700
Connection ~ 2850 2700
Wire Wire Line
	2850 2150 2850 2100
Connection ~ 2850 2100
Wire Wire Line
	600  2650 1150 2650
Connection ~ 1150 2650
Wire Wire Line
	1150 2600 1150 2700
Wire Wire Line
	5900 5600 6100 5600
Wire Wire Line
	5900 5700 6100 5700
Wire Wire Line
	5900 4800 6100 4800
Wire Wire Line
	5900 4700 6100 4700
Wire Wire Line
	1650 3500 1650 3700
Wire Wire Line
	1650 3600 1750 3600
Connection ~ 1650 3600
Wire Wire Line
	900  3500 1150 3500
Wire Wire Line
	1150 3700 900  3700
Wire Wire Line
	4450 7500 4750 7500
Connection ~ 4550 7500
Connection ~ 4650 7500
Wire Wire Line
	4600 7500 4600 7700
Connection ~ 4600 7500
Wire Wire Line
	3050 2000 3300 2000
Wire Wire Line
	5900 2400 6350 2400
Wire Wire Line
	5900 2500 6350 2500
Wire Wire Line
	3150 4100 3300 4100
Wire Wire Line
	2800 5600 3300 5600
Wire Wire Line
	2800 5700 3300 5700
Wire Wire Line
	5900 2600 6300 2600
Wire Wire Line
	5900 3600 6300 3600
Wire Wire Line
	5900 3200 6150 3200
Wire Wire Line
	6150 3100 5900 3100
Wire Wire Line
	5900 3000 6100 3000
Wire Wire Line
	5900 6000 6300 6000
Wire Wire Line
	2900 7000 3300 7000
Wire Wire Line
	2900 4000 3300 4000
Wire Wire Line
	3300 5900 2800 5900
Wire Wire Line
	5900 2100 6400 2100
Wire Wire Line
	6400 2200 5900 2200
Wire Wire Line
	2800 6200 3300 6200
Wire Wire Line
	2800 3200 3300 3200
Wire Wire Line
	3300 3300 2800 3300
Wire Wire Line
	2800 3400 3300 3400
Wire Wire Line
	5900 3500 6400 3500
Wire Wire Line
	3100 4200 3300 4200
Wire Wire Line
	5900 5000 6250 5000
Wire Wire Line
	6250 4900 5900 4900
Wire Wire Line
	2050 4450 1650 4450
Wire Wire Line
	1650 4350 2050 4350
Wire Wire Line
	2050 4250 1650 4250
Wire Wire Line
	1650 4150 2050 4150
Wire Wire Line
	700  4550 1150 4550
Wire Wire Line
	700  4450 1150 4450
Wire Wire Line
	800  4350 1150 4350
Wire Wire Line
	800  4250 1150 4250
Wire Wire Line
	1150 2000 1150 2100
Wire Wire Line
	1150 3200 1150 3100
Wire Wire Line
	700  4550 700  4650
Wire Wire Line
	700  4450 700  4350
Wire Wire Line
	1750 3600 1750 3500
Wire Wire Line
	1750 2500 1750 2400
Text Label 10600 950  2    60   ~ 0
FC_PWM_1
Text Label 10600 1050 2    60   ~ 0
FC_PWM_2
Text Label 10600 1150 2    60   ~ 0
FC_PWM_3
Text Label 10600 1250 2    60   ~ 0
FC_PWM_4
Text Label 10600 1350 2    60   ~ 0
FC_PWM_5
Text Label 10600 1450 2    60   ~ 0
FC_PWM_6
Text Label 10600 1550 2    60   ~ 0
FC_PWM_7
Text Label 10600 1650 2    60   ~ 0
FC_PWM_8
$Comp
L +5V #PWR08
U 1 1 5AE9DEB3
P 9550 850
F 0 "#PWR08" H 9550 700 50  0001 C CNN
F 1 "+5V" H 9550 990 50  0000 C CNN
F 2 "" H 9550 850 50  0001 C CNN
F 3 "" H 9550 850 50  0001 C CNN
	1    9550 850 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5AE9DEB4
P 9050 1250
F 0 "#PWR09" H 9050 1000 50  0001 C CNN
F 1 "GND" H 9050 1100 50  0000 C CNN
F 2 "" H 9050 1250 50  0001 C CNN
F 3 "" H 9050 1250 50  0001 C CNN
	1    9050 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 950  10600 950 
Wire Wire Line
	10150 1050 10600 1050
Wire Wire Line
	10150 1150 10600 1150
Wire Wire Line
	10150 1250 10600 1250
Wire Wire Line
	10150 1350 10600 1350
Wire Wire Line
	10150 1450 10600 1450
Wire Wire Line
	10150 1550 10600 1550
Wire Wire Line
	10150 1650 10600 1650
Wire Wire Line
	10150 2200 10550 2200
Wire Wire Line
	10150 2300 10550 2300
Wire Wire Line
	10150 2400 10550 2400
Wire Wire Line
	9050 1150 9650 1150
Wire Wire Line
	9250 1250 9650 1250
Wire Wire Line
	9250 1350 9650 1350
Wire Wire Line
	9250 1450 9650 1450
Wire Wire Line
	9250 1550 9650 1550
Wire Wire Line
	9250 1650 9650 1650
Wire Wire Line
	9250 2200 9650 2200
Wire Wire Line
	9250 2300 9650 2300
Wire Wire Line
	9250 2400 9650 2400
Wire Wire Line
	9050 1250 9050 1150
Wire Wire Line
	9350 850  9350 1050
Wire Wire Line
	9350 1050 9650 1050
Wire Wire Line
	9550 850  9550 950 
Wire Wire Line
	9550 950  9650 950 
Text Label 10550 2200 2    60   ~ 0
RFM_INT
Text Label 10550 2300 2    60   ~ 0
RFM_SS
Text Label 10550 2400 2    60   ~ 0
MOSILOW
Text Label 9250 2400 0    60   ~ 0
MISOLOW
Text Label 9250 2200 0    60   ~ 0
GSM_RX
Text Label 9250 1650 0    60   ~ 0
GSM_TX
Text Label 9250 1550 0    60   ~ 0
GSM_KEY
Text Label 9250 2300 0    60   ~ 0
SCKLOW
Text Label 9250 1450 0    60   ~ 0
GSM_SLP
Text Label 9250 1350 0    60   ~ 0
FC_EN
Text Label 9250 1250 0    60   ~ 0
CAM_EN
Wire Wire Line
	10150 2500 10550 2500
Wire Wire Line
	10150 2600 10550 2600
Wire Wire Line
	9650 2500 9250 2500
Wire Wire Line
	9250 2600 9650 2600
Text Label 9250 2500 0    60   ~ 0
O2
Text Label 9250 2600 0    60   ~ 0
CO2
Text Label 10550 2500 2    60   ~ 0
O3
Text Label 10550 2600 2    60   ~ 0
V_READ
$Comp
L +3V3 #PWR010
U 1 1 5AE9DEBF
P 9350 850
F 0 "#PWR010" H 9350 700 50  0001 C CNN
F 1 "+3V3" H 9350 990 50  0000 C CNN
F 2 "" H 9350 850 50  0001 C CNN
F 3 "" H 9350 850 50  0001 C CNN
	1    9350 850 
	1    0    0    -1  
$EndComp
Text Label 10550 2700 2    60   ~ 0
SERVO
Wire Wire Line
	10150 2700 10550 2700
Text Label 3150 4300 0    60   ~ 0
O3
Wire Wire Line
	3150 4300 3300 4300
$Comp
L GND #PWR011
U 1 1 5AEA01F2
P 7600 1200
F 0 "#PWR011" H 7600 950 50  0001 C CNN
F 1 "GND" H 7600 1050 50  0000 C CNN
F 2 "" H 7600 1200 50  0001 C CNN
F 3 "" H 7600 1200 50  0001 C CNN
	1    7600 1200
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR012
U 1 1 5AEA01F3
P 7600 900
F 0 "#PWR012" H 7600 750 50  0001 C CNN
F 1 "+3V3" H 7600 1040 50  0000 C CNN
F 2 "" H 7600 900 50  0001 C CNN
F 3 "" H 7600 900 50  0001 C CNN
	1    7600 900 
	1    0    0    -1  
$EndComp
Text Label 7750 1200 0    60   ~ 0
SCL
Text Label 7750 1300 0    60   ~ 0
SDA
Text Label 7750 1400 0    60   ~ 0
SER_P
Text Label 7750 1500 0    60   ~ 0
RX_GPS
Text Label 7750 1600 0    60   ~ 0
TX_GPS
$Comp
L Conn_01x08 J3
U 1 1 5AEA01F7
P 8250 1300
F 0 "J3" H 8250 1700 50  0000 C CNN
F 1 "Conn_01x08" H 8250 800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch1.27mm" H 8250 1300 50  0001 C CNN
F 3 "" H 8250 1300 50  0001 C CNN
	1    8250 1300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR013
U 1 1 5AEA01F8
P 7600 1600
F 0 "#PWR013" H 7600 1450 50  0001 C CNN
F 1 "+5V" H 7600 1740 50  0000 C CNN
F 2 "" H 7600 1600 50  0001 C CNN
F 3 "" H 7600 1600 50  0001 C CNN
	1    7600 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 1000 7600 1000
Wire Wire Line
	7600 1000 7600 900 
Wire Wire Line
	8050 1100 7600 1100
Wire Wire Line
	7600 1100 7600 1200
Wire Wire Line
	8050 1200 7750 1200
Wire Wire Line
	8050 1300 7750 1300
Wire Wire Line
	8050 1400 7750 1400
Wire Wire Line
	7750 1500 8050 1500
Wire Wire Line
	7750 1600 8050 1600
Wire Wire Line
	8050 1700 7600 1700
Wire Wire Line
	7600 1700 7600 1600
$Comp
L Conn_02x08_Odd_Even J2
U 1 1 5AF5EDDF
P 9850 1250
F 0 "J2" H 9900 1650 50  0000 C CNN
F 1 "Conn_02x08_Counter_Clockwise" H 9900 750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x08_Pitch1.27mm" H 9850 1250 50  0001 C CNN
F 3 "" H 9850 1250 50  0001 C CNN
	1    9850 1250
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x07_Counter_Clockwise J4
U 1 1 5AF5EE1E
P 9850 2500
F 0 "J4" H 9900 2900 50  0000 C CNN
F 1 "Conn_02x07_Counter_Clockwise" H 9900 2100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x07_Pitch1.27mm" H 9850 2500 50  0001 C CNN
F 3 "" H 9850 2500 50  0001 C CNN
	1    9850 2500
	1    0    0    -1  
$EndComp
$Comp
L SD U1
U 1 1 5AF5FD7C
P 8150 2650
F 0 "U1" H 8050 3200 60  0000 C CNN
F 1 "SD" H 8400 2100 60  0000 C CNN
F 2 "CanSat:SD" H 8050 3200 60  0001 C CNN
F 3 "" H 8050 3200 60  0001 C CNN
	1    8150 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 2350 7300 2350
Wire Wire Line
	7800 2450 7300 2450
Wire Wire Line
	7150 2550 7800 2550
Wire Wire Line
	7800 2650 7300 2650
Wire Wire Line
	7150 2750 7800 2750
Wire Wire Line
	7800 2850 7300 2850
Wire Wire Line
	7150 3050 7800 3050
$Comp
L GND #PWR014
U 1 1 5AF6049B
P 7150 3150
F 0 "#PWR014" H 7150 2900 50  0001 C CNN
F 1 "GND" H 7150 3000 50  0000 C CNN
F 2 "" H 7150 3150 50  0001 C CNN
F 3 "" H 7150 3150 50  0001 C CNN
	1    7150 3150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 5AF604E3
P 7150 2850
F 0 "#PWR015" H 7150 2600 50  0001 C CNN
F 1 "GND" H 7150 2700 50  0000 C CNN
F 2 "" H 7150 2850 50  0001 C CNN
F 3 "" H 7150 2850 50  0001 C CNN
	1    7150 2850
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR016
U 1 1 5AF605CE
P 7150 2450
F 0 "#PWR016" H 7150 2300 50  0001 C CNN
F 1 "+3V3" H 7150 2590 50  0000 C CNN
F 2 "" H 7150 2450 50  0001 C CNN
F 3 "" H 7150 2450 50  0001 C CNN
	1    7150 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2450 7150 2550
Wire Wire Line
	7150 2750 7150 2850
Wire Wire Line
	7150 3050 7150 3150
Text Label 7300 2850 0    60   ~ 0
MISOLOW
Text Label 7300 2650 0    60   ~ 0
SCKLOW
Text Label 7300 2450 0    60   ~ 0
MOSILOW
Text Label 7300 2350 0    60   ~ 0
SD_SSLOW
Wire Wire Line
	8500 4050 9100 4050
$Comp
L +3.3V #PWR017
U 1 1 5AF70325
P 8300 3650
F 0 "#PWR017" H 8300 3500 50  0001 C CNN
F 1 "+3.3V" H 8300 3790 50  0000 C CNN
F 2 "" H 8300 3650 50  0001 C CNN
F 3 "" H 8300 3650 50  0001 C CNN
	1    8300 3650
	1    0    0    -1  
$EndComp
Text Label 8700 4050 0    60   ~ 0
MISOLOW
Text Label 7650 4050 0    60   ~ 0
MISO
Wire Wire Line
	7650 5050 8100 5050
Wire Wire Line
	8500 5050 9100 5050
Connection ~ 8550 5050
Connection ~ 8550 4750
Wire Wire Line
	8300 4750 8550 4750
$Comp
L +3.3V #PWR018
U 1 1 5AF71C58
P 8550 4750
F 0 "#PWR018" H 8550 4600 50  0001 C CNN
F 1 "+3.3V" H 8550 4890 50  0000 C CNN
F 2 "" H 8550 4750 50  0001 C CNN
F 3 "" H 8550 4750 50  0001 C CNN
	1    8550 4750
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 5AF71C6A
P 8550 4900
F 0 "R9" V 8630 4900 50  0000 C CNN
F 1 "10k" V 8550 4900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8480 4900 50  0001 C CNN
F 3 "" H 8550 4900 50  0001 C CNN
	1    8550 4900
	-1   0    0    1   
$EndComp
$Comp
L BSS138 Q2
U 1 1 5AF71C70
P 8300 4950
F 0 "Q2" H 8500 5025 50  0000 L CNN
F 1 "BSS138" H 8500 4950 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 8500 4875 50  0001 L CIN
F 3 "" H 8300 4950 50  0001 L CNN
	1    8300 4950
	0    -1   1    0   
$EndComp
Text Label 8700 5050 0    60   ~ 0
MOSILOW
Text Label 7650 5050 0    60   ~ 0
MOSI
Wire Wire Line
	7650 5950 8100 5950
Wire Wire Line
	8500 5950 9100 5950
Connection ~ 8550 5950
Connection ~ 8550 5650
Wire Wire Line
	8300 5650 8550 5650
$Comp
L +3.3V #PWR019
U 1 1 5AF71D08
P 8550 5650
F 0 "#PWR019" H 8550 5500 50  0001 C CNN
F 1 "+3.3V" H 8550 5790 50  0000 C CNN
F 2 "" H 8550 5650 50  0001 C CNN
F 3 "" H 8550 5650 50  0001 C CNN
	1    8550 5650
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 5AF71D1A
P 8550 5800
F 0 "R10" V 8630 5800 50  0000 C CNN
F 1 "10k" V 8550 5800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8480 5800 50  0001 C CNN
F 3 "" H 8550 5800 50  0001 C CNN
	1    8550 5800
	-1   0    0    1   
$EndComp
$Comp
L BSS138 Q3
U 1 1 5AF71D20
P 8300 5850
F 0 "Q3" H 8500 5925 50  0000 L CNN
F 1 "BSS138" H 8500 5850 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 8500 5775 50  0001 L CIN
F 3 "" H 8300 5850 50  0001 L CNN
	1    8300 5850
	0    -1   1    0   
$EndComp
Text Label 8700 5950 0    60   ~ 0
SCKLOW
Text Label 7650 5950 0    60   ~ 0
SCK
Wire Wire Line
	9250 4050 9700 4050
Wire Wire Line
	10100 4050 10700 4050
Connection ~ 10150 4050
Connection ~ 10150 3750
Wire Wire Line
	9900 3750 10150 3750
$Comp
L +3.3V #PWR020
U 1 1 5AF71E79
P 10150 3750
F 0 "#PWR020" H 10150 3600 50  0001 C CNN
F 1 "+3.3V" H 10150 3890 50  0000 C CNN
F 2 "" H 10150 3750 50  0001 C CNN
F 3 "" H 10150 3750 50  0001 C CNN
	1    10150 3750
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 5AF71E8B
P 10150 3900
F 0 "R12" V 10230 3900 50  0000 C CNN
F 1 "10k" V 10150 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 10080 3900 50  0001 C CNN
F 3 "" H 10150 3900 50  0001 C CNN
	1    10150 3900
	-1   0    0    1   
$EndComp
$Comp
L BSS138 Q4
U 1 1 5AF71E91
P 9900 3950
F 0 "Q4" H 10100 4025 50  0000 L CNN
F 1 "BSS138" H 10100 3950 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 10100 3875 50  0001 L CIN
F 3 "" H 9900 3950 50  0001 L CNN
	1    9900 3950
	0    -1   1    0   
$EndComp
Text Label 10300 4050 0    60   ~ 0
SD_SSLOW
Text Label 9250 4050 0    60   ~ 0
SD_SS
Text Label 5950 6800 0    60   ~ 0
SD_SS
Wire Wire Line
	5900 6800 6200 6800
Text Label 5950 3300 0    60   ~ 0
SER_P
Wire Wire Line
	6200 3300 5900 3300
Wire Wire Line
	5900 5400 6150 5400
Wire Wire Line
	5900 2300 6350 2300
Text Label 5950 5300 0    60   ~ 0
LED2
Wire Wire Line
	5900 5300 6150 5300
Text Label 5950 5200 0    60   ~ 0
LED3
Wire Wire Line
	5900 5200 6150 5200
Text Label 5950 5100 0    60   ~ 0
LED4
Wire Wire Line
	5900 5100 6150 5100
$Comp
L Conn_01x04 J5
U 1 1 5B0557C9
P 6700 1300
F 0 "J5" H 6700 1500 50  0000 C CNN
F 1 "Conn_01x04" H 6700 1000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch1.27mm" H 6700 1300 50  0001 C CNN
F 3 "" H 6700 1300 50  0001 C CNN
	1    6700 1300
	-1   0    0    1   
$EndComp
Text Label 6950 1400 0    60   ~ 0
LED1
Wire Wire Line
	6900 1400 7150 1400
Text Label 6950 1300 0    60   ~ 0
LED2
Wire Wire Line
	6900 1300 7150 1300
Text Label 6950 1200 0    60   ~ 0
LED3
Wire Wire Line
	6900 1200 7150 1200
Text Label 6950 1100 0    60   ~ 0
LED4
Wire Wire Line
	6900 1100 7150 1100
Text Label 6000 6100 0    60   ~ 0
GAMMA
Wire Wire Line
	6300 6100 5900 6100
Wire Wire Line
	10550 2800 10150 2800
Text Label 10550 2800 2    60   ~ 0
GAMMA
Text Label 9250 2700 0    60   ~ 0
SCL
Text Label 9250 2800 0    60   ~ 0
SDA
Wire Wire Line
	9650 2700 9250 2700
Wire Wire Line
	9650 2800 9250 2800
$Comp
L ATMEGA2560-A IC1
U 1 1 5AE1E140
P 4600 4600
F 0 "IC1" H 3450 7400 40  0000 L BNN
F 1 "ATMEGA2560-A" H 5300 1750 40  0000 L BNN
F 2 "CanSat:AtMega2560-AU" H 4600 4600 30  0000 C CIN
F 3 "" H 4600 4600 60  0000 C CNN
	1    4600 4600
	1    0    0    -1  
$EndComp
$Comp
L L L1
U 1 1 5B110706
P 3000 1600
F 0 "L1" V 2950 1600 50  0000 C CNN
F 1 "10 uH" V 3075 1600 50  0000 C CNN
F 2 "Inductors_SMD:L_Taiyo-Yuden_NR-50xx" H 3000 1600 50  0001 C CNN
F 3 "" H 3000 1600 50  0001 C CNN
	1    3000 1600
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR021
U 1 1 5B1107DF
P 2750 1500
F 0 "#PWR021" H 2750 1350 50  0001 C CNN
F 1 "+5V" H 2750 1640 50  0000 C CNN
F 2 "" H 2750 1500 50  0001 C CNN
F 3 "" H 2750 1500 50  0001 C CNN
	1    2750 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1500 2750 1600
Wire Wire Line
	2750 1600 2850 1600
$Comp
L CP1 C8
U 1 1 5B110D60
P 3250 1300
F 0 "C8" H 3275 1400 50  0000 L CNN
F 1 "10 uF" H 3275 1200 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-B_EIA-3528-21_Reflow" H 3250 1300 50  0001 C CNN
F 3 "" H 3250 1300 50  0001 C CNN
	1    3250 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	2750 1000 4250 1000
Wire Wire Line
	3650 1000 3650 1100
Wire Wire Line
	3950 1000 3950 1100
Connection ~ 3650 1000
Wire Wire Line
	4250 1000 4250 1100
Connection ~ 3950 1000
Wire Wire Line
	3250 1450 3250 1600
Wire Wire Line
	3150 1600 4450 1600
Wire Wire Line
	3650 1600 3650 1500
Wire Wire Line
	3950 1600 3950 1500
Connection ~ 3650 1600
Wire Wire Line
	4250 1500 4250 1700
Connection ~ 3950 1600
Connection ~ 4250 1600
Wire Wire Line
	4350 1600 4350 1700
Wire Wire Line
	4450 1300 4450 1700
Connection ~ 4350 1600
Wire Wire Line
	3250 1000 3250 1150
Connection ~ 3250 1600
Wire Wire Line
	2750 1000 2750 1100
Connection ~ 3250 1000
$Comp
L GND #PWR022
U 1 1 5B111CB6
P 2750 1100
F 0 "#PWR022" H 2750 850 50  0001 C CNN
F 1 "GND" H 2750 950 50  0000 C CNN
F 2 "" H 2750 1100 50  0001 C CNN
F 3 "" H 2750 1100 50  0001 C CNN
	1    2750 1100
	1    0    0    -1  
$EndComp
$Comp
L Ferrite_Bead L2
U 1 1 5B111D0C
P 4700 1300
F 0 "L2" V 4550 1325 50  0000 C CNN
F 1 "Ferrite_Bead" V 4850 1300 50  0000 C CNN
F 2 "Inductors_SMD:L_0805" V 4630 1300 50  0001 C CNN
F 3 "" H 4700 1300 50  0001 C CNN
	1    4700 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 1300 4450 1300
Connection ~ 4450 1600
Wire Wire Line
	4750 1700 4750 1600
Wire Wire Line
	4750 1600 4950 1600
Wire Wire Line
	4950 1600 4950 1000
Wire Wire Line
	4950 1300 4850 1300
Wire Wire Line
	5300 1100 5300 1000
Wire Wire Line
	4950 1000 5650 1000
Connection ~ 4950 1300
$Comp
L GND #PWR023
U 1 1 5B11225A
P 5300 1600
F 0 "#PWR023" H 5300 1350 50  0001 C CNN
F 1 "GND" H 5300 1450 50  0000 C CNN
F 2 "" H 5300 1600 50  0001 C CNN
F 3 "" H 5300 1600 50  0001 C CNN
	1    5300 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 1500 5300 1600
$Comp
L CP1 C9
U 1 1 5B11266A
P 5650 1300
F 0 "C9" H 5675 1400 50  0000 L CNN
F 1 "10 uF" H 5675 1200 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-B_EIA-3528-21_Reflow" H 5650 1300 50  0001 C CNN
F 3 "" H 5650 1300 50  0001 C CNN
	1    5650 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5300 1550 5650 1550
Wire Wire Line
	5650 1550 5650 1450
Connection ~ 5300 1550
Wire Wire Line
	5650 1000 5650 1150
Connection ~ 5300 1000
$Comp
L BSS138 Q1
U 1 1 5AF70329
P 8300 3950
F 0 "Q1" H 8500 4025 50  0000 L CNN
F 1 "BSS138" H 8500 3950 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 8500 3875 50  0001 L CIN
F 3 "" H 8300 3950 50  0001 L CNN
	1    8300 3950
	0    -1   1    0   
$EndComp
Wire Wire Line
	8300 3650 8300 3750
Wire Wire Line
	7650 4050 8100 4050
Connection ~ 8050 4050
Wire Wire Line
	8050 3650 8050 3750
$Comp
L R R5
U 1 1 5AF70327
P 8050 3900
F 0 "R5" V 8130 3900 50  0000 C CNN
F 1 "10k" V 8050 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7980 3900 50  0001 C CNN
F 3 "" H 8050 3900 50  0001 C CNN
	1    8050 3900
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR024
U 1 1 5AF70326
P 8050 3650
F 0 "#PWR024" H 8050 3500 50  0001 C CNN
F 1 "+5V" H 8050 3790 50  0000 C CNN
F 2 "" H 8050 3650 50  0001 C CNN
F 3 "" H 8050 3650 50  0001 C CNN
	1    8050 3650
	1    0    0    -1  
$EndComp
$EndSCHEMATC
