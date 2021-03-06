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
LIBS:battery-cache
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
L Conn_01x02 J2
U 1 1 5B066E32
P 6250 3350
F 0 "J2" H 6250 3450 50  0000 C CNN
F 1 "Battery_connector" H 6250 3150 50  0000 C CNN
F 2 "CanSat:battery" H 6250 3350 50  0001 C CNN
F 3 "" H 6250 3350 50  0001 C CNN
	1    6250 3350
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR01
U 1 1 5B066F04
P 5850 3250
F 0 "#PWR01" H 5850 3100 50  0001 C CNN
F 1 "+BATT" H 5850 3390 50  0000 C CNN
F 2 "" H 5850 3250 50  0001 C CNN
F 3 "" H 5850 3250 50  0001 C CNN
	1    5850 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3250 5850 3350
Wire Wire Line
	5850 3350 6050 3350
$Comp
L GND #PWR02
U 1 1 5B066F72
P 5850 3550
F 0 "#PWR02" H 5850 3300 50  0001 C CNN
F 1 "GND" H 5850 3400 50  0000 C CNN
F 2 "" H 5850 3550 50  0001 C CNN
F 3 "" H 5850 3550 50  0001 C CNN
	1    5850 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3450 5850 3450
Wire Wire Line
	5850 3450 5850 3550
$Comp
L Conn_01x02 J1
U 1 1 5B06776B
P 6250 2650
F 0 "J1" H 6250 2750 50  0000 C CNN
F 1 "Main_connector" H 6250 2450 50  0000 C CNN
F 2 "CanSat:TX30_vertical" H 6250 2650 50  0001 C CNN
F 3 "" H 6250 2650 50  0001 C CNN
	1    6250 2650
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR03
U 1 1 5B067771
P 5850 2550
F 0 "#PWR03" H 5850 2400 50  0001 C CNN
F 1 "+BATT" H 5850 2690 50  0000 C CNN
F 2 "" H 5850 2550 50  0001 C CNN
F 3 "" H 5850 2550 50  0001 C CNN
	1    5850 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 2550 5850 2650
Wire Wire Line
	5850 2650 6050 2650
$Comp
L GND #PWR04
U 1 1 5B067779
P 5850 2850
F 0 "#PWR04" H 5850 2600 50  0001 C CNN
F 1 "GND" H 5850 2700 50  0000 C CNN
F 2 "" H 5850 2850 50  0001 C CNN
F 3 "" H 5850 2850 50  0001 C CNN
	1    5850 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2750 5850 2750
Wire Wire Line
	5850 2750 5850 2850
$EndSCHEMATC
