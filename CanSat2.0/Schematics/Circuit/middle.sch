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
P 2600 1800
F 0 "CSTECE1" H 2600 1950 60  0000 C CNN
F 1 "16MHZ" H 2600 1650 60  0000 C CNN
F 2 "CanSat:Crystal_SMD" H 2600 1800 60  0000 C CNN
F 3 "~" H 2600 1800 60  0000 C CNN
	1    2600 1800
	0    -1   -1   0   
$EndComp
$Comp
L C-RESCUE-main C3
U 1 1 5AE1E124
P 2200 2100
F 0 "C3" H 2200 2200 40  0000 L CNN
F 1 "20 pF" H 2206 2015 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2238 1950 30  0000 C CNN
F 3 "~" H 2200 2100 60  0000 C CNN
	1    2200 2100
	0    -1   -1   0   
$EndComp
$Comp
L C-RESCUE-main C2
U 1 1 5AE1E125
P 2200 1500
F 0 "C2" H 2200 1600 40  0000 L CNN
F 1 "20 pF" H 2206 1415 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2238 1350 30  0000 C CNN
F 3 "~" H 2200 1500 60  0000 C CNN
	1    2200 1500
	0    -1   -1   0   
$EndComp
$Comp
L R-RESCUE-main R4
U 1 1 5AE1E126
P 2850 1800
F 0 "R4" V 2930 1800 40  0000 C CNN
F 1 "1M" V 2857 1801 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2780 1800 30  0001 C CNN
F 3 "~" H 2850 1800 30  0000 C CNN
	1    2850 1800
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-main #PWR01
U 1 1 5AE1E127
P 1750 1900
F 0 "#PWR01" H 1750 1900 30  0001 C CNN
F 1 "GND" H 1750 1830 30  0001 C CNN
F 2 "" H 1750 1900 60  0000 C CNN
F 3 "" H 1750 1900 60  0000 C CNN
	1    1750 1900
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-main R1
U 1 1 5AE1E12E
P 1150 1750
F 0 "R1" V 1230 1750 40  0000 C CNN
F 1 "10k" V 1157 1751 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1080 1750 30  0001 C CNN
F 3 "~" H 1150 1750 30  0000 C CNN
	1    1150 1750
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-main C1
U 1 1 5AE1E130
P 1150 2300
F 0 "C1" H 1150 2400 40  0000 L CNN
F 1 "22 pF" H 1156 2215 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1188 2150 30  0000 C CNN
F 3 "~" H 1150 2300 60  0000 C CNN
	1    1150 2300
	1    0    0    -1  
$EndComp
Text Label 600  2050 0    60   ~ 0
RST
$Comp
L +5V #PWR02
U 1 1 5AE1E131
P 1150 1400
F 0 "#PWR02" H 1150 1490 20  0001 C CNN
F 1 "+5V" H 1150 1550 30  0000 C CNN
F 2 "" H 1150 1400 60  0000 C CNN
F 3 "" H 1150 1400 60  0000 C CNN
	1    1150 1400
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-main #PWR03
U 1 1 5AE1E132
P 1150 2600
F 0 "#PWR03" H 1150 2600 30  0001 C CNN
F 1 "GND" H 1150 2530 30  0001 C CNN
F 2 "" H 1150 2600 60  0000 C CNN
F 3 "" H 1150 2600 60  0000 C CNN
	1    1150 2600
	1    0    0    -1  
$EndComp
Text Label 6000 5100 0    60   ~ 0
TX
Text Label 6000 5000 0    60   ~ 0
RX
Text Label 5950 4200 0    60   ~ 0
SCL
Text Label 5950 4100 0    60   ~ 0
SDA
$Comp
L R-RESCUE-main R2
U 1 1 5AE1E133
P 1400 2900
F 0 "R2" V 1480 2900 40  0000 C CNN
F 1 "2k" V 1407 2901 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1330 2900 30  0001 C CNN
F 3 "~" H 1400 2900 30  0000 C CNN
	1    1400 2900
	0    1    1    0   
$EndComp
$Comp
L R-RESCUE-main R3
U 1 1 5AE1E134
P 1400 3100
F 0 "R3" V 1480 3100 40  0000 C CNN
F 1 "2k" V 1407 3101 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1330 3100 30  0001 C CNN
F 3 "~" H 1400 3100 30  0000 C CNN
	1    1400 3100
	0    1    1    0   
$EndComp
Text Label 900  2900 0    60   ~ 0
SCL
Text Label 900  3100 0    60   ~ 0
SDA
Text Label 3050 2000 0    60   ~ 0
XTAL2
Text Label 3050 1700 0    60   ~ 0
XTAL1
$Comp
L C-RESCUE-main C4
U 1 1 5AE1E13A
P 3850 900
F 0 "C4" H 3850 1000 40  0000 L CNN
F 1 "100 nF" H 3856 815 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3888 750 30  0000 C CNN
F 3 "~" H 3850 900 60  0000 C CNN
	1    3850 900 
	-1   0    0    1   
$EndComp
$Comp
L C-RESCUE-main C5
U 1 1 5AE1E13B
P 4150 900
F 0 "C5" H 4150 1000 40  0000 L CNN
F 1 "100 nF" H 4156 815 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4188 750 30  0000 C CNN
F 3 "~" H 4150 900 60  0000 C CNN
	1    4150 900 
	-1   0    0    1   
$EndComp
$Comp
L C-RESCUE-main C6
U 1 1 5AE1E13C
P 4450 900
F 0 "C6" H 4450 1000 40  0000 L CNN
F 1 "100 nF" H 4456 815 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4488 750 30  0000 C CNN
F 3 "~" H 4450 900 60  0000 C CNN
	1    4450 900 
	-1   0    0    1   
$EndComp
$Comp
L C-RESCUE-main C7
U 1 1 5AE1E13D
P 4750 900
F 0 "C7" H 4750 1000 40  0000 L CNN
F 1 "100 nF" H 4756 815 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4788 750 30  0000 C CNN
F 3 "~" H 4750 900 60  0000 C CNN
	1    4750 900 
	-1   0    0    1   
$EndComp
$Comp
L ATMEGA2560-A IC1
U 1 1 5AE1E140
P 4600 4000
F 0 "IC1" H 3450 6800 40  0000 L BNN
F 1 "ATMEGA2560-A" H 5300 1150 40  0000 L BNN
F 2 "CanSat:AtMega2560-AU" H 4600 4000 30  0000 C CIN
F 3 "" H 4600 4000 60  0000 C CNN
	1    4600 4000
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-main #PWR04
U 1 1 5AE1E141
P 3400 800
F 0 "#PWR04" H 3400 800 30  0001 C CNN
F 1 "GND" H 3400 730 30  0001 C CNN
F 2 "" H 3400 800 60  0000 C CNN
F 3 "" H 3400 800 60  0000 C CNN
	1    3400 800 
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR05
U 1 1 5AE1E142
P 5050 950
F 0 "#PWR05" H 5050 1040 20  0001 C CNN
F 1 "+5V" H 5050 1040 30  0000 C CNN
F 2 "" H 5050 950 60  0000 C CNN
F 3 "" H 5050 950 60  0000 C CNN
	1    5050 950 
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-main #PWR06
U 1 1 5AE1E143
P 4600 7100
F 0 "#PWR06" H 4600 7100 30  0001 C CNN
F 1 "GND" H 4600 7030 30  0001 C CNN
F 2 "" H 4600 7100 60  0000 C CNN
F 3 "" H 4600 7100 60  0000 C CNN
	1    4600 7100
	1    0    0    -1  
$EndComp
Text Label 3050 1400 0    60   ~ 0
RST
Text Label 3150 3500 0    60   ~ 0
O2
Text Label 5950 1800 0    60   ~ 0
CAM_EN
Text Label 5950 1900 0    60   ~ 0
FC_EN
Text Label 5950 4800 0    60   ~ 0
LED1
Text Label 2800 5100 0    60   ~ 0
GSM_RX
Text Label 2800 5000 0    60   ~ 0
GSM_TX
Text Label 5950 1700 0    60   ~ 0
GSM_SLP
Text Label 5950 2000 0    60   ~ 0
GSM_KEY
Text Label 6000 3000 0    60   ~ 0
SERVO
Text Label 5950 2400 0    60   ~ 0
SCK
Text Label 5950 2500 0    60   ~ 0
MOSI
Text Label 5950 2600 0    60   ~ 0
MISO
Text Label 5950 5400 0    60   ~ 0
RFM_INT
Text Label 2900 6400 0    60   ~ 0
RFM_SS
Text Label 2900 3400 0    60   ~ 0
V_READ
Text Label 2800 5300 0    60   ~ 0
FC_PWM_4
Text Label 2800 5400 0    60   ~ 0
FC_PWM_3
Text Label 2800 5500 0    60   ~ 0
FC_PWM_2
Text Label 2800 5600 0    60   ~ 0
FC_PWM_1
Text Label 2800 2600 0    60   ~ 0
FC_PWM_7
Text Label 2800 2700 0    60   ~ 0
FC_PWM_6
Text Label 2800 2800 0    60   ~ 0
FC_PWM_5
Text Label 5950 2900 0    60   ~ 0
FC_PWM_8
$Comp
L +3.3V #PWR07
U 1 1 5AE1E1C1
P 1750 2900
F 0 "#PWR07" H 1750 2750 50  0001 C CNN
F 1 "+3.3V" H 1750 3040 50  0000 C CNN
F 2 "" H 1750 2900 50  0001 C CNN
F 3 "" H 1750 2900 50  0001 C CNN
	1    1750 2900
	1    0    0    -1  
$EndComp
Text Label 3100 3600 0    60   ~ 0
CO2
Text Label 5950 4300 0    60   ~ 0
RX_GPS
Text Label 5950 4400 0    60   ~ 0
TX_GPS
$Comp
L GND #PWR08
U 1 1 5AE1E18F
P 700 4050
F 0 "#PWR08" H 700 3800 50  0001 C CNN
F 1 "GND" H 700 3900 50  0000 C CNN
F 2 "" H 700 4050 50  0001 C CNN
F 3 "" H 700 4050 50  0001 C CNN
	1    700  4050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR09
U 1 1 5AE1E18E
P 700 3750
F 0 "#PWR09" H 700 3600 50  0001 C CNN
F 1 "+5V" H 700 3890 50  0000 C CNN
F 2 "" H 700 3750 50  0001 C CNN
F 3 "" H 700 3750 50  0001 C CNN
	1    700  3750
	1    0    0    -1  
$EndComp
Text Label 1900 3850 0    60   ~ 0
RST
Text Label 1850 3750 0    60   ~ 0
MISO
Text Label 1850 3650 0    60   ~ 0
MOSI
Text Label 1900 3550 0    60   ~ 0
SCK
Text Label 800  3750 0    60   ~ 0
TX
Text Label 800  3650 0    60   ~ 0
RX
$Comp
L Conn_02x05_Counter_Clockwise J1
U 1 1 5AE1E18D
P 1350 3750
F 0 "J1" H 1400 4050 50  0000 C CNN
F 1 "Conn_02x05_Counter_Clockwise" H 1400 3450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch1.27mm" H 1350 3750 50  0001 C CNN
F 3 "" H 1350 3750 50  0001 C CNN
	1    1350 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1500 3000 1500
Wire Wire Line
	3000 1500 3000 1700
Wire Wire Line
	3000 1700 3300 1700
Connection ~ 2600 1500
Wire Wire Line
	3300 2000 3000 2000
Wire Wire Line
	3000 2000 3000 2100
Wire Wire Line
	3000 2100 2400 2100
Connection ~ 2600 2100
Wire Wire Line
	2000 1500 2000 2100
Wire Wire Line
	1750 1800 2000 1800
Connection ~ 2000 1800
Wire Wire Line
	2850 2050 2850 2100
Connection ~ 2850 2100
Wire Wire Line
	2850 1550 2850 1500
Connection ~ 2850 1500
Wire Wire Line
	600  2050 1150 2050
Connection ~ 1150 2050
Wire Wire Line
	1150 2000 1150 2100
Wire Wire Line
	5900 5000 6100 5000
Wire Wire Line
	5900 5100 6100 5100
Wire Wire Line
	5900 4100 6100 4100
Wire Wire Line
	5900 4200 6100 4200
Wire Wire Line
	1650 2900 1650 3100
Wire Wire Line
	1650 3000 1750 3000
Connection ~ 1650 3000
Wire Wire Line
	900  2900 1150 2900
Wire Wire Line
	1150 3100 900  3100
Wire Wire Line
	3850 1100 5050 1100
Connection ~ 4150 1100
Connection ~ 4250 1100
Connection ~ 4350 1100
Connection ~ 4450 1100
Wire Wire Line
	3400 700  4750 700 
Connection ~ 4150 700 
Connection ~ 4450 700 
Wire Wire Line
	5050 1100 5050 950 
Connection ~ 4750 1100
Wire Wire Line
	4450 6900 4750 6900
Connection ~ 4550 6900
Connection ~ 4650 6900
Wire Wire Line
	4600 6900 4600 7100
Connection ~ 4600 6900
Wire Wire Line
	3050 1400 3300 1400
Wire Wire Line
	5900 1800 6350 1800
Wire Wire Line
	5900 1900 6350 1900
Wire Wire Line
	3150 3500 3300 3500
Wire Wire Line
	2800 5000 3300 5000
Wire Wire Line
	2800 5100 3300 5100
Wire Wire Line
	5900 2000 6300 2000
Wire Wire Line
	5900 3000 6300 3000
Wire Wire Line
	5900 2600 6150 2600
Wire Wire Line
	6150 2500 5900 2500
Wire Wire Line
	5900 2400 6100 2400
Wire Wire Line
	5900 5400 6300 5400
Wire Wire Line
	2900 6400 3300 6400
Wire Wire Line
	2900 3400 3300 3400
Wire Wire Line
	3300 5300 2800 5300
Wire Wire Line
	2800 5400 3300 5400
Wire Wire Line
	3300 5500 2800 5500
Wire Wire Line
	2800 5600 3300 5600
Wire Wire Line
	2800 2600 3300 2600
Wire Wire Line
	3300 2700 2800 2700
Wire Wire Line
	2800 2800 3300 2800
Wire Wire Line
	5900 2900 6400 2900
Wire Wire Line
	3100 3600 3300 3600
Wire Wire Line
	5900 4300 6250 4300
Wire Wire Line
	6250 4400 5900 4400
Wire Wire Line
	2050 3850 1650 3850
Wire Wire Line
	1650 3750 2050 3750
Wire Wire Line
	2050 3650 1650 3650
Wire Wire Line
	1650 3550 2050 3550
Wire Wire Line
	700  3950 1150 3950
Wire Wire Line
	700  3850 1150 3850
Wire Wire Line
	800  3750 1150 3750
Wire Wire Line
	800  3650 1150 3650
Wire Wire Line
	1150 1400 1150 1500
Wire Wire Line
	1150 2600 1150 2500
Wire Wire Line
	3400 700  3400 800 
Connection ~ 3850 700 
Wire Wire Line
	700  3950 700  4050
Wire Wire Line
	700  3850 700  3750
Wire Wire Line
	1750 3000 1750 2900
Wire Wire Line
	1750 1900 1750 1800
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
L +5V #PWR010
U 1 1 5AE9DEB3
P 9550 850
F 0 "#PWR010" H 9550 700 50  0001 C CNN
F 1 "+5V" H 9550 990 50  0000 C CNN
F 2 "" H 9550 850 50  0001 C CNN
F 3 "" H 9550 850 50  0001 C CNN
	1    9550 850 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 5AE9DEB4
P 9050 1250
F 0 "#PWR011" H 9050 1000 50  0001 C CNN
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
L +3V3 #PWR012
U 1 1 5AE9DEBF
P 9350 850
F 0 "#PWR012" H 9350 700 50  0001 C CNN
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
Text Label 3150 3700 0    60   ~ 0
O3
Wire Wire Line
	3150 3700 3300 3700
$Comp
L GND #PWR013
U 1 1 5AEA01F2
P 7600 1200
F 0 "#PWR013" H 7600 950 50  0001 C CNN
F 1 "GND" H 7600 1050 50  0000 C CNN
F 2 "" H 7600 1200 50  0001 C CNN
F 3 "" H 7600 1200 50  0001 C CNN
	1    7600 1200
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR014
U 1 1 5AEA01F3
P 7600 900
F 0 "#PWR014" H 7600 750 50  0001 C CNN
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
L +5V #PWR015
U 1 1 5AEA01F8
P 7600 1600
F 0 "#PWR015" H 7600 1450 50  0001 C CNN
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
L Conn_02x08_Counter_Clockwise J2
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
L GND #PWR016
U 1 1 5AF6049B
P 7150 3150
F 0 "#PWR016" H 7150 2900 50  0001 C CNN
F 1 "GND" H 7150 3000 50  0000 C CNN
F 2 "" H 7150 3150 50  0001 C CNN
F 3 "" H 7150 3150 50  0001 C CNN
	1    7150 3150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 5AF604E3
P 7150 2850
F 0 "#PWR017" H 7150 2600 50  0001 C CNN
F 1 "GND" H 7150 2700 50  0000 C CNN
F 2 "" H 7150 2850 50  0001 C CNN
F 3 "" H 7150 2850 50  0001 C CNN
	1    7150 2850
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR018
U 1 1 5AF605CE
P 7150 2450
F 0 "#PWR018" H 7150 2300 50  0001 C CNN
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
	7650 4050 8100 4050
Wire Wire Line
	8500 4050 9100 4050
Connection ~ 8050 4050
Connection ~ 8550 4050
Connection ~ 8550 3750
Wire Wire Line
	8300 3750 8550 3750
$Comp
L +3.3V #PWR019
U 1 1 5AF70325
P 8550 3750
F 0 "#PWR019" H 8550 3600 50  0001 C CNN
F 1 "+3.3V" H 8550 3890 50  0000 C CNN
F 2 "" H 8550 3750 50  0001 C CNN
F 3 "" H 8550 3750 50  0001 C CNN
	1    8550 3750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR020
U 1 1 5AF70326
P 8050 3750
F 0 "#PWR020" H 8050 3600 50  0001 C CNN
F 1 "+5V" H 8050 3890 50  0000 C CNN
F 2 "" H 8050 3750 50  0001 C CNN
F 3 "" H 8050 3750 50  0001 C CNN
	1    8050 3750
	1    0    0    -1  
$EndComp
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
L R R8
U 1 1 5AF70328
P 8550 3900
F 0 "R8" V 8630 3900 50  0000 C CNN
F 1 "10k" V 8550 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8480 3900 50  0001 C CNN
F 3 "" H 8550 3900 50  0001 C CNN
	1    8550 3900
	-1   0    0    1   
$EndComp
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
Text Label 8700 4050 0    60   ~ 0
MISOLOW
Text Label 7650 4050 0    60   ~ 0
MISO
Wire Wire Line
	7650 5050 8100 5050
Wire Wire Line
	8500 5050 9100 5050
Connection ~ 8050 5050
Connection ~ 8550 5050
Connection ~ 8550 4750
Wire Wire Line
	8300 4750 8550 4750
$Comp
L +3.3V #PWR021
U 1 1 5AF71C58
P 8550 4750
F 0 "#PWR021" H 8550 4600 50  0001 C CNN
F 1 "+3.3V" H 8550 4890 50  0000 C CNN
F 2 "" H 8550 4750 50  0001 C CNN
F 3 "" H 8550 4750 50  0001 C CNN
	1    8550 4750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR022
U 1 1 5AF71C5E
P 8050 4750
F 0 "#PWR022" H 8050 4600 50  0001 C CNN
F 1 "+5V" H 8050 4890 50  0000 C CNN
F 2 "" H 8050 4750 50  0001 C CNN
F 3 "" H 8050 4750 50  0001 C CNN
	1    8050 4750
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5AF71C64
P 8050 4900
F 0 "R6" V 8130 4900 50  0000 C CNN
F 1 "10k" V 8050 4900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7980 4900 50  0001 C CNN
F 3 "" H 8050 4900 50  0001 C CNN
	1    8050 4900
	-1   0    0    1   
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
Connection ~ 8050 5950
Connection ~ 8550 5950
Connection ~ 8550 5650
Wire Wire Line
	8300 5650 8550 5650
$Comp
L +3.3V #PWR023
U 1 1 5AF71D08
P 8550 5650
F 0 "#PWR023" H 8550 5500 50  0001 C CNN
F 1 "+3.3V" H 8550 5790 50  0000 C CNN
F 2 "" H 8550 5650 50  0001 C CNN
F 3 "" H 8550 5650 50  0001 C CNN
	1    8550 5650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR024
U 1 1 5AF71D0E
P 8050 5650
F 0 "#PWR024" H 8050 5500 50  0001 C CNN
F 1 "+5V" H 8050 5790 50  0000 C CNN
F 2 "" H 8050 5650 50  0001 C CNN
F 3 "" H 8050 5650 50  0001 C CNN
	1    8050 5650
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5AF71D14
P 8050 5800
F 0 "R7" V 8130 5800 50  0000 C CNN
F 1 "10k" V 8050 5800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7980 5800 50  0001 C CNN
F 3 "" H 8050 5800 50  0001 C CNN
	1    8050 5800
	-1   0    0    1   
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
Connection ~ 9650 4050
Connection ~ 10150 4050
Connection ~ 10150 3750
Wire Wire Line
	9900 3750 10150 3750
$Comp
L +3.3V #PWR025
U 1 1 5AF71E79
P 10150 3750
F 0 "#PWR025" H 10150 3600 50  0001 C CNN
F 1 "+3.3V" H 10150 3890 50  0000 C CNN
F 2 "" H 10150 3750 50  0001 C CNN
F 3 "" H 10150 3750 50  0001 C CNN
	1    10150 3750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR026
U 1 1 5AF71E7F
P 9650 3750
F 0 "#PWR026" H 9650 3600 50  0001 C CNN
F 1 "+5V" H 9650 3890 50  0000 C CNN
F 2 "" H 9650 3750 50  0001 C CNN
F 3 "" H 9650 3750 50  0001 C CNN
	1    9650 3750
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 5AF71E85
P 9650 3900
F 0 "R11" V 9730 3900 50  0000 C CNN
F 1 "10k" V 9650 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9580 3900 50  0001 C CNN
F 3 "" H 9650 3900 50  0001 C CNN
	1    9650 3900
	-1   0    0    1   
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
Text Label 5950 6200 0    60   ~ 0
SD_SS
Wire Wire Line
	5900 6200 6200 6200
Text Label 5950 2700 0    60   ~ 0
SER_P
Wire Wire Line
	6200 2700 5900 2700
Wire Wire Line
	5900 4800 6150 4800
Wire Wire Line
	5900 1700 6350 1700
Text Label 5950 4700 0    60   ~ 0
LED2
Wire Wire Line
	5900 4700 6150 4700
Text Label 5950 4600 0    60   ~ 0
LED3
Wire Wire Line
	5900 4600 6150 4600
Text Label 5950 4500 0    60   ~ 0
LED4
Wire Wire Line
	5900 4500 6150 4500
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
Text Label 6000 5500 0    60   ~ 0
GAMMA
Wire Wire Line
	6300 5500 5900 5500
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
$EndSCHEMATC
