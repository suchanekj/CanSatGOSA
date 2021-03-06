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
LIBS:analog_devices
LIBS:cansat
LIBS:LSM303AGRTR
LIBS:MAX660
LIBS:MPL3115A2
LIBS:Relay
LIBS:arm-cache
LIBS:battery-cache
LIBS:bottom-cache
LIBS:cansat-cache
LIBS:cansat-rescue
LIBS:center-cache
LIBS:main-cache
LIBS:main-rescue
LIBS:middle-cache
LIBS:top-cache
LIBS:top-rescue
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
L VL53L0X IC1
U 1 1 5B0C3B2F
P 4200 4600
F 0 "IC1" H 3750 5050 60  0000 C CNN
F 1 "VL53L0X" H 4500 4150 60  0000 C CNN
F 2 "VL53L0X:XDCR_VL53L0CXV0DH%2f1" H 4200 4600 60  0001 C CNN
F 3 "" H 4200 4600 60  0001 C CNN
	1    4200 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5B0C3B32
P 5000 5000
F 0 "#PWR01" H 5000 4750 50  0001 C CNN
F 1 "GND" H 5000 4850 50  0000 C CNN
F 2 "" H 5000 5000 50  0001 C CNN
F 3 "" H 5000 5000 50  0001 C CNN
	1    5000 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 4600 5500 4600
Wire Wire Line
	4900 4700 5000 4700
Connection ~ 5000 4700
Wire Wire Line
	4900 4800 5000 4800
Connection ~ 5000 4800
Wire Wire Line
	4900 4900 5000 4900
Connection ~ 5000 4900
Wire Wire Line
	4900 4500 5000 4500
Connection ~ 5000 4600
$Comp
L C C1
U 1 1 5B0C3B33
P 5150 4450
F 0 "C1" H 5175 4550 50  0000 L CNN
F 1 "100nF" H 5175 4350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5188 4300 50  0001 C CNN
F 3 "" H 5150 4450 50  0001 C CNN
	1    5150 4450
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5B0C3B34
P 5500 4450
F 0 "C2" H 5525 4550 50  0000 L CNN
F 1 "4.7uF" H 5525 4350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5538 4300 50  0001 C CNN
F 3 "" H 5500 4450 50  0001 C CNN
	1    5500 4450
	1    0    0    -1  
$EndComp
Connection ~ 5150 4600
Wire Wire Line
	4900 4300 5500 4300
Connection ~ 5150 4300
Wire Wire Line
	5000 4400 4900 4400
Wire Wire Line
	5000 4100 5000 4400
Connection ~ 5000 4300
Wire Wire Line
	3500 4600 3150 4600
Wire Wire Line
	3500 4500 3150 4500
Text Label 3150 4500 0    60   ~ 0
SDA
Text Label 3150 4600 0    60   ~ 0
SCL
$Comp
L +3.3V #PWR02
U 1 1 5B0C3B35
P 5000 4100
F 0 "#PWR02" H 5000 3950 50  0001 C CNN
F 1 "+3.3V" H 5000 4240 50  0000 C CNN
F 2 "" H 5000 4100 50  0001 C CNN
F 3 "" H 5000 4100 50  0001 C CNN
	1    5000 4100
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04 J1
U 1 1 5B0C6421
P 4000 3300
F 0 "J1" H 4000 3500 50  0000 C CNN
F 1 "CENTER_CONN" H 4000 3000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 4000 3300 50  0001 C CNN
F 3 "" H 4000 3300 50  0001 C CNN
	1    4000 3300
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR03
U 1 1 5B0C6422
P 4300 3500
F 0 "#PWR03" H 4300 3250 50  0001 C CNN
F 1 "GND" H 4300 3350 50  0000 C CNN
F 2 "" H 4300 3500 50  0001 C CNN
F 3 "" H 4300 3500 50  0001 C CNN
	1    4300 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3200 4450 3200
Text Label 4450 3200 2    60   ~ 0
SCL
Wire Wire Line
	4300 3500 4300 3400
Wire Wire Line
	4300 3400 4200 3400
Wire Wire Line
	4200 3100 4300 3100
Wire Wire Line
	4300 3100 4300 3000
$Comp
L +3V3 #PWR04
U 1 1 5B0C6423
P 4300 3000
F 0 "#PWR04" H 4300 2850 50  0001 C CNN
F 1 "+3V3" H 4300 3140 50  0000 C CNN
F 2 "" H 4300 3000 50  0001 C CNN
F 3 "" H 4300 3000 50  0001 C CNN
	1    4300 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3300 4450 3300
Text Label 4450 3300 2    60   ~ 0
SDA
Wire Wire Line
	3500 4300 3400 4300
Wire Wire Line
	3400 4300 3400 4200
$Comp
L +3.3V #PWR05
U 1 1 5B0C661F
P 3400 4200
F 0 "#PWR05" H 3400 4050 50  0001 C CNN
F 1 "+3.3V" H 3400 4340 50  0000 C CNN
F 2 "" H 3400 4200 50  0001 C CNN
F 3 "" H 3400 4200 50  0001 C CNN
	1    3400 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4500 5000 5000
$EndSCHEMATC
