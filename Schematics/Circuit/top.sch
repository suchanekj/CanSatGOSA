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
L HIH9131 IC3
U 1 1 5A4CC89A
P 9900 2450
F 0 "IC3" H 9650 2700 60  0000 C CNN
F 1 "HIH9131" H 10000 2200 60  0000 C CNN
F 2 "" H 9900 2450 60  0001 C CNN
F 3 "" H 9900 2450 60  0000 C CNN
	1    9900 2450
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-top C2
U 1 1 5A4CC89B
P 8750 2400
F 0 "C2" H 8750 2500 40  0000 L CNN
F 1 "0.22 uF" H 8756 2315 40  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 8788 2250 30  0000 C CNN
F 3 "~" H 8750 2400 60  0000 C CNN
	1    8750 2400
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-top C4
U 1 1 5A4CC89C
P 9050 2400
F 0 "C4" H 9050 2500 40  0000 L CNN
F 1 "100 nF" H 9056 2315 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9088 2250 30  0000 C CNN
F 3 "~" H 9050 2400 60  0000 C CNN
	1    9050 2400
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-top #PWR01
U 1 1 5A4CC89D
P 9050 2700
F 0 "#PWR01" H 9050 2700 30  0001 C CNN
F 1 "GND" H 9050 2630 30  0001 C CNN
F 2 "" H 9050 2700 60  0000 C CNN
F 3 "" H 9050 2700 60  0000 C CNN
	1    9050 2700
	1    0    0    -1  
$EndComp
Text Label 10550 2300 0    60   ~ 0
SCL
Text Label 10550 2400 0    60   ~ 0
SDA
Text Label 9550 650  0    60   ~ 0
RST
$Comp
L GND-RESCUE-top #PWR02
U 1 1 5A4CC89E
P 9650 1150
F 0 "#PWR02" H 9650 1150 30  0001 C CNN
F 1 "GND" H 9650 1080 30  0001 C CNN
F 2 "" H 9650 1150 60  0000 C CNN
F 3 "" H 9650 1150 60  0000 C CNN
	1    9650 1150
	0    1    1    0   
$EndComp
$Comp
L CONN_6 P2
U 1 1 5A4CC89F
P 10200 900
F 0 "P2" V 10150 900 60  0000 C CNN
F 1 "USB CONN" V 10250 900 60  0000 C CNN
F 2 "" H 10200 900 60  0001 C CNN
F 3 "" H 10200 900 60  0000 C CNN
	1    10200 900 
	1    0    0    -1  
$EndComp
Text Label 9550 850  0    60   ~ 0
TX
Text Label 9550 750  0    60   ~ 0
RX
$Comp
L +5V #PWR03
U 1 1 5A4CC8A0
P 9650 950
F 0 "#PWR03" H 9650 1040 20  0001 C CNN
F 1 "+5V" H 9650 1040 30  0000 C CNN
F 2 "" H 9650 950 60  0000 C CNN
F 3 "" H 9650 950 60  0000 C CNN
	1    9650 950 
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V-RESCUE-top #PWR04
U 1 1 5A4CC8A1
P 9300 2100
F 0 "#PWR04" H 9300 2060 30  0001 C CNN
F 1 "+3.3V" H 9300 2210 30  0000 C CNN
F 2 "" H 9300 2100 60  0000 C CNN
F 3 "" H 9300 2100 60  0000 C CNN
	1    9300 2100
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-top #PWR05
U 1 1 5A4CC8A2
P 8400 6200
F 0 "#PWR05" H 8400 6200 30  0001 C CNN
F 1 "GND" H 8400 6130 30  0001 C CNN
F 2 "" H 8400 6200 60  0000 C CNN
F 3 "" H 8400 6200 60  0000 C CNN
	1    8400 6200
	0    1    1    0   
$EndComp
$Comp
L LPS22HB IC1
U 1 1 5A4CC8A3
P 9600 6200
F 0 "IC1" H 9200 6550 60  0000 C CNN
F 1 "LPS22HB" H 9900 5850 60  0000 C CNN
F 2 "" H 9600 6200 60  0001 C CNN
F 3 "" H 9600 6200 60  0000 C CNN
	1    9600 6200
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-top C5
U 1 1 5A4CC8A4
P 10550 5800
F 0 "C5" H 10550 5900 40  0000 L CNN
F 1 "100 nF" H 10556 5715 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 10588 5650 30  0000 C CNN
F 3 "~" H 10550 5800 60  0000 C CNN
	1    10550 5800
	-1   0    0    1   
$EndComp
Text Label 8600 6300 0    60   ~ 0
SDA
Text Label 8600 6100 0    60   ~ 0
SCL
$Comp
L GND-RESCUE-top #PWR06
U 1 1 5A4CC8A5
P 10800 6100
F 0 "#PWR06" H 10800 6100 30  0001 C CNN
F 1 "GND" H 10800 6030 30  0001 C CNN
F 2 "" H 10800 6100 60  0000 C CNN
F 3 "" H 10800 6100 60  0000 C CNN
	1    10800 6100
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V-RESCUE-top #PWR07
U 1 1 5A4CC8A6
P 10750 6000
F 0 "#PWR07" H 10750 6090 20  0001 C CNN
F 1 "+3.3V" H 10750 6090 30  0000 C CNN
F 2 "" H 10750 6000 60  0000 C CNN
F 3 "" H 10750 6000 60  0000 C CNN
	1    10750 6000
	0    1    1    0   
$EndComp
$Comp
L LED-RESCUE-top D1
U 1 1 5A4CC8A7
P 9800 3250
F 0 "D1" H 9800 3350 50  0000 C CNN
F 1 "LED" H 9800 3150 50  0000 C CNN
F 2 "Diodes_SMD:D_0603" H 9800 3250 60  0000 C CNN
F 3 "~" H 9800 3250 60  0000 C CNN
	1    9800 3250
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-top #PWR08
U 1 1 5A4CC8A8
P 10450 3250
F 0 "#PWR08" H 10450 3250 30  0001 C CNN
F 1 "GND" H 10450 3180 30  0001 C CNN
F 2 "" H 10450 3250 60  0000 C CNN
F 3 "" H 10450 3250 60  0000 C CNN
	1    10450 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10000 3250 10450 3250
Wire Wire Line
	8800 6100 8600 6100
Wire Wire Line
	8800 6300 8600 6300
Wire Wire Line
	10400 6000 10750 6000
Connection ~ 10550 6000
Wire Wire Line
	10400 6100 10800 6100
Wire Wire Line
	10400 6200 10550 6200
Wire Wire Line
	10550 6200 10550 6100
Connection ~ 10550 6100
Wire Wire Line
	10700 6100 10700 5600
Connection ~ 10700 6100
Wire Wire Line
	8800 6200 8400 6200
Wire Wire Line
	10700 5600 10550 5600
Wire Wire Line
	9550 750  9850 750 
Wire Wire Line
	9550 850  9850 850 
Wire Wire Line
	9650 950  9850 950 
Wire Wire Line
	9850 1150 9650 1150
Wire Wire Line
	9850 650  9550 650 
Wire Wire Line
	10500 2400 10700 2400
Wire Wire Line
	10500 2300 10700 2300
Wire Wire Line
	9050 2600 9050 2700
Connection ~ 9300 2100
Wire Wire Line
	9200 2400 9300 2400
Wire Wire Line
	9200 2200 9200 2400
Wire Wire Line
	9050 2200 9200 2200
Connection ~ 9050 2600
Wire Wire Line
	9250 2600 8750 2600
Wire Wire Line
	9250 2500 9250 2600
Wire Wire Line
	9300 2500 9250 2500
Wire Wire Line
	9300 2100 9300 2300
Wire Wire Line
	8750 2100 9300 2100
Wire Wire Line
	8750 2200 8750 2100
$Comp
L HMC5883L IC2
U 1 1 5A4CC8D6
P 9650 4550
F 0 "IC2" H 9400 5050 60  0000 C CNN
F 1 "HMC5883L" H 9700 4050 60  0000 C CNN
F 2 "" H 9650 4550 60  0001 C CNN
F 3 "" H 9650 4550 60  0000 C CNN
	1    9650 4550
	1    0    0    -1  
$EndComp
Text Label 10300 4200 0    60   ~ 0
SDA
Text Label 8850 4200 0    60   ~ 0
SCL
$Comp
L +3.3V-RESCUE-top #PWR09
U 1 1 5A4CC8D7
P 10550 4500
F 0 "#PWR09" H 10550 4460 30  0001 C CNN
F 1 "+3.3V" H 10550 4610 30  0000 C CNN
F 2 "" H 10550 4500 60  0000 C CNN
F 3 "" H 10550 4500 60  0000 C CNN
	1    10550 4500
	0    1    1    0   
$EndComp
$Comp
L C-RESCUE-top C6
U 1 1 5A4CC8D8
P 10700 4800
F 0 "C6" H 10700 4900 40  0000 L CNN
F 1 "4.7 uF" H 10706 4715 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 10738 4650 30  0000 C CNN
F 3 "~" H 10700 4800 60  0000 C CNN
	1    10700 4800
	0    1    1    0   
$EndComp
$Comp
L C-RESCUE-top C1
U 1 1 5A4CC8D9
P 8650 4500
F 0 "C1" H 8650 4600 40  0000 L CNN
F 1 "100 nF" H 8656 4415 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8688 4350 30  0000 C CNN
F 3 "~" H 8650 4500 60  0000 C CNN
	1    8650 4500
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-top C3
U 1 1 5A4CC8DA
P 8750 5100
F 0 "C3" H 8750 5200 40  0000 L CNN
F 1 "0.22 uF" H 8756 5015 40  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 8788 4950 30  0000 C CNN
F 3 "~" H 8750 5100 60  0000 C CNN
	1    8750 5100
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-top #PWR010
U 1 1 5A4CC8DB
P 10900 4600
F 0 "#PWR010" H 10900 4600 30  0001 C CNN
F 1 "GND" H 10900 4530 30  0001 C CNN
F 2 "" H 10900 4600 60  0000 C CNN
F 3 "" H 10900 4600 60  0000 C CNN
	1    10900 4600
	-1   0    0    1   
$EndComp
Wire Wire Line
	10250 4200 10450 4200
Wire Wire Line
	8850 4200 9050 4200
Wire Wire Line
	8650 4300 9050 4300
Wire Wire Line
	8900 4300 8900 5150
Wire Wire Line
	8900 4500 9050 4500
Wire Wire Line
	8900 5150 10450 5150
Wire Wire Line
	10450 5150 10450 4500
Wire Wire Line
	10250 4500 10550 4500
Connection ~ 8900 4500
Connection ~ 10450 4500
Wire Wire Line
	10250 4800 10500 4800
Wire Wire Line
	10250 4900 10550 4900
Wire Wire Line
	10900 5050 10550 5050
Wire Wire Line
	10900 4600 10900 5050
Wire Wire Line
	10900 4700 10250 4700
Connection ~ 10900 4800
Connection ~ 8900 4300
Wire Wire Line
	9050 4900 8750 4900
Connection ~ 10550 5050
Connection ~ 10900 4700
Wire Wire Line
	10250 4600 10350 4600
Wire Wire Line
	10350 4600 10350 5300
Wire Wire Line
	10350 5300 8750 5300
Wire Wire Line
	8650 4700 8650 5400
Wire Wire Line
	8650 5400 10550 5400
Wire Wire Line
	10550 5400 10550 4900
$Comp
L CONN_9 P1
U 1 1 5A4CC903
P 7000 4150
F 0 "P1" V 6950 4150 60  0000 C CNN
F 1 "CONN_9" V 7050 4150 60  0000 C CNN
F 2 "" H 7000 4150 60  0001 C CNN
F 3 "" H 7000 4150 60  0000 C CNN
	1    7000 4150
	-1   0    0    1   
$EndComp
$Comp
L GND-RESCUE-top #PWR011
U 1 1 5A4CC94F
P 7700 4550
F 0 "#PWR011" H 7700 4550 30  0001 C CNN
F 1 "GND" H 7700 4480 30  0001 C CNN
F 2 "" H 7700 4550 60  0000 C CNN
F 3 "" H 7700 4550 60  0000 C CNN
	1    7700 4550
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V-RESCUE-top #PWR012
U 1 1 5A4CC96D
P 7700 4450
F 0 "#PWR012" H 7700 4410 30  0001 C CNN
F 1 "+3.3V" H 7700 4560 30  0000 C CNN
F 2 "" H 7700 4450 60  0000 C CNN
F 3 "" H 7700 4450 60  0000 C CNN
	1    7700 4450
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR013
U 1 1 5A4CC98B
P 7650 4350
F 0 "#PWR013" H 7650 4440 20  0001 C CNN
F 1 "+5V" H 7650 4440 30  0000 C CNN
F 2 "" H 7650 4350 60  0000 C CNN
F 3 "" H 7650 4350 60  0000 C CNN
	1    7650 4350
	0    1    1    0   
$EndComp
Text Label 7450 3750 0    60   ~ 0
LED
Text Label 7500 3850 0    60   ~ 0
RX
Text Label 7500 3950 0    60   ~ 0
TX
Text Label 7450 4050 0    60   ~ 0
SDA
Text Label 7450 4150 0    60   ~ 0
SCL
Text Label 7450 4250 0    60   ~ 0
RST
Wire Wire Line
	7350 3750 7600 3750
Wire Wire Line
	7350 3850 7600 3850
Wire Wire Line
	7350 3950 7600 3950
Wire Wire Line
	7350 4050 7600 4050
Wire Wire Line
	7350 4150 7600 4150
Wire Wire Line
	7350 4250 7600 4250
Wire Wire Line
	7350 4350 7650 4350
Wire Wire Line
	7350 4450 7700 4450
Wire Wire Line
	7350 4550 7700 4550
$Comp
L R R1
U 1 1 5A51DC75
P 9200 3250
F 0 "R1" V 9280 3250 50  0000 C CNN
F 1 "150" V 9200 3250 50  0000 C CNN
F 2 "" V 9130 3250 50  0001 C CNN
F 3 "" H 9200 3250 50  0001 C CNN
	1    9200 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	9350 3250 9600 3250
Wire Wire Line
	9050 3250 8600 3250
Text Label 8600 3250 0    60   ~ 0
LED
$EndSCHEMATC