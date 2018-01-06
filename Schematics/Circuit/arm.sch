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
LIBS:cansat-cache
LIBS:cansat
LIBS:arm-cache
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
L VL53L0X IC?
U 1 1 5A51D9B7
P 6400 3000
F 0 "IC?" H 5950 3450 60  0000 C CNN
F 1 "VL53L0X" H 6700 2550 60  0000 C CNN
F 2 "" H 6400 3000 60  0001 C CNN
F 3 "" H 6400 3000 60  0001 C CNN
	1    6400 3000
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5A51DA01
P 6700 4100
F 0 "D?" H 6700 4200 50  0000 C CNN
F 1 "LED" H 6700 4000 50  0000 C CNN
F 2 "" H 6700 4100 50  0001 C CNN
F 3 "" H 6700 4100 50  0001 C CNN
	1    6700 4100
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 5A51E094
P 6200 4100
F 0 "R?" V 6280 4100 50  0000 C CNN
F 1 "150" V 6200 4100 50  0000 C CNN
F 2 "" V 6130 4100 50  0001 C CNN
F 3 "" H 6200 4100 50  0001 C CNN
	1    6200 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	6350 4100 6550 4100
Wire Wire Line
	7200 4100 6850 4100
Wire Wire Line
	6050 4100 5650 4100
Text Label 5650 4100 0    60   ~ 0
LED
$Comp
L GND #PWR?
U 1 1 5A51E11C
P 7200 4100
F 0 "#PWR?" H 7200 3850 50  0001 C CNN
F 1 "GND" H 7200 3950 50  0000 C CNN
F 2 "" H 7200 4100 50  0001 C CNN
F 3 "" H 7200 4100 50  0001 C CNN
	1    7200 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7100 3000 7700 3000
Wire Wire Line
	7200 2900 7200 4100
Wire Wire Line
	7100 3100 7200 3100
Connection ~ 7200 3100
Wire Wire Line
	7100 3200 7200 3200
Connection ~ 7200 3200
Wire Wire Line
	7100 3300 7200 3300
Connection ~ 7200 3300
Connection ~ 7200 4100
Wire Wire Line
	7100 2900 7200 2900
Connection ~ 7200 3000
$Comp
L C C?
U 1 1 5A51E2B0
P 7350 2850
F 0 "C?" H 7375 2950 50  0000 L CNN
F 1 "100nF" H 7375 2750 50  0000 L CNN
F 2 "" H 7388 2700 50  0001 C CNN
F 3 "" H 7350 2850 50  0001 C CNN
	1    7350 2850
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A51E305
P 7700 2850
F 0 "C?" H 7725 2950 50  0000 L CNN
F 1 "4.7uF" H 7725 2750 50  0000 L CNN
F 2 "" H 7738 2700 50  0001 C CNN
F 3 "" H 7700 2850 50  0001 C CNN
	1    7700 2850
	1    0    0    -1  
$EndComp
Connection ~ 7350 3000
Wire Wire Line
	7100 2700 7700 2700
Connection ~ 7350 2700
Wire Wire Line
	7200 2800 7100 2800
Wire Wire Line
	7200 2500 7200 2800
Connection ~ 7200 2700
Wire Wire Line
	5700 3000 5350 3000
Wire Wire Line
	5700 2900 5350 2900
Wire Wire Line
	5700 2800 5350 2800
Wire Wire Line
	5700 2700 5350 2700
Text Label 5350 2700 0    60   ~ 0
XSHUT
Text Label 5350 2800 0    60   ~ 0
INT
Text Label 5350 2900 0    60   ~ 0
SDA
Text Label 5350 3000 0    60   ~ 0
SCL
$Comp
L +3.3V #PWR?
U 1 1 5A51E5A5
P 7200 2500
F 0 "#PWR?" H 7200 2350 50  0001 C CNN
F 1 "+3.3V" H 7200 2640 50  0000 C CNN
F 2 "" H 7200 2500 50  0001 C CNN
F 3 "" H 7200 2500 50  0001 C CNN
	1    7200 2500
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x07 J?
U 1 1 5A51E5E2
P 6600 1300
F 0 "J?" H 6600 1700 50  0000 C CNN
F 1 "Conn_01x07" H 6600 900 50  0000 C CNN
F 2 "" H 6600 1300 50  0001 C CNN
F 3 "" H 6600 1300 50  0001 C CNN
	1    6600 1300
	1    0    0    -1  
$EndComp
Text Label 6050 1000 0    60   ~ 0
XSHUT
Text Label 6050 1100 0    60   ~ 0
INT
Text Label 6050 1200 0    60   ~ 0
SDA
Text Label 6050 1300 0    60   ~ 0
SCL
Text Label 6050 1400 0    60   ~ 0
LED
$Comp
L +3.3V #PWR?
U 1 1 5A51E6B2
P 6100 1500
F 0 "#PWR?" H 6100 1350 50  0001 C CNN
F 1 "+3.3V" H 6100 1640 50  0000 C CNN
F 2 "" H 6100 1500 50  0001 C CNN
F 3 "" H 6100 1500 50  0001 C CNN
	1    6100 1500
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5A51E6D5
P 6250 1600
F 0 "#PWR?" H 6250 1350 50  0001 C CNN
F 1 "GND" H 6250 1450 50  0000 C CNN
F 2 "" H 6250 1600 50  0001 C CNN
F 3 "" H 6250 1600 50  0001 C CNN
	1    6250 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	6250 1600 6400 1600
Wire Wire Line
	6400 1500 6100 1500
Wire Wire Line
	6050 1400 6400 1400
Wire Wire Line
	6400 1300 6050 1300
Wire Wire Line
	6050 1200 6400 1200
Wire Wire Line
	6400 1100 6050 1100
Wire Wire Line
	6050 1000 6400 1000
$EndSCHEMATC
