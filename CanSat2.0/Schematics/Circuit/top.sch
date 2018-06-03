EESchema Schematic File Version 2
LIBS:top-rescue
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
LIBS:cansat
LIBS:LSM303AGRTR
LIBS:MPL3115A2
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
L LED-RESCUE-top D1
U 1 1 5A4CC8A7
P 4550 1450
F 0 "D1" H 4550 1550 50  0000 C CNN
F 1 "LED" H 4550 1350 50  0000 C CNN
F 2 "Diodes_SMD:D_0603" H 4550 1450 60  0000 C CNN
F 3 "~" H 4550 1450 60  0000 C CNN
	1    4550 1450
	1    0    0    -1  
$EndComp
Text Label 8900 4400 0    60   ~ 0
SDA
Text Label 8900 4100 0    60   ~ 0
SCL
$Comp
L C-RESCUE-top C1
U 1 1 5A4CC8D9
P 10550 3800
F 0 "C1" H 10550 3900 40  0000 L CNN
F 1 "100 nF" H 10556 3715 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 10588 3650 30  0000 C CNN
F 3 "~" H 10550 3800 60  0000 C CNN
	1    10550 3800
	0    1    1    0   
$EndComp
$Comp
L C-RESCUE-top C3
U 1 1 5A4CC8DA
P 8900 4500
F 0 "C3" H 8900 4600 40  0000 L CNN
F 1 "0.22 uF" H 8906 4415 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8938 4350 30  0000 C CNN
F 3 "~" H 8900 4500 60  0000 C CNN
	1    8900 4500
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 5A51DC75
P 3950 1450
F 0 "R1" V 4030 1450 50  0000 C CNN
F 1 "105" V 3950 1450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3880 1450 50  0001 C CNN
F 3 "" H 3950 1450 50  0001 C CNN
	1    3950 1450
	0    1    1    0   
$EndComp
Text Label 3350 1450 0    60   ~ 0
LED1
$Comp
L +3.3V #PWR25
U 1 1 5A5BAF55
P 9800 3800
F 0 "#PWR25" H 9800 3650 50  0001 C CNN
F 1 "+3.3V" H 9800 3940 50  0000 C CNN
F 2 "" H 9800 3800 50  0001 C CNN
F 3 "" H 9800 3800 50  0001 C CNN
	1    9800 3800
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-top #PWR24
U 1 1 5A5BB0F7
P 9600 5250
F 0 "#PWR24" H 9600 5250 30  0001 C CNN
F 1 "GND" H 9600 5180 30  0001 C CNN
F 2 "" H 9600 5250 60  0000 C CNN
F 3 "" H 9600 5250 60  0000 C CNN
	1    9600 5250
	1    0    0    -1  
$EndComp
$Comp
L LSM303AGRTR U1
U 1 1 5A5BB296
P 9600 4500
F 0 "U1" H 9198 5021 50  0000 L BNN
F 1 "LSM303AGRTR" H 9198 3906 50  0000 L BNN
F 2 "CanSat:LSM303AGRTR" H 9600 4500 50  0001 L BNN
F 3 "STMicroelectronics" H 9600 4500 50  0001 L BNN
F 4 "IMU ACCEL/MAG I2C/SPI 12LGA" H 9600 4500 50  0001 L BNN "Pole4"
F 5 "LGA-12 STMicroelectronics" H 9600 4500 50  0001 L BNN "Pole5"
F 6 "1.89 USD" H 9600 4500 50  0001 L BNN "Pole6"
F 7 "LSM303AGRTR" H 9600 4500 50  0001 L BNN "Pole7"
F 8 "Good" H 9600 4500 50  0001 L BNN "Pole8"
	1    9600 4500
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-top C7
U 1 1 5A5BB4B9
P 10350 4500
F 0 "C7" H 10350 4600 40  0000 L CNN
F 1 "100 nF" H 10356 4415 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 10388 4350 30  0000 C CNN
F 3 "~" H 10350 4500 60  0000 C CNN
	1    10350 4500
	-1   0    0    1   
$EndComp
$Comp
L MPL3115A2 U6
U 1 1 5AE071AF
P 9500 2300
F 0 "U6" H 9119 2731 50  0000 L BNN
F 1 "MPL3115A2" H 9109 1829 50  0000 L BNN
F 2 "Housings_LGA:LGA-8_3x5mm_Pitch1.25mm" H 9500 2300 50  0001 L BNN
F 3 "Good" H 9500 2300 50  0001 L BNN
F 4 "LGA-8 NXP Semiconductors" H 9500 2300 50  0001 L BNN "Pole4"
F 5 "MPL3115A2" H 9500 2300 50  0001 L BNN "Pole5"
F 6 "3.07 USD" H 9500 2300 50  0001 L BNN "Pole6"
F 7 "Pressure Sensor, 50-110kpa, Lga-8" H 9500 2300 50  0001 L BNN "Pole7"
F 8 "NXP Semiconductors" H 9500 2300 50  0001 L BNN "Pole8"
	1    9500 2300
	1    0    0    -1  
$EndComp
$Comp
L SI7021 K1
U 1 1 5AE07217
P 9400 1050
F 0 "K1" H 9250 1250 60  0000 C CNN
F 1 "SI7021" H 9450 850 60  0000 C CNN
F 2 "Housings_DFN_QFN:DFN-6-1EP_3x3mm_Pitch0.95mm" H 9400 1050 60  0001 C CNN
F 3 "" H 9400 1050 60  0000 C CNN
	1    9400 1050
	1    0    0    -1  
$EndComp
Text Label 8650 950  0    60   ~ 0
SDA
Text Label 10000 950  0    60   ~ 0
SCL
$Comp
L GND #PWR23
U 1 1 5AE09854
P 8700 1600
F 0 "#PWR23" H 8700 1350 50  0001 C CNN
F 1 "GND" H 8700 1450 50  0000 C CNN
F 2 "" H 8700 1600 50  0001 C CNN
F 3 "" H 8700 1600 50  0001 C CNN
	1    8700 1600
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR28
U 1 1 5AE0987C
P 10350 1000
F 0 "#PWR28" H 10350 850 50  0001 C CNN
F 1 "+3V3" H 10350 1140 50  0000 C CNN
F 2 "" H 10350 1000 50  0001 C CNN
F 3 "" H 10350 1000 50  0001 C CNN
	1    10350 1000
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-top C8
U 1 1 5AE09A8A
P 10150 1300
F 0 "C8" H 10150 1400 40  0000 L CNN
F 1 "100 nF" H 10156 1215 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 10188 1150 30  0000 C CNN
F 3 "~" H 10150 1300 60  0000 C CNN
	1    10150 1300
	-1   0    0    1   
$EndComp
Text Label 8700 2200 0    60   ~ 0
SDA
Text Label 8700 2100 0    60   ~ 0
SCL
$Comp
L C-RESCUE-top C5
U 1 1 5AE09DED
P 8650 2500
F 0 "C5" H 8650 2600 40  0000 L CNN
F 1 "100 nF" H 8656 2415 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8688 2350 30  0000 C CNN
F 3 "~" H 8650 2500 60  0000 C CNN
	1    8650 2500
	0    1    1    0   
$EndComp
$Comp
L +3V3 #PWR21
U 1 1 5AE09EB8
P 8350 2400
F 0 "#PWR21" H 8350 2250 50  0001 C CNN
F 1 "+3V3" H 8350 2540 50  0000 C CNN
F 2 "" H 8350 2400 50  0001 C CNN
F 3 "" H 8350 2400 50  0001 C CNN
	1    8350 2400
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-top C10
U 1 1 5AE09F58
P 10600 2350
F 0 "C10" H 10600 2450 40  0000 L CNN
F 1 "100 nF" H 10606 2265 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 10638 2200 30  0000 C CNN
F 3 "~" H 10600 2350 60  0000 C CNN
	1    10600 2350
	-1   0    0    1   
$EndComp
$Comp
L C-RESCUE-top C9
U 1 1 5AE09FB6
P 10350 2350
F 0 "C9" H 10350 2450 40  0000 L CNN
F 1 "100 nF" H 10356 2265 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 10388 2200 30  0000 C CNN
F 3 "~" H 10350 2350 60  0000 C CNN
	1    10350 2350
	-1   0    0    1   
$EndComp
$Comp
L CP1 C11
U 1 1 5AE0A021
P 10850 2350
F 0 "C11" H 10875 2450 50  0000 L CNN
F 1 "10 uF" H 10875 2250 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-T_EIA-3528-12_Reflow" H 10850 2350 50  0001 C CNN
F 3 "" H 10850 2350 50  0001 C CNN
	1    10850 2350
	1    0    0    -1  
$EndComp
$Comp
L VEML6070 U2
U 1 1 5AE0D9F9
P 6800 1800
F 0 "U2" H 6600 2050 60  0000 C CNN
F 1 "VEML6070" H 6800 1550 60  0000 C CNN
F 2 "Housings_DFN_QFN:DFN-6-1EP_2x2mm_Pitch0.65mm" H 6800 1800 60  0001 C CNN
F 3 "" H 6800 1800 60  0001 C CNN
	1    6800 1800
	1    0    0    -1  
$EndComp
$Comp
L CP1 C4
U 1 1 5AE0E03C
P 7750 1950
F 0 "C4" H 7775 2050 50  0000 L CNN
F 1 "10 uF" H 7775 1850 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-T_EIA-3528-12_Reflow" H 7750 1950 50  0001 C CNN
F 3 "" H 7750 1950 50  0001 C CNN
	1    7750 1950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR19
U 1 1 5AE0E28F
P 7750 2200
F 0 "#PWR19" H 7750 1950 50  0001 C CNN
F 1 "GND" H 7750 2050 50  0000 C CNN
F 2 "" H 7750 2200 50  0001 C CNN
F 3 "" H 7750 2200 50  0001 C CNN
	1    7750 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR8
U 1 1 5AE0E320
P 5800 2200
F 0 "#PWR8" H 5800 1950 50  0001 C CNN
F 1 "GND" H 5800 2050 50  0000 C CNN
F 2 "" H 5800 2200 50  0001 C CNN
F 3 "" H 5800 2200 50  0001 C CNN
	1    5800 2200
	1    0    0    -1  
$EndComp
Text Label 7300 1800 0    60   ~ 0
SCL
Text Label 6150 1900 0    60   ~ 0
SDA
$Comp
L R R3
U 1 1 5AE0E53B
P 7450 2150
F 0 "R3" V 7530 2150 50  0000 C CNN
F 1 "270k" V 7450 2150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7380 2150 50  0001 C CNN
F 3 "" H 7450 2150 50  0001 C CNN
	1    7450 2150
	-1   0    0    1   
$EndComp
$Comp
L R R2
U 1 1 5AE0E5C9
P 6250 1450
F 0 "R2" V 6330 1450 50  0000 C CNN
F 1 "10k" V 6250 1450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6180 1450 50  0001 C CNN
F 3 "" H 6250 1450 50  0001 C CNN
	1    6250 1450
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR11
U 1 1 5AE0E69E
P 7450 2400
F 0 "#PWR11" H 7450 2150 50  0001 C CNN
F 1 "GND" H 7450 2250 50  0000 C CNN
F 2 "" H 7450 2400 50  0001 C CNN
F 3 "" H 7450 2400 50  0001 C CNN
	1    7450 2400
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR10
U 1 1 5AE0E7F8
P 6250 1250
F 0 "#PWR10" H 6250 1100 50  0001 C CNN
F 1 "+3V3" H 6250 1390 50  0000 C CNN
F 2 "" H 6250 1250 50  0001 C CNN
F 3 "" H 6250 1250 50  0001 C CNN
	1    6250 1250
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR18
U 1 1 5AE0E83C
P 7750 1600
F 0 "#PWR18" H 7750 1450 50  0001 C CNN
F 1 "+3V3" H 7750 1740 50  0000 C CNN
F 2 "" H 7750 1600 50  0001 C CNN
F 3 "" H 7750 1600 50  0001 C CNN
	1    7750 1600
	1    0    0    -1  
$EndComp
$Comp
L TSL2591 U3
U 1 1 5AE19F20
P 6800 3200
F 0 "U3" H 6650 3450 60  0000 C CNN
F 1 "TSL2591" H 6900 2950 60  0000 C CNN
F 2 "CanSat:AMS_LGA-10-1EP_2.7x4mm_Pitch0.6mm" H 6850 3200 60  0001 C CNN
F 3 "" H 6850 3200 60  0001 C CNN
	1    6800 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR9
U 1 1 5AE19FF6
P 6200 3400
F 0 "#PWR9" H 6200 3150 50  0001 C CNN
F 1 "GND" H 6200 3250 50  0000 C CNN
F 2 "" H 6200 3400 50  0001 C CNN
F 3 "" H 6200 3400 50  0001 C CNN
	1    6200 3400
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-top C2
U 1 1 5AE1A07A
P 7600 3500
F 0 "C2" H 7600 3600 40  0000 L CNN
F 1 "1 uF" H 7606 3415 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7638 3350 30  0000 C CNN
F 3 "~" H 7600 3500 60  0000 C CNN
	1    7600 3500
	-1   0    0    1   
$EndComp
Text Label 6100 3100 0    60   ~ 0
SCL
Text Label 7350 3100 0    60   ~ 0
SDA
$Comp
L +3V3 #PWR12
U 1 1 5AE1A3C1
P 7600 3100
F 0 "#PWR12" H 7600 2950 50  0001 C CNN
F 1 "+3V3" H 7600 3240 50  0000 C CNN
F 2 "" H 7600 3100 50  0001 C CNN
F 3 "" H 7600 3100 50  0001 C CNN
	1    7600 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR13
U 1 1 5AE1A787
P 7600 3800
F 0 "#PWR13" H 7600 3550 50  0001 C CNN
F 1 "GND" H 7600 3650 50  0000 C CNN
F 2 "" H 7600 3800 50  0001 C CNN
F 3 "" H 7600 3800 50  0001 C CNN
	1    7600 3800
	1    0    0    -1  
$EndComp
$Comp
L microservo U4
U 1 1 5AE1AF80
P 6800 4500
F 0 "U4" H 6700 4700 60  0000 C CNN
F 1 "microservo" H 6900 4300 60  0000 C CNN
F 2 "CanSat:microservo" H 6800 4500 60  0001 C CNN
F 3 "" H 6800 4500 60  0001 C CNN
	1    6800 4500
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR14
U 1 1 5AE1B1C8
P 7600 4300
F 0 "#PWR14" H 7600 4150 50  0001 C CNN
F 1 "+3V3" H 7600 4440 50  0000 C CNN
F 2 "" H 7600 4300 50  0001 C CNN
F 3 "" H 7600 4300 50  0001 C CNN
	1    7600 4300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR15
U 1 1 5AE1B212
P 7600 4700
F 0 "#PWR15" H 7600 4450 50  0001 C CNN
F 1 "GND" H 7600 4550 50  0000 C CNN
F 2 "" H 7600 4700 50  0001 C CNN
F 3 "" H 7600 4700 50  0001 C CNN
	1    7600 4700
	1    0    0    -1  
$EndComp
Text Label 7200 4600 0    60   ~ 0
SER_P
$Comp
L GND #PWR2
U 1 1 5AE1CC31
P 3750 5900
F 0 "#PWR2" H 3750 5650 50  0001 C CNN
F 1 "GND" H 3750 5750 50  0000 C CNN
F 2 "" H 3750 5900 50  0001 C CNN
F 3 "" H 3750 5900 50  0001 C CNN
	1    3750 5900
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR1
U 1 1 5AE1CC7E
P 3750 5600
F 0 "#PWR1" H 3750 5450 50  0001 C CNN
F 1 "+3V3" H 3750 5740 50  0000 C CNN
F 2 "" H 3750 5600 50  0001 C CNN
F 3 "" H 3750 5600 50  0001 C CNN
	1    3750 5600
	1    0    0    -1  
$EndComp
Text Label 3900 5900 0    60   ~ 0
SCL
Text Label 3900 6000 0    60   ~ 0
SDA
Text Label 3900 6100 0    60   ~ 0
SER_P
$Comp
L GPS U5
U 1 1 5AE1D1F9
P 6850 5500
F 0 "U5" H 6750 5750 60  0000 C CNN
F 1 "GPS" H 6900 5250 60  0000 C CNN
F 2 "CanSat:GPS" H 7200 5550 60  0001 C CNN
F 3 "" H 7200 5550 60  0001 C CNN
	1    6850 5500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR17
U 1 1 5AE1D5BF
P 7700 5550
F 0 "#PWR17" H 7700 5300 50  0001 C CNN
F 1 "GND" H 7700 5400 50  0000 C CNN
F 2 "" H 7700 5550 50  0001 C CNN
F 3 "" H 7700 5550 50  0001 C CNN
	1    7700 5550
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR16
U 1 1 5AE1D60F
P 7700 5250
F 0 "#PWR16" H 7700 5100 50  0001 C CNN
F 1 "+3V3" H 7700 5390 50  0000 C CNN
F 2 "" H 7700 5250 50  0001 C CNN
F 3 "" H 7700 5250 50  0001 C CNN
	1    7700 5250
	1    0    0    -1  
$EndComp
Text Label 7200 5650 0    60   ~ 0
TX_GPSL
Text Label 7200 5550 0    60   ~ 0
RX_GPSL
Text Label 3900 6200 0    60   ~ 0
RX_GPS
Text Label 3900 6300 0    60   ~ 0
TX_GPS
$Comp
L Conn_01x08 J1
U 1 1 5AE1E280
P 4400 6000
F 0 "J1" H 4400 6400 50  0000 C CNN
F 1 "Conn_01x08" H 4400 5500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch1.27mm" H 4400 6000 50  0001 C CNN
F 3 "" H 4400 6000 50  0001 C CNN
	1    4400 6000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR3
U 1 1 5AE1E3D2
P 3750 6300
F 0 "#PWR3" H 3750 6150 50  0001 C CNN
F 1 "+5V" H 3750 6440 50  0000 C CNN
F 2 "" H 3750 6300 50  0001 C CNN
F 3 "" H 3750 6300 50  0001 C CNN
	1    3750 6300
	1    0    0    -1  
$EndComp
$Comp
L BSS138 Q1
U 1 1 5AE21090
P 8450 6000
F 0 "Q1" H 8650 6075 50  0000 L CNN
F 1 "BSS138" H 8650 6000 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 8650 5925 50  0001 L CIN
F 3 "" H 8450 6000 50  0001 L CNN
	1    8450 6000
	0    -1   1    0   
$EndComp
$Comp
L R R4
U 1 1 5AE2115D
P 8150 5850
F 0 "R4" V 8230 5850 50  0000 C CNN
F 1 "10k" V 8150 5850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8080 5850 50  0001 C CNN
F 3 "" H 8150 5850 50  0001 C CNN
	1    8150 5850
	-1   0    0    1   
$EndComp
Text Label 8800 6100 0    60   ~ 0
TX_GPSL
Text Label 7750 6100 0    60   ~ 0
TX_GPS
Wire Wire Line
	4750 1450 5200 1450
Wire Wire Line
	8900 4400 9100 4400
Wire Wire Line
	8900 4100 9100 4100
Wire Wire Line
	4100 1450 4350 1450
Wire Wire Line
	3800 1450 3350 1450
Wire Wire Line
	9100 4200 9100 4300
Wire Wire Line
	9100 4250 8750 4250
Wire Wire Line
	8750 4250 8750 3800
Wire Wire Line
	8750 3800 10350 3800
Connection ~ 9100 4250
Wire Wire Line
	10350 3800 10350 4300
Wire Wire Line
	10350 4100 10200 4100
Connection ~ 9800 3800
Connection ~ 10350 4100
Wire Wire Line
	9600 5250 9600 5150
Wire Wire Line
	10350 5150 8700 5150
Wire Wire Line
	10350 4700 10350 5150
Wire Wire Line
	10350 4900 10200 4900
Wire Wire Line
	10350 4800 10200 4800
Connection ~ 10350 4900
Wire Wire Line
	8700 5150 8700 4500
Connection ~ 9600 5150
Connection ~ 10350 4800
Wire Wire Line
	10750 4700 10350 4700
Wire Wire Line
	10750 3800 10750 4700
Connection ~ 10750 4200
Connection ~ 10350 4700
Connection ~ 10350 3800
Wire Wire Line
	9950 1050 10350 1050
Wire Wire Line
	8850 1050 8650 1050
Wire Wire Line
	8650 1050 8650 1550
Wire Wire Line
	8650 1550 10150 1550
Wire Wire Line
	9950 950  10150 950 
Wire Wire Line
	8850 950  8650 950 
Wire Wire Line
	10350 1050 10350 1000
Connection ~ 10150 1050
Wire Wire Line
	8700 1600 8700 1550
Connection ~ 8700 1550
Wire Wire Line
	10150 1100 10150 1050
Wire Wire Line
	10150 1550 10150 1500
Wire Wire Line
	8900 2100 8700 2100
Wire Wire Line
	8700 2200 8900 2200
Wire Wire Line
	8350 2400 8350 2500
Wire Wire Line
	8350 2500 8450 2500
Wire Wire Line
	8900 2500 8850 2500
Wire Wire Line
	10100 2100 10850 2100
Wire Wire Line
	10350 2100 10350 2150
Wire Wire Line
	10600 2100 10600 2150
Connection ~ 10350 2100
Wire Wire Line
	10850 2100 10850 2200
Connection ~ 10600 2100
Wire Wire Line
	10100 2000 10200 2000
Wire Wire Line
	10200 1900 10200 2100
Connection ~ 10200 2100
Wire Wire Line
	10100 2600 10850 2600
Wire Wire Line
	10350 2600 10350 2550
Wire Wire Line
	10600 2600 10600 2550
Connection ~ 10350 2600
Wire Wire Line
	10850 2600 10850 2500
Connection ~ 10600 2600
Wire Wire Line
	7250 1700 7750 1700
Wire Wire Line
	7750 1600 7750 1800
Wire Wire Line
	7750 2200 7750 2100
Wire Wire Line
	5800 1700 5800 2200
Wire Wire Line
	6350 1900 6150 1900
Wire Wire Line
	7250 1800 7450 1800
Connection ~ 7750 1700
Wire Wire Line
	6250 1250 6250 1300
Wire Wire Line
	7250 1900 7450 1900
Wire Wire Line
	7450 1900 7450 2000
Wire Wire Line
	7450 2300 7450 2400
Wire Wire Line
	5800 1700 6350 1700
Wire Wire Line
	6250 1600 6250 1800
Wire Wire Line
	6250 1800 6350 1800
Wire Wire Line
	7600 3100 7600 3300
Wire Wire Line
	7600 3200 7300 3200
Connection ~ 7600 3200
Wire Wire Line
	7300 3100 7500 3100
Wire Wire Line
	6300 3100 6100 3100
Wire Wire Line
	6300 3300 6200 3300
Wire Wire Line
	6200 3300 6200 3400
Wire Wire Line
	7600 3800 7600 3700
Wire Wire Line
	7150 4600 7500 4600
Wire Wire Line
	7150 4500 7600 4500
Wire Wire Line
	7600 4500 7600 4700
Wire Wire Line
	7150 4400 7600 4400
Wire Wire Line
	7600 4400 7600 4300
Wire Wire Line
	3550 5700 4200 5700
Wire Wire Line
	3750 5700 3750 5600
Wire Wire Line
	3550 5800 4200 5800
Wire Wire Line
	3750 5800 3750 5900
Wire Wire Line
	4200 5900 3900 5900
Wire Wire Line
	4200 6000 3900 6000
Wire Wire Line
	4200 6100 3900 6100
Wire Wire Line
	3900 6200 4200 6200
Wire Wire Line
	3900 6300 4200 6300
Wire Wire Line
	7200 5350 7700 5350
Wire Wire Line
	7200 5450 7700 5450
Wire Wire Line
	7200 5550 7500 5550
Wire Wire Line
	7200 5650 7500 5650
Wire Wire Line
	7700 5450 7700 5550
Wire Wire Line
	7700 5350 7700 5250
Wire Wire Line
	4200 6400 3750 6400
Wire Wire Line
	3750 6400 3750 6300
Wire Wire Line
	7750 6100 8250 6100
Wire Wire Line
	8150 6000 8150 6100
Connection ~ 8150 6100
Wire Wire Line
	8650 6100 9150 6100
Wire Wire Line
	8450 5500 8450 5800
Wire Wire Line
	8150 5700 8150 5500
$Comp
L +3V3 #PWR22
U 1 1 5AE21A7F
P 8450 5500
F 0 "#PWR22" H 8450 5350 50  0001 C CNN
F 1 "+3V3" H 8450 5640 50  0000 C CNN
F 2 "" H 8450 5500 50  0001 C CNN
F 3 "" H 8450 5500 50  0001 C CNN
	1    8450 5500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR20
U 1 1 5AE21B26
P 8150 5500
F 0 "#PWR20" H 8150 5350 50  0001 C CNN
F 1 "+5V" H 8150 5640 50  0000 C CNN
F 2 "" H 8150 5500 50  0001 C CNN
F 3 "" H 8150 5500 50  0001 C CNN
	1    8150 5500
	1    0    0    -1  
$EndComp
$Comp
L BSS138 Q2
U 1 1 5AE21C23
P 10050 6000
F 0 "Q2" H 10250 6075 50  0000 L CNN
F 1 "BSS138" H 10250 6000 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 10250 5925 50  0001 L CIN
F 3 "" H 10050 6000 50  0001 L CNN
	1    10050 6000
	0    -1   1    0   
$EndComp
$Comp
L R R7
U 1 1 5AE21C2F
P 10350 5850
F 0 "R7" V 10430 5850 50  0000 C CNN
F 1 "10k" V 10350 5850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 10280 5850 50  0001 C CNN
F 3 "" H 10350 5850 50  0001 C CNN
	1    10350 5850
	-1   0    0    1   
$EndComp
Text Label 10400 6100 0    60   ~ 0
RX_GPSL
Text Label 9350 6100 0    60   ~ 0
RX_GPS
Wire Wire Line
	9350 6100 9850 6100
Wire Wire Line
	10250 6100 10750 6100
Wire Wire Line
	10350 6000 10350 6100
Connection ~ 10350 6100
Wire Wire Line
	10350 5500 10350 5700
Wire Wire Line
	10350 5600 10050 5600
Wire Wire Line
	10050 5600 10050 5800
Connection ~ 10350 5600
$Comp
L +3V3 #PWR29
U 1 1 5AE21C42
P 10350 5500
F 0 "#PWR29" H 10350 5350 50  0001 C CNN
F 1 "+3V3" H 10350 5640 50  0000 C CNN
F 2 "" H 10350 5500 50  0001 C CNN
F 3 "" H 10350 5500 50  0001 C CNN
	1    10350 5500
	1    0    0    -1  
$EndComp
$Comp
L CP1 C6
U 1 1 5AE9E782
P 10550 4200
F 0 "C6" H 10575 4300 50  0000 L CNN
F 1 "10 uF" H 10575 4100 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-T_EIA-3528-12_Reflow" H 10550 4200 50  0001 C CNN
F 3 "" H 10550 4200 50  0001 C CNN
	1    10550 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10200 4200 10400 4200
Connection ~ 10350 4200
Wire Wire Line
	10750 4200 10700 4200
$Comp
L +3V3 #PWR26
U 1 1 5B054ADA
P 10200 1900
F 0 "#PWR26" H 10200 1750 50  0001 C CNN
F 1 "+3V3" H 10200 2040 50  0000 C CNN
F 2 "" H 10200 1900 50  0001 C CNN
F 3 "" H 10200 1900 50  0001 C CNN
	1    10200 1900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR27
U 1 1 5B054AFD
P 10200 2700
F 0 "#PWR27" H 10200 2450 50  0001 C CNN
F 1 "GND" H 10200 2550 50  0000 C CNN
F 2 "" H 10200 2700 50  0001 C CNN
F 3 "" H 10200 2700 50  0001 C CNN
	1    10200 2700
	1    0    0    -1  
$EndComp
Connection ~ 10200 2000
Wire Wire Line
	10200 2700 10200 2600
Connection ~ 10200 2600
$Comp
L Conn_01x04 J2
U 1 1 5B055E1D
P 4150 4750
F 0 "J2" H 4150 4950 50  0000 C CNN
F 1 "Conn_01x04" H 4150 4450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch1.27mm" H 4150 4750 50  0001 C CNN
F 3 "" H 4150 4750 50  0001 C CNN
	1    4150 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	4350 4550 4600 4550
Text Label 4400 4550 0    60   ~ 0
LED4
Text Label 4400 4650 0    60   ~ 0
LED3
Text Label 4400 4750 0    60   ~ 0
LED2
Text Label 4400 4850 0    60   ~ 0
LED1
Wire Wire Line
	4350 4850 4600 4850
Wire Wire Line
	4600 4750 4350 4750
Wire Wire Line
	4350 4650 4600 4650
$Comp
L LED-RESCUE-top D2
U 1 1 5B056A71
P 4550 1950
F 0 "D2" H 4550 2050 50  0000 C CNN
F 1 "LED" H 4550 1850 50  0000 C CNN
F 2 "Diodes_SMD:D_0603" H 4550 1950 60  0000 C CNN
F 3 "~" H 4550 1950 60  0000 C CNN
	1    4550 1950
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 5B056A7D
P 3950 1950
F 0 "R8" V 4030 1950 50  0000 C CNN
F 1 "105" V 3950 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3880 1950 50  0001 C CNN
F 3 "" H 3950 1950 50  0001 C CNN
	1    3950 1950
	0    1    1    0   
$EndComp
Text Label 3350 1950 0    60   ~ 0
LED2
Wire Wire Line
	4750 1950 5200 1950
Wire Wire Line
	4100 1950 4350 1950
Wire Wire Line
	3800 1950 3350 1950
$Comp
L GND #PWR4
U 1 1 5B056BA9
P 5200 1550
F 0 "#PWR4" H 5200 1300 50  0001 C CNN
F 1 "GND" H 5200 1400 50  0000 C CNN
F 2 "" H 5200 1550 50  0001 C CNN
F 3 "" H 5200 1550 50  0001 C CNN
	1    5200 1550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR5
U 1 1 5B056BCF
P 5200 2050
F 0 "#PWR5" H 5200 1800 50  0001 C CNN
F 1 "GND" H 5200 1900 50  0000 C CNN
F 2 "" H 5200 2050 50  0001 C CNN
F 3 "" H 5200 2050 50  0001 C CNN
	1    5200 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 1950 5200 2050
Wire Wire Line
	5200 1450 5200 1550
$Comp
L LED-RESCUE-top D3
U 1 1 5B056E08
P 4550 2450
F 0 "D3" H 4550 2550 50  0000 C CNN
F 1 "LED" H 4550 2350 50  0000 C CNN
F 2 "Diodes_SMD:D_0603" H 4550 2450 60  0000 C CNN
F 3 "~" H 4550 2450 60  0000 C CNN
	1    4550 2450
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 5B056E0E
P 3950 2450
F 0 "R9" V 4030 2450 50  0000 C CNN
F 1 "105" V 3950 2450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3880 2450 50  0001 C CNN
F 3 "" H 3950 2450 50  0001 C CNN
	1    3950 2450
	0    1    1    0   
$EndComp
Text Label 3350 2450 0    60   ~ 0
LED3
Wire Wire Line
	4750 2450 5200 2450
Wire Wire Line
	4100 2450 4350 2450
Wire Wire Line
	3800 2450 3350 2450
$Comp
L LED-RESCUE-top D4
U 1 1 5B056E18
P 4550 2950
F 0 "D4" H 4550 3050 50  0000 C CNN
F 1 "LED" H 4550 2850 50  0000 C CNN
F 2 "Diodes_SMD:D_0603" H 4550 2950 60  0000 C CNN
F 3 "~" H 4550 2950 60  0000 C CNN
	1    4550 2950
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 5B056E1E
P 3950 2950
F 0 "R10" V 4030 2950 50  0000 C CNN
F 1 "105" V 3950 2950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3880 2950 50  0001 C CNN
F 3 "" H 3950 2950 50  0001 C CNN
	1    3950 2950
	0    1    1    0   
$EndComp
Text Label 3350 2950 0    60   ~ 0
LED4
Wire Wire Line
	4750 2950 5200 2950
Wire Wire Line
	4100 2950 4350 2950
Wire Wire Line
	3800 2950 3350 2950
$Comp
L GND #PWR6
U 1 1 5B056E28
P 5200 2550
F 0 "#PWR6" H 5200 2300 50  0001 C CNN
F 1 "GND" H 5200 2400 50  0000 C CNN
F 2 "" H 5200 2550 50  0001 C CNN
F 3 "" H 5200 2550 50  0001 C CNN
	1    5200 2550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR7
U 1 1 5B056E2E
P 5200 3050
F 0 "#PWR7" H 5200 2800 50  0001 C CNN
F 1 "GND" H 5200 2900 50  0000 C CNN
F 2 "" H 5200 3050 50  0001 C CNN
F 3 "" H 5200 3050 50  0001 C CNN
	1    5200 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2950 5200 3050
Wire Wire Line
	5200 2450 5200 2550
$Comp
L CP1 C12
U 1 1 5B11731F
P 3250 5750
F 0 "C12" H 3275 5850 50  0000 L CNN
F 1 "10 uF" H 3275 5650 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-T_EIA-3528-12_Reflow" H 3250 5750 50  0001 C CNN
F 3 "" H 3250 5750 50  0001 C CNN
	1    3250 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 5600 3250 5500
Wire Wire Line
	3250 5500 3550 5500
Wire Wire Line
	3550 5500 3550 5700
Connection ~ 3750 5700
Wire Wire Line
	3550 5800 3550 6000
Wire Wire Line
	3550 6000 3250 6000
Wire Wire Line
	3250 6000 3250 5900
Connection ~ 3750 5800
$EndSCHEMATC
