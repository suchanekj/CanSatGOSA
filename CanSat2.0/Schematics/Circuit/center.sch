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
LIBS:main-cache
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
Wire Wire Line
	3750 2150 3700 2150
Wire Wire Line
	3750 1700 3750 2150
Connection ~ 7700 2600
Connection ~ 8450 2600
Wire Wire Line
	900  1200 1400 1200
Wire Wire Line
	1800 1200 2750 1200
Connection ~ 1350 1200
Connection ~ 1850 1200
Connection ~ 1850 900 
Wire Wire Line
	1600 900  1850 900 
Connection ~ 3850 1800
Wire Wire Line
	3850 1800 3750 1800
Wire Wire Line
	3850 1600 3850 1800
Wire Wire Line
	3750 1600 3850 1600
Wire Wire Line
	3950 1500 3950 2750
Wire Wire Line
	3750 1500 3950 1500
Wire Wire Line
	4250 1400 4450 1400
Wire Wire Line
	4250 1200 4250 1400
Wire Wire Line
	4150 1300 4150 1800
Wire Wire Line
	3750 1200 4250 1200
Wire Wire Line
	3750 1300 4150 1300
Wire Wire Line
	4050 1400 4050 2350
Wire Wire Line
	3750 1400 4050 1400
Wire Wire Line
	4850 1400 5300 1400
Wire Wire Line
	4850 2350 5150 2350
Connection ~ 4400 1400
Connection ~ 4900 1400
Connection ~ 4400 2350
Connection ~ 4900 2350
Wire Wire Line
	4050 2350 4450 2350
Connection ~ 5550 2350
Connection ~ 6050 2350
Wire Wire Line
	5600 2350 5550 2350
Wire Wire Line
	8850 2300 8950 2300
Wire Wire Line
	7700 2300 7700 2100
Wire Wire Line
	7700 2300 7800 2300
Connection ~ 8450 2300
Connection ~ 8150 2300
Wire Wire Line
	8100 2300 8550 2300
Wire Wire Line
	7150 2600 7950 2600
Wire Wire Line
	8350 2600 9300 2600
Wire Wire Line
	9300 2600 9300 1600
Wire Wire Line
	10050 1200 10550 1200
Connection ~ 9800 2350
Connection ~ 10050 2000
Wire Wire Line
	10050 1500 10050 2050
Wire Wire Line
	9100 1800 8800 1800
Connection ~ 9400 1900
Wire Wire Line
	9550 2350 9550 2450
Connection ~ 9550 2350
Wire Wire Line
	9400 2350 10050 2350
Wire Wire Line
	9400 1400 9400 2350
Wire Wire Line
	9800 1100 10150 1100
Wire Wire Line
	9800 1200 9800 1100
Wire Wire Line
	9100 1100 9550 1100
Wire Wire Line
	9550 1100 9550 1200
Wire Wire Line
	9550 1500 9550 2050
Connection ~ 9800 1700
Wire Wire Line
	9800 1500 9800 2050
Wire Wire Line
	8800 2000 10050 2000
Wire Wire Line
	8800 1900 9400 1900
Wire Wire Line
	8800 1700 9800 1700
Wire Wire Line
	9300 1600 8800 1600
Wire Wire Line
	8800 1500 9550 1500
Wire Wire Line
	8800 1400 9400 1400
$Comp
L Conn_01x01 J?
U 1 1 5AE863A3
P 3500 2150
F 0 "J?" H 3500 2250 50  0000 C CNN
F 1 "Conn_01x01" H 3500 2050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 3500 2150 50  0001 C CNN
F 3 "" H 3500 2150 50  0001 C CNN
	1    3500 2150
	-1   0    0    1   
$EndComp
Text Label 900  1200 0    60   ~ 0
RFM_INT
$Comp
L +3.3V #PWR?
U 1 1 5AE8639B
P 1850 900
F 0 "#PWR?" H 1850 750 50  0001 C CNN
F 1 "+3.3V" H 1850 1040 50  0000 C CNN
F 2 "" H 1850 900 50  0001 C CNN
F 3 "" H 1850 900 50  0001 C CNN
	1    1850 900 
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5AE8639A
P 1350 900
F 0 "#PWR?" H 1350 750 50  0001 C CNN
F 1 "+5V" H 1350 1040 50  0000 C CNN
F 2 "" H 1350 900 50  0001 C CNN
F 3 "" H 1350 900 50  0001 C CNN
	1    1350 900 
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5AE86399
P 1350 1050
F 0 "R?" V 1430 1050 50  0000 C CNN
F 1 "10k" V 1350 1050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1280 1050 50  0001 C CNN
F 3 "" H 1350 1050 50  0001 C CNN
	1    1350 1050
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 5AE86398
P 1850 1050
F 0 "R?" V 1930 1050 50  0000 C CNN
F 1 "10k" V 1850 1050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1780 1050 50  0001 C CNN
F 3 "" H 1850 1050 50  0001 C CNN
	1    1850 1050
	-1   0    0    1   
$EndComp
$Comp
L BSS138 Q?
U 1 1 5AE86397
P 1600 1100
F 0 "Q?" H 1800 1175 50  0000 L CNN
F 1 "BSS138" H 1800 1100 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 1800 1025 50  0001 L CIN
F 3 "" H 1600 1100 50  0001 L CNN
	1    1600 1100
	0    -1   1    0   
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 5AE86396
P 2750 1800
F 0 "#PWR?" H 2750 1650 50  0001 C CNN
F 1 "+3.3V" H 2750 1940 50  0000 C CNN
F 2 "" H 2750 1800 50  0001 C CNN
F 3 "" H 2750 1800 50  0001 C CNN
	1    2750 1800
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5AE86395
P 3850 1800
F 0 "#PWR?" H 3850 1550 50  0001 C CNN
F 1 "GND" H 3850 1650 50  0000 C CNN
F 2 "" H 3850 1800 50  0001 C CNN
F 3 "" H 3850 1800 50  0001 C CNN
	1    3850 1800
	1    0    0    -1  
$EndComp
Text Label 4950 1400 0    60   ~ 0
RFM_SS
$Comp
L +3.3V #PWR?
U 1 1 5AE86394
P 4400 1100
F 0 "#PWR?" H 4400 950 50  0001 C CNN
F 1 "+3.3V" H 4400 1240 50  0000 C CNN
F 2 "" H 4400 1100 50  0001 C CNN
F 3 "" H 4400 1100 50  0001 C CNN
	1    4400 1100
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5AE86392
P 4400 1250
F 0 "R?" V 4480 1250 50  0000 C CNN
F 1 "10k" V 4400 1250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4330 1250 50  0001 C CNN
F 3 "" H 4400 1250 50  0001 C CNN
	1    4400 1250
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 5AE86391
P 4900 1250
F 0 "R?" V 4980 1250 50  0000 C CNN
F 1 "10k" V 4900 1250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4830 1250 50  0001 C CNN
F 3 "" H 4900 1250 50  0001 C CNN
	1    4900 1250
	-1   0    0    1   
$EndComp
$Comp
L BSS138 Q?
U 1 1 5AE86390
P 4650 1300
F 0 "Q?" H 4850 1375 50  0000 L CNN
F 1 "BSS138" H 4850 1300 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4850 1225 50  0001 L CIN
F 3 "" H 4650 1300 50  0001 L CNN
	1    4650 1300
	0    1    1    0   
$EndComp
Text Label 6100 2350 0    60   ~ 0
SCK
$Comp
L +3.3V #PWR?
U 1 1 5AE8638F
P 4400 2050
F 0 "#PWR?" H 4400 1900 50  0001 C CNN
F 1 "+3.3V" H 4400 2190 50  0000 C CNN
F 2 "" H 4400 2050 50  0001 C CNN
F 3 "" H 4400 2050 50  0001 C CNN
	1    4400 2050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5AE8638E
P 4900 2050
F 0 "#PWR?" H 4900 1900 50  0001 C CNN
F 1 "+5V" H 4900 2190 50  0000 C CNN
F 2 "" H 4900 2050 50  0001 C CNN
F 3 "" H 4900 2050 50  0001 C CNN
	1    4900 2050
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5AE8638D
P 4400 2200
F 0 "R?" V 4480 2200 50  0000 C CNN
F 1 "10k" V 4400 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4330 2200 50  0001 C CNN
F 3 "" H 4400 2200 50  0001 C CNN
	1    4400 2200
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 5AE8638C
P 4900 2200
F 0 "R?" V 4980 2200 50  0000 C CNN
F 1 "10k" V 4900 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4830 2200 50  0001 C CNN
F 3 "" H 4900 2200 50  0001 C CNN
	1    4900 2200
	-1   0    0    1   
$EndComp
$Comp
L BSS138 Q?
U 1 1 5AE8638B
P 4650 2250
F 0 "Q?" H 4850 2325 50  0000 L CNN
F 1 "BSS138" H 4850 2250 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4850 2175 50  0001 L CIN
F 3 "" H 4650 2250 50  0001 L CNN
	1    4650 2250
	0    1    1    0   
$EndComp
Text Label 6100 1400 0    60   ~ 0
MOSI
Text Label 4950 2350 0    60   ~ 0
MISO
$Comp
L +3.3V #PWR?
U 1 1 5AE86385
P 5550 2050
F 0 "#PWR?" H 5550 1900 50  0001 C CNN
F 1 "+3.3V" H 5550 2190 50  0000 C CNN
F 2 "" H 5550 2050 50  0001 C CNN
F 3 "" H 5550 2050 50  0001 C CNN
	1    5550 2050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5AE86384
P 6050 2050
F 0 "#PWR?" H 6050 1900 50  0001 C CNN
F 1 "+5V" H 6050 2190 50  0000 C CNN
F 2 "" H 6050 2050 50  0001 C CNN
F 3 "" H 6050 2050 50  0001 C CNN
	1    6050 2050
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5AE86383
P 5550 2200
F 0 "R?" V 5630 2200 50  0000 C CNN
F 1 "10k" V 5550 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5480 2200 50  0001 C CNN
F 3 "" H 5550 2200 50  0001 C CNN
	1    5550 2200
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 5AE86382
P 6050 2200
F 0 "R?" V 6130 2200 50  0000 C CNN
F 1 "10k" V 6050 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5980 2200 50  0001 C CNN
F 3 "" H 6050 2200 50  0001 C CNN
	1    6050 2200
	-1   0    0    1   
$EndComp
$Comp
L BSS138 Q?
U 1 1 5AE86381
P 5800 2250
F 0 "Q?" H 6000 2325 50  0000 L CNN
F 1 "BSS138" H 6000 2250 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 6000 2175 50  0001 L CIN
F 3 "" H 5800 2250 50  0001 L CNN
	1    5800 2250
	0    1    1    0   
$EndComp
$Comp
L RFM69HW IC?
U 1 1 5AE86380
P 3250 1450
F 0 "IC?" H 3000 1950 60  0000 C CNN
F 1 "RFM69HW" H 3350 950 60  0000 C CNN
F 2 "RFM69HW:XCVR_RFM95W-868S2" H 3250 1450 60  0001 C CNN
F 3 "" H 3250 1450 60  0001 C CNN
	1    3250 1450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5AE8637F
P 8950 2300
F 0 "#PWR?" H 8950 2050 50  0001 C CNN
F 1 "GND" H 8950 2150 50  0000 C CNN
F 2 "" H 8950 2300 50  0001 C CNN
F 3 "" H 8950 2300 50  0001 C CNN
	1    8950 2300
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5AE8637E
P 7700 2100
F 0 "#PWR?" H 7700 1950 50  0001 C CNN
F 1 "+5V" H 7700 2240 50  0000 C CNN
F 2 "" H 7700 2100 50  0001 C CNN
F 3 "" H 7700 2100 50  0001 C CNN
	1    7700 2100
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5AE8637D
P 7700 2450
F 0 "R?" V 7780 2450 50  0000 C CNN
F 1 "10k" V 7700 2450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7630 2450 50  0001 C CNN
F 3 "" H 7700 2450 50  0001 C CNN
	1    7700 2450
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 5AE8637C
P 8450 2450
F 0 "R?" V 8530 2450 50  0000 C CNN
F 1 "10k" V 8450 2450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8380 2450 50  0001 C CNN
F 3 "" H 8450 2450 50  0001 C CNN
	1    8450 2450
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 5AE8637B
P 8700 2300
F 0 "R?" V 8780 2300 50  0000 C CNN
F 1 "2k8" V 8700 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8630 2300 50  0001 C CNN
F 3 "" H 8700 2300 50  0001 C CNN
	1    8700 2300
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5AE8637A
P 7950 2300
F 0 "R?" V 8030 2300 50  0000 C CNN
F 1 "2k2" V 7950 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7880 2300 50  0001 C CNN
F 3 "" H 7950 2300 50  0001 C CNN
	1    7950 2300
	0    -1   -1   0   
$EndComp
$Comp
L BSS138 Q?
U 1 1 5AE86379
P 8150 2500
F 0 "Q?" H 8350 2575 50  0000 L CNN
F 1 "BSS138" H 8350 2500 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 8350 2425 50  0001 L CIN
F 3 "" H 8150 2500 50  0001 L CNN
	1    8150 2500
	0    -1   1    0   
$EndComp
Text Label 10050 1200 0    60   ~ 0
SLEEP-GSM
$Comp
L R R?
U 1 1 5AE86378
P 10050 1350
F 0 "R?" V 10130 1350 50  0000 C CNN
F 1 "2k2" V 10050 1350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9980 1350 50  0001 C CNN
F 3 "" H 10050 1350 50  0001 C CNN
	1    10050 1350
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5AE86377
P 10050 2200
F 0 "R?" V 10130 2200 50  0000 C CNN
F 1 "2k8" V 10050 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9980 2200 50  0001 C CNN
F 3 "" H 10050 2200 50  0001 C CNN
	1    10050 2200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5AE86376
P 9100 1800
F 0 "#PWR?" H 9100 1650 50  0001 C CNN
F 1 "+5V" H 9100 1940 50  0000 C CNN
F 2 "" H 9100 1800 50  0001 C CNN
F 3 "" H 9100 1800 50  0001 C CNN
	1    9100 1800
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5AE86375
P 9550 2450
F 0 "#PWR?" H 9550 2200 50  0001 C CNN
F 1 "GND" H 9550 2300 50  0000 C CNN
F 2 "" H 9550 2450 50  0001 C CNN
F 3 "" H 9550 2450 50  0001 C CNN
	1    9550 2450
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5AE86374
P 9800 2200
F 0 "R?" V 9880 2200 50  0000 C CNN
F 1 "2k8" V 9800 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9730 2200 50  0001 C CNN
F 3 "" H 9800 2200 50  0001 C CNN
	1    9800 2200
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5AE86373
P 9800 1350
F 0 "R?" V 9880 1350 50  0000 C CNN
F 1 "2k2" V 9800 1350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9730 1350 50  0001 C CNN
F 3 "" H 9800 1350 50  0001 C CNN
	1    9800 1350
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5AE86372
P 9550 2200
F 0 "R?" V 9630 2200 50  0000 C CNN
F 1 "2k8" V 9550 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9480 2200 50  0001 C CNN
F 3 "" H 9550 2200 50  0001 C CNN
	1    9550 2200
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5AE86371
P 9550 1350
F 0 "R?" V 9630 1350 50  0000 C CNN
F 1 "2k2" V 9550 1350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9480 1350 50  0001 C CNN
F 3 "" H 9550 1350 50  0001 C CNN
	1    9550 1350
	1    0    0    -1  
$EndComp
Text Label 9800 1100 0    60   ~ 0
PWRKEY
Text Label 7150 2600 0    60   ~ 0
TXD-GSM
Text Label 9100 1100 0    60   ~ 0
RXD-GSM
$Comp
L Conn_01x07 J?
U 1 1 5AE86370
P 8600 1700
F 0 "J?" H 8600 2100 50  0000 C CNN
F 1 "Conn_01x07" H 8600 1300 50  0000 C CNN
F 2 "CanSat:MOLEX_PicoBlade_7" H 8600 1700 50  0001 C CNN
F 3 "" H 8600 1700 50  0001 C CNN
	1    8600 1700
	-1   0    0    1   
$EndComp
$Comp
L Conn_02x11_Counter_Clockwise J?
U 1 1 5AE89A10
P 2300 3950
F 0 "J?" H 2350 4550 50  0000 C CNN
F 1 "Center_connector" H 2350 3350 50  0000 C CNN
F 2 "" H 2300 3950 50  0001 C CNN
F 3 "" H 2300 3950 50  0001 C CNN
	1    2300 3950
	1    0    0    -1  
$EndComp
Text Label 2600 3450 0    60   ~ 0
FC_PWM_1
Text Label 2600 3550 0    60   ~ 0
FC_PWM_2
Text Label 2600 3650 0    60   ~ 0
FC_PWM_3
Text Label 2600 3750 0    60   ~ 0
FC_PWM_4
Text Label 2600 3850 0    60   ~ 0
FC_PWM_5
Text Label 2600 3950 0    60   ~ 0
FC_PWM_6
Text Label 2600 4050 0    60   ~ 0
FC_PWM_7
Text Label 2600 4150 0    60   ~ 0
FC_PWM_8
$Comp
L +5V #PWR?
U 1 1 5AE89A11
P 2000 3350
F 0 "#PWR?" H 2000 3200 50  0001 C CNN
F 1 "+5V" H 2000 3490 50  0000 C CNN
F 2 "" H 2000 3350 50  0001 C CNN
F 3 "" H 2000 3350 50  0001 C CNN
	1    2000 3350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5AE89A13
P 1500 3750
F 0 "#PWR?" H 1500 3500 50  0001 C CNN
F 1 "GND" H 1500 3600 50  0000 C CNN
F 2 "" H 1500 3750 50  0001 C CNN
F 3 "" H 1500 3750 50  0001 C CNN
	1    1500 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 3450 3000 3450
Wire Wire Line
	2600 3550 3000 3550
Wire Wire Line
	2600 3650 3000 3650
Wire Wire Line
	2600 3750 3000 3750
Wire Wire Line
	2600 3850 3000 3850
Wire Wire Line
	2600 3950 3000 3950
Wire Wire Line
	2600 4050 3000 4050
Wire Wire Line
	2600 4150 3000 4150
Wire Wire Line
	2600 4250 3000 4250
Wire Wire Line
	2600 4350 3000 4350
Wire Wire Line
	2600 4450 3000 4450
Wire Wire Line
	1500 3650 2100 3650
Wire Wire Line
	1700 3750 2100 3750
Wire Wire Line
	1700 3850 2100 3850
Wire Wire Line
	1700 3950 2100 3950
Wire Wire Line
	1700 4050 2100 4050
Wire Wire Line
	1700 4150 2100 4150
Wire Wire Line
	1700 4250 2100 4250
Wire Wire Line
	1700 4350 2100 4350
Wire Wire Line
	1700 4450 2100 4450
Wire Wire Line
	1500 3750 1500 3650
Wire Wire Line
	1800 3350 1800 3550
Wire Wire Line
	1800 3550 2100 3550
Wire Wire Line
	2000 3350 2000 3450
Wire Wire Line
	2000 3450 2100 3450
Text Label 2700 4250 0    60   ~ 0
RFM_INT
Text Label 2700 4350 0    60   ~ 0
RFM_SS
Text Label 2850 4450 0    60   ~ 0
MOSI
Text Label 1700 4450 0    60   ~ 0
MISO
Text Label 1700 4250 0    60   ~ 0
GSM_RX
Text Label 1700 4150 0    60   ~ 0
GSM_TX
Text Label 1700 4050 0    60   ~ 0
GSM_KEY
Text Label 1700 4350 0    60   ~ 0
SCK
Text Label 1700 3950 0    60   ~ 0
GSM_SLP
Text Label 1700 3850 0    60   ~ 0
FC_EN
Text Label 1700 3750 0    60   ~ 0
CAM_EN
$Comp
L +3.3V #PWR?
U 1 1 5AE8A0D2
P 1800 3350
F 0 "#PWR?" H 1800 3200 50  0001 C CNN
F 1 "+3.3V" H 1800 3490 50  0000 C CNN
F 2 "" H 1800 3350 50  0001 C CNN
F 3 "" H 1800 3350 50  0001 C CNN
	1    1800 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1800 5550 1800
Wire Wire Line
	3950 2750 5550 2750
Wire Wire Line
	5550 2750 5550 2350
Wire Wire Line
	6000 2350 6250 2350
$Comp
L +5V #PWR?
U 1 1 5AE86393
P 4900 1100
F 0 "#PWR?" H 4900 950 50  0001 C CNN
F 1 "+5V" H 4900 1240 50  0000 C CNN
F 2 "" H 4900 1100 50  0001 C CNN
F 3 "" H 4900 1100 50  0001 C CNN
	1    4900 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 1800 5550 1400
$Comp
L R R?
U 1 1 5AE86387
P 6050 1250
F 0 "R?" V 6130 1250 50  0000 C CNN
F 1 "10k" V 6050 1250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5980 1250 50  0001 C CNN
F 3 "" H 6050 1250 50  0001 C CNN
	1    6050 1250
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 5AE86388
P 5550 1250
F 0 "R?" V 5630 1250 50  0000 C CNN
F 1 "10k" V 5550 1250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5480 1250 50  0001 C CNN
F 3 "" H 5550 1250 50  0001 C CNN
	1    5550 1250
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5AE86389
P 6050 1100
F 0 "#PWR?" H 6050 950 50  0001 C CNN
F 1 "+5V" H 6050 1240 50  0000 C CNN
F 2 "" H 6050 1100 50  0001 C CNN
F 3 "" H 6050 1100 50  0001 C CNN
	1    6050 1100
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 5AE8638A
P 5550 1100
F 0 "#PWR?" H 5550 950 50  0001 C CNN
F 1 "+3.3V" H 5550 1240 50  0000 C CNN
F 2 "" H 5550 1100 50  0001 C CNN
F 3 "" H 5550 1100 50  0001 C CNN
	1    5550 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 1400 5600 1400
Connection ~ 6050 1400
Connection ~ 5550 1400
Wire Wire Line
	6000 1400 6300 1400
$Comp
L BSS138 Q?
U 1 1 5AE86386
P 5800 1300
F 0 "Q?" H 6000 1375 50  0000 L CNN
F 1 "BSS138" H 6000 1300 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 6000 1225 50  0001 L CIN
F 3 "" H 5800 1300 50  0001 L CNN
	1    5800 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 1100 4400 1100
Wire Wire Line
	4400 2050 4650 2050
Wire Wire Line
	5550 2050 5800 2050
Wire Wire Line
	5550 1100 5800 1100
Connection ~ 5550 1100
Connection ~ 4400 1100
Connection ~ 4400 2050
Connection ~ 5550 2050
$Comp
L Conn_01x04 J?
U 1 1 5AE8D4C7
P 3850 3600
F 0 "J?" H 3850 3800 50  0000 C CNN
F 1 "Conn_01x04" H 3850 3300 50  0000 C CNN
F 2 "" H 3850 3600 50  0001 C CNN
F 3 "" H 3850 3600 50  0001 C CNN
	1    3850 3600
	-1   0    0    1   
$EndComp
Text Label 4050 3400 0    60   ~ 0
FC_PWM_1
Text Label 4050 3500 0    60   ~ 0
FC_PWM_2
Text Label 4050 3600 0    60   ~ 0
FC_PWM_3
Text Label 4050 3700 0    60   ~ 0
FC_PWM_4
Wire Wire Line
	4050 3400 4450 3400
Wire Wire Line
	4050 3500 4450 3500
Wire Wire Line
	4050 3600 4450 3600
Wire Wire Line
	4050 3700 4450 3700
$Comp
L Conn_01x04 J?
U 1 1 5AE8D779
P 3850 4350
F 0 "J?" H 3850 4550 50  0000 C CNN
F 1 "Conn_01x04" H 3850 4050 50  0000 C CNN
F 2 "" H 3850 4350 50  0001 C CNN
F 3 "" H 3850 4350 50  0001 C CNN
	1    3850 4350
	-1   0    0    1   
$EndComp
Text Label 4050 4150 0    60   ~ 0
FC_PWM_5
Text Label 4050 4250 0    60   ~ 0
FC_PWM_6
Text Label 4050 4350 0    60   ~ 0
FC_PWM_7
Text Label 4050 4450 0    60   ~ 0
FC_PWM_8
Wire Wire Line
	4050 4150 4450 4150
Wire Wire Line
	4050 4250 4450 4250
Wire Wire Line
	4050 4350 4450 4350
Wire Wire Line
	4050 4450 4450 4450
$EndSCHEMATC