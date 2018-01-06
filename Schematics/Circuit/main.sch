EESchema Schematic File Version 2
LIBS:main-rescue
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
L CRYSTAL CSTECE1
U 1 1 5A4CD86D
P 3700 2100
F 0 "CSTECE1" H 3700 2250 60  0000 C CNN
F 1 "16MHZ" H 3700 1950 60  0000 C CNN
F 2 "~" H 3700 2100 60  0000 C CNN
F 3 "~" H 3700 2100 60  0000 C CNN
	1    3700 2100
	0    -1   -1   0   
$EndComp
$Comp
L C-RESCUE-main C7
U 1 1 5A4CD86E
P 3300 2400
F 0 "C7" H 3300 2500 40  0000 L CNN
F 1 "20 pF" H 3306 2315 40  0000 L CNN
F 2 "~" H 3338 2250 30  0000 C CNN
F 3 "~" H 3300 2400 60  0000 C CNN
	1    3300 2400
	0    -1   -1   0   
$EndComp
$Comp
L C-RESCUE-main C6
U 1 1 5A4CD86F
P 3300 1800
F 0 "C6" H 3300 1900 40  0000 L CNN
F 1 "20 pF" H 3306 1715 40  0000 L CNN
F 2 "~" H 3338 1650 30  0000 C CNN
F 3 "~" H 3300 1800 60  0000 C CNN
	1    3300 1800
	0    -1   -1   0   
$EndComp
$Comp
L R-RESCUE-main R4
U 1 1 5A4CD870
P 3950 2100
F 0 "R4" V 4030 2100 40  0000 C CNN
F 1 "1M" V 3957 2101 40  0000 C CNN
F 2 "~" V 3880 2100 30  0000 C CNN
F 3 "~" H 3950 2100 30  0000 C CNN
	1    3950 2100
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-main #PWR01
U 1 1 5A4CD871
P 2850 2100
F 0 "#PWR01" H 2850 2100 30  0001 C CNN
F 1 "GND" H 2850 2030 30  0001 C CNN
F 2 "" H 2850 2100 60  0000 C CNN
F 3 "" H 2850 2100 60  0000 C CNN
	1    2850 2100
	0    1    1    0   
$EndComp
$Comp
L NCP1117ST50T3G IC2
U 1 1 5A4CD872
P 3400 1050
F 0 "IC2" H 3400 1300 40  0000 C CNN
F 1 "NCP1117ST50T3G" H 3400 1250 40  0000 C CNN
F 2 "" H 3400 1050 60  0000 C CNN
F 3 "" H 3400 1050 60  0000 C CNN
	1    3400 1050
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR02
U 1 1 5A4CD873
P 3000 600
F 0 "#PWR02" H 3000 550 20  0001 C CNN
F 1 "+12V" H 3000 700 30  0000 C CNN
F 2 "" H 3000 600 60  0000 C CNN
F 3 "" H 3000 600 60  0000 C CNN
	1    3000 600 
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR03
U 1 1 5A4CD874
P 3800 600
F 0 "#PWR03" H 3800 690 20  0001 C CNN
F 1 "+5V" H 3800 690 30  0000 C CNN
F 2 "" H 3800 600 60  0000 C CNN
F 3 "" H 3800 600 60  0000 C CNN
	1    3800 600 
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-main #PWR04
U 1 1 5A4CD875
P 3400 1550
F 0 "#PWR04" H 3400 1550 30  0001 C CNN
F 1 "GND" H 3400 1480 30  0001 C CNN
F 2 "" H 3400 1550 60  0000 C CNN
F 3 "" H 3400 1550 60  0000 C CNN
	1    3400 1550
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-main C5
U 1 1 5A4CD876
P 3000 1200
F 0 "C5" H 3000 1300 40  0000 L CNN
F 1 "47 uF" H 3006 1115 40  0000 L CNN
F 2 "~" H 3038 1050 30  0000 C CNN
F 3 "~" H 3000 1200 60  0000 C CNN
	1    3000 1200
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-main C8
U 1 1 5A4CD877
P 3800 1200
F 0 "C8" H 3800 1300 40  0000 L CNN
F 1 "47 uF" H 3806 1115 40  0000 L CNN
F 2 "~" H 3838 1050 30  0000 C CNN
F 3 "~" H 3800 1200 60  0000 C CNN
	1    3800 1200
	1    0    0    -1  
$EndComp
$Comp
L R-RESCUE-main R1
U 1 1 5A4CD878
P 1150 2100
F 0 "R1" V 1230 2100 40  0000 C CNN
F 1 "10k" V 1157 2101 40  0000 C CNN
F 2 "~" V 1080 2100 30  0000 C CNN
F 3 "~" H 1150 2100 30  0000 C CNN
	1    1150 2100
	1    0    0    -1  
$EndComp
$Comp
L DIODE D1
U 1 1 5A4CD879
P 1550 2100
F 0 "D1" H 1550 2200 40  0000 C CNN
F 1 "CD1206-S01575" H 1550 2000 40  0000 C CNN
F 2 "~" H 1550 2100 60  0000 C CNN
F 3 "~" H 1550 2100 60  0000 C CNN
	1    1550 2100
	0    -1   -1   0   
$EndComp
$Comp
L C-RESCUE-main C2
U 1 1 5A4CD87A
P 1150 2650
F 0 "C2" H 1150 2750 40  0000 L CNN
F 1 "22 pF" H 1156 2565 40  0000 L CNN
F 2 "~" H 1188 2500 30  0000 C CNN
F 3 "~" H 1150 2650 60  0000 C CNN
	1    1150 2650
	1    0    0    -1  
$EndComp
Text Label 600  2400 0    60   ~ 0
RST
$Comp
L +5V #PWR05
U 1 1 5A4CD87B
P 1150 1850
F 0 "#PWR05" H 1150 1940 20  0001 C CNN
F 1 "+5V" H 1150 1940 30  0000 C CNN
F 2 "" H 1150 1850 60  0000 C CNN
F 3 "" H 1150 1850 60  0000 C CNN
	1    1150 1850
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-main #PWR06
U 1 1 5A4CD87C
P 1150 2850
F 0 "#PWR06" H 1150 2850 30  0001 C CNN
F 1 "GND" H 1150 2780 30  0001 C CNN
F 2 "" H 1150 2850 60  0000 C CNN
F 3 "" H 1150 2850 60  0000 C CNN
	1    1150 2850
	1    0    0    -1  
$EndComp
Text Label 7100 5400 0    60   ~ 0
TX
Text Label 7100 5300 0    60   ~ 0
RX
Text Label 7050 4500 0    60   ~ 0
SCL
Text Label 7050 4400 0    60   ~ 0
SDA
$Comp
L R-RESCUE-main R2
U 1 1 5A4CD87D
P 1400 3250
F 0 "R2" V 1480 3250 40  0000 C CNN
F 1 "2k" V 1407 3251 40  0000 C CNN
F 2 "~" V 1330 3250 30  0000 C CNN
F 3 "~" H 1400 3250 30  0000 C CNN
	1    1400 3250
	0    1    1    0   
$EndComp
$Comp
L R-RESCUE-main R3
U 1 1 5A4CD87E
P 1400 3450
F 0 "R3" V 1480 3450 40  0000 C CNN
F 1 "2k" V 1407 3451 40  0000 C CNN
F 2 "~" V 1330 3450 30  0000 C CNN
F 3 "~" H 1400 3450 30  0000 C CNN
	1    1400 3450
	0    1    1    0   
$EndComp
Text Label 900  3250 0    60   ~ 0
SCL
Text Label 900  3450 0    60   ~ 0
SDA
$Comp
L +3.3V-RESCUE-main #PWR07
U 1 1 5A4CD87F
P 1750 3350
F 0 "#PWR07" H 1750 3310 30  0001 C CNN
F 1 "+3.3V" H 1750 3460 30  0000 C CNN
F 2 "" H 1750 3350 60  0000 C CNN
F 3 "" H 1750 3350 60  0000 C CNN
	1    1750 3350
	0    1    1    0   
$EndComp
$Comp
L NCP1117ST50T3G IC1
U 1 1 5A4CD880
P 1450 1050
F 0 "IC1" H 1450 1300 40  0000 C CNN
F 1 "NCP1117ST33T3G" H 1450 1250 40  0000 C CNN
F 2 "" H 1450 1050 60  0000 C CNN
F 3 "" H 1450 1050 60  0000 C CNN
	1    1450 1050
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-main C1
U 1 1 5A4CD881
P 1050 1200
F 0 "C1" H 1050 1300 40  0000 L CNN
F 1 "47 uF" H 1056 1115 40  0000 L CNN
F 2 "~" H 1088 1050 30  0000 C CNN
F 3 "~" H 1050 1200 60  0000 C CNN
	1    1050 1200
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-main C3
U 1 1 5A4CD882
P 1850 1200
F 0 "C3" H 1850 1300 40  0000 L CNN
F 1 "47 uF" H 1856 1115 40  0000 L CNN
F 2 "~" H 1888 1050 30  0000 C CNN
F 3 "~" H 1850 1200 60  0000 C CNN
	1    1850 1200
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-main #PWR08
U 1 1 5A4CD883
P 1450 1500
F 0 "#PWR08" H 1450 1500 30  0001 C CNN
F 1 "GND" H 1450 1430 30  0001 C CNN
F 2 "" H 1450 1500 60  0000 C CNN
F 3 "" H 1450 1500 60  0000 C CNN
	1    1450 1500
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR09
U 1 1 5A4CD884
P 1050 600
F 0 "#PWR09" H 1050 550 20  0001 C CNN
F 1 "+12V" H 1050 700 30  0000 C CNN
F 2 "" H 1050 600 60  0000 C CNN
F 3 "" H 1050 600 60  0000 C CNN
	1    1050 600 
	1    0    0    -1  
$EndComp
$Comp
L +3.3V-RESCUE-main #PWR010
U 1 1 5A4CD885
P 1850 600
F 0 "#PWR010" H 1850 560 30  0001 C CNN
F 1 "+3.3V" H 1850 710 30  0000 C CNN
F 2 "" H 1850 600 60  0000 C CNN
F 3 "" H 1850 600 60  0000 C CNN
	1    1850 600 
	1    0    0    -1  
$EndComp
Text Label 4150 2300 0    60   ~ 0
XTAL2
Text Label 4150 2000 0    60   ~ 0
XTAL1
$Comp
L C-RESCUE-main C10
U 1 1 5A4CD891
P 4950 1200
F 0 "C10" H 4950 1300 40  0000 L CNN
F 1 "100 nF" H 4956 1115 40  0000 L CNN
F 2 "~" H 4988 1050 30  0000 C CNN
F 3 "~" H 4950 1200 60  0000 C CNN
	1    4950 1200
	-1   0    0    1   
$EndComp
$Comp
L C-RESCUE-main C11
U 1 1 5A4CD892
P 5250 1200
F 0 "C11" H 5250 1300 40  0000 L CNN
F 1 "100 nF" H 5256 1115 40  0000 L CNN
F 2 "~" H 5288 1050 30  0000 C CNN
F 3 "~" H 5250 1200 60  0000 C CNN
	1    5250 1200
	-1   0    0    1   
$EndComp
$Comp
L C-RESCUE-main C12
U 1 1 5A4CD893
P 5550 1200
F 0 "C12" H 5550 1300 40  0000 L CNN
F 1 "100 nF" H 5556 1115 40  0000 L CNN
F 2 "~" H 5588 1050 30  0000 C CNN
F 3 "~" H 5550 1200 60  0000 C CNN
	1    5550 1200
	-1   0    0    1   
$EndComp
$Comp
L C-RESCUE-main C13
U 1 1 5A4CD894
P 5850 1200
F 0 "C13" H 5850 1300 40  0000 L CNN
F 1 "100 nF" H 5856 1115 40  0000 L CNN
F 2 "~" H 5888 1050 30  0000 C CNN
F 3 "~" H 5850 1200 60  0000 C CNN
	1    5850 1200
	-1   0    0    1   
$EndComp
$Comp
L C-RESCUE-main C4
U 1 1 5A4CD895
P 2100 1200
F 0 "C4" H 2100 1300 40  0000 L CNN
F 1 "100 nF" H 2106 1115 40  0000 L CNN
F 2 "~" H 2138 1050 30  0000 C CNN
F 3 "~" H 2100 1200 60  0000 C CNN
	1    2100 1200
	1    0    0    -1  
$EndComp
$Comp
L C-RESCUE-main C9
U 1 1 5A4CD896
P 4050 1200
F 0 "C9" H 4050 1300 40  0000 L CNN
F 1 "100 nF" H 4056 1115 40  0000 L CNN
F 2 "~" H 4088 1050 30  0000 C CNN
F 3 "~" H 4050 1200 60  0000 C CNN
	1    4050 1200
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA2560-A IC3
U 1 1 5A4CD897
P 5700 4300
F 0 "IC3" H 4550 7100 40  0000 L BNN
F 1 "ATMEGA2560-A" H 6400 1450 40  0000 L BNN
F 2 "TQFP100" H 5700 4300 30  0000 C CIN
F 3 "" H 5700 4300 60  0000 C CNN
	1    5700 4300
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-main #PWR017
U 1 1 5A4CD898
P 5850 950
F 0 "#PWR017" H 5850 950 30  0001 C CNN
F 1 "GND" H 5850 880 30  0001 C CNN
F 2 "" H 5850 950 60  0000 C CNN
F 3 "" H 5850 950 60  0000 C CNN
	1    5850 950 
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR018
U 1 1 5A4CD899
P 6150 1250
F 0 "#PWR018" H 6150 1340 20  0001 C CNN
F 1 "+5V" H 6150 1340 30  0000 C CNN
F 2 "" H 6150 1250 60  0000 C CNN
F 3 "" H 6150 1250 60  0000 C CNN
	1    6150 1250
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-main #PWR019
U 1 1 5A4CD89A
P 5700 7400
F 0 "#PWR019" H 5700 7400 30  0001 C CNN
F 1 "GND" H 5700 7330 30  0001 C CNN
F 2 "" H 5700 7400 60  0000 C CNN
F 3 "" H 5700 7400 60  0000 C CNN
	1    5700 7400
	1    0    0    -1  
$EndComp
Text Label 4150 1700 0    60   ~ 0
RST
$Comp
L CONN_4 P19
U 1 1 5A4CD89C
P 10450 2750
F 0 "P19" V 10400 2750 50  0000 C CNN
F 1 "CONN_O2" V 10500 2750 50  0000 C CNN
F 2 "" H 10450 2750 60  0000 C CNN
F 3 "" H 10450 2750 60  0000 C CNN
	1    10450 2750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR020
U 1 1 5A4CD89D
P 10000 2700
F 0 "#PWR020" H 10000 2790 20  0001 C CNN
F 1 "+5V" H 10000 2790 30  0000 C CNN
F 2 "" H 10000 2700 60  0000 C CNN
F 3 "" H 10000 2700 60  0000 C CNN
	1    10000 2700
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-main #PWR021
U 1 1 5A4CD89E
P 10000 2600
F 0 "#PWR021" H 10000 2600 30  0001 C CNN
F 1 "GND" H 10000 2530 30  0001 C CNN
F 2 "" H 10000 2600 60  0000 C CNN
F 3 "" H 10000 2600 60  0000 C CNN
	1    10000 2600
	0    1    1    0   
$EndComp
Text Label 9900 2900 0    60   ~ 0
O2
Text Label 7050 3500 0    60   ~ 0
O2
$Comp
L CONN_3X2 P18
U 1 1 5A4CD89F
P 8900 2800
F 0 "P18" H 8900 3050 50  0000 C CNN
F 1 "CONN_3X2" V 8900 2850 40  0000 C CNN
F 2 "" H 8900 2800 60  0000 C CNN
F 3 "" H 8900 2800 60  0000 C CNN
	1    8900 2800
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-main #PWR022
U 1 1 5A4CD8A0
P 8200 2850
F 0 "#PWR022" H 8200 2850 30  0001 C CNN
F 1 "GND" H 8200 2780 30  0001 C CNN
F 2 "" H 8200 2850 60  0000 C CNN
F 3 "" H 8200 2850 60  0000 C CNN
	1    8200 2850
	0    1    1    0   
$EndComp
$Comp
L +3.3V-RESCUE-main #PWR023
U 1 1 5A4CD8A1
P 9550 2650
F 0 "#PWR023" H 9550 2610 30  0001 C CNN
F 1 "+3.3V" H 9550 2760 30  0000 C CNN
F 2 "" H 9550 2650 60  0000 C CNN
F 3 "" H 9550 2650 60  0000 C CNN
	1    9550 2650
	0    1    1    0   
$EndComp
Text Label 9500 2850 0    60   ~ 0
SDA
Text Label 8150 2750 0    60   ~ 0
SCL
Text Label 8150 2650 0    60   ~ 0
CO2
Text Label 7050 3600 0    60   ~ 0
CO2
$Comp
L HESOP1 K1
U 1 1 5A4CD8A2
P 1750 4100
F 0 "K1" H 1600 4300 60  0000 C CNN
F 1 "HESOP1" H 1800 3900 60  0000 C CNN
F 2 "" H 1750 4100 60  0000 C CNN
F 3 "" H 1750 4100 60  0000 C CNN
	1    1750 4100
	1    0    0    -1  
$EndComp
$Comp
L HESOP1 K2
U 1 1 5A4CD8A3
P 1750 4900
F 0 "K2" H 1600 5100 60  0000 C CNN
F 1 "HESOP1" H 1800 4700 60  0000 C CNN
F 2 "" H 1750 4900 60  0000 C CNN
F 3 "" H 1750 4900 60  0000 C CNN
	1    1750 4900
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-main #PWR024
U 1 1 5A4CD8A4
P 850 4100
F 0 "#PWR024" H 850 4100 30  0001 C CNN
F 1 "GND" H 850 4030 30  0001 C CNN
F 2 "" H 850 4100 60  0000 C CNN
F 3 "" H 850 4100 60  0000 C CNN
	1    850  4100
	0    1    1    0   
$EndComp
$Comp
L GND-RESCUE-main #PWR025
U 1 1 5A4CD8A5
P 850 4900
F 0 "#PWR025" H 850 4900 30  0001 C CNN
F 1 "GND" H 850 4830 30  0001 C CNN
F 2 "" H 850 4900 60  0000 C CNN
F 3 "" H 850 4900 60  0000 C CNN
	1    850  4900
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR026
U 1 1 5A4CD8A6
P 2650 4100
F 0 "#PWR026" H 2650 4190 20  0001 C CNN
F 1 "+5V" H 2650 4190 30  0000 C CNN
F 2 "" H 2650 4100 60  0000 C CNN
F 3 "" H 2650 4100 60  0000 C CNN
	1    2650 4100
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR027
U 1 1 5A4CD8A7
P 2650 4900
F 0 "#PWR027" H 2650 4990 20  0001 C CNN
F 1 "+5V" H 2650 4990 30  0000 C CNN
F 2 "" H 2650 4900 60  0000 C CNN
F 3 "" H 2650 4900 60  0000 C CNN
	1    2650 4900
	0    1    1    0   
$EndComp
Text Label 800  4000 0    60   ~ 0
CAM_TRIG
Text Label 800  4800 0    60   ~ 0
FLY_TRIG
Text Label 2350 4800 0    60   ~ 0
FLY_PWR
Text Label 2350 4000 0    60   ~ 0
CAM_PWR
$Comp
L CONN_9 P17
U 1 1 5A4CD8BD
P 7850 3600
F 0 "P17" V 7800 3600 60  0000 C CNN
F 1 "CONN_9" V 7900 3600 60  0000 C CNN
F 2 "" H 7850 3600 60  0000 C CNN
F 3 "" H 7850 3600 60  0000 C CNN
	1    7850 3600
	-1   0    0    1   
$EndComp
$Comp
L GND-RESCUE-main #PWR028
U 1 1 5A4CD8BE
P 8550 4000
F 0 "#PWR028" H 8550 4000 30  0001 C CNN
F 1 "GND" H 8550 3930 30  0001 C CNN
F 2 "" H 8550 4000 60  0000 C CNN
F 3 "" H 8550 4000 60  0000 C CNN
	1    8550 4000
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V-RESCUE-main #PWR029
U 1 1 5A4CD8BF
P 8550 3900
F 0 "#PWR029" H 8550 3860 30  0001 C CNN
F 1 "+3.3V" H 8550 4010 30  0000 C CNN
F 2 "" H 8550 3900 60  0000 C CNN
F 3 "" H 8550 3900 60  0000 C CNN
	1    8550 3900
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR030
U 1 1 5A4CD8C0
P 8500 3800
F 0 "#PWR030" H 8500 3890 20  0001 C CNN
F 1 "+5V" H 8500 3890 30  0000 C CNN
F 2 "" H 8500 3800 60  0000 C CNN
F 3 "" H 8500 3800 60  0000 C CNN
	1    8500 3800
	0    1    1    0   
$EndComp
Text Label 8250 3200 0    60   ~ 0
LED-TOP
Text Label 8350 3300 0    60   ~ 0
RX
Text Label 8350 3400 0    60   ~ 0
TX
Text Label 8300 3500 0    60   ~ 0
SDA
Text Label 8300 3600 0    60   ~ 0
SCL
Text Label 8300 3700 0    60   ~ 0
RST
Text Label 7050 3700 0    60   ~ 0
CAM_TRIG
Text Label 7050 3800 0    60   ~ 0
FLY_TRIG
Text Label 7050 3900 0    60   ~ 0
LED
Text Label 7050 4000 0    60   ~ 0
FC_IN
Text Label 7050 4100 0    60   ~ 0
FC_OUT
Wire Wire Line
	3500 1800 4100 1800
Wire Wire Line
	4100 1800 4100 2000
Wire Wire Line
	4100 2000 4400 2000
Connection ~ 3700 1800
Wire Wire Line
	4400 2300 4100 2300
Wire Wire Line
	4100 2300 4100 2400
Wire Wire Line
	4100 2400 3500 2400
Connection ~ 3700 2400
Wire Wire Line
	3100 1800 3100 2400
Wire Wire Line
	2850 2100 3100 2100
Connection ~ 3100 2100
Wire Wire Line
	3950 2350 3950 2400
Connection ~ 3950 2400
Wire Wire Line
	3950 1850 3950 1800
Connection ~ 3950 1800
Connection ~ 3800 1000
Wire Wire Line
	3000 1000 3000 600 
Connection ~ 3000 1000
Wire Wire Line
	3800 1000 3800 600 
Connection ~ 3400 1400
Wire Wire Line
	3400 1300 3400 1550
Wire Wire Line
	1550 2400 1550 2300
Wire Wire Line
	600  2400 1550 2400
Connection ~ 1150 2400
Wire Wire Line
	1150 2350 1150 2450
Wire Wire Line
	1150 1850 1550 1850
Wire Wire Line
	1550 1850 1550 1900
Wire Wire Line
	7000 5300 7200 5300
Wire Wire Line
	7000 5400 7200 5400
Wire Wire Line
	7000 4400 7200 4400
Wire Wire Line
	7000 4500 7200 4500
Wire Wire Line
	1650 3250 1650 3450
Wire Wire Line
	1650 3350 1750 3350
Connection ~ 1650 3350
Wire Wire Line
	900  3250 1150 3250
Wire Wire Line
	1150 3450 900  3450
Wire Wire Line
	1850 600  1850 1000
Wire Wire Line
	1050 1000 1050 600 
Wire Wire Line
	1450 1300 1450 1500
Connection ~ 1450 1400
Wire Wire Line
	3800 1000 4050 1000
Connection ~ 3800 1400
Wire Wire Line
	1850 1000 2100 1000
Connection ~ 1850 1400
Connection ~ 1850 1000
Connection ~ 1050 1000
Wire Wire Line
	4950 1400 6150 1400
Connection ~ 5250 1400
Connection ~ 5350 1400
Connection ~ 5450 1400
Connection ~ 5550 1400
Wire Wire Line
	4950 1000 5850 1000
Connection ~ 5250 1000
Connection ~ 5550 1000
Wire Wire Line
	5850 1000 5850 950 
Connection ~ 5850 1000
Wire Wire Line
	6150 1400 6150 1250
Connection ~ 5850 1400
Wire Wire Line
	5550 7200 5850 7200
Connection ~ 5650 7200
Connection ~ 5750 7200
Wire Wire Line
	5700 7350 5700 7200
Connection ~ 5700 7200
Wire Wire Line
	4150 1700 4400 1700
Wire Wire Line
	3000 1400 4050 1400
Wire Wire Line
	1050 1400 2100 1400
Wire Wire Line
	10100 2600 10000 2600
Wire Wire Line
	10000 2700 10100 2700
Wire Wire Line
	10100 2900 9900 2900
Wire Wire Line
	8150 2650 8500 2650
Wire Wire Line
	8500 2750 8150 2750
Wire Wire Line
	9550 2650 9300 2650
Wire Wire Line
	8200 2850 8500 2850
Wire Wire Line
	9300 2850 9650 2850
Wire Wire Line
	7000 3600 7200 3600
Wire Wire Line
	1200 4000 800  4000
Wire Wire Line
	1200 4800 800  4800
Wire Wire Line
	2650 4100 2300 4100
Wire Wire Line
	850  4100 1200 4100
Wire Wire Line
	850  4900 1200 4900
Wire Wire Line
	2650 4900 2300 4900
Wire Wire Line
	2300 4800 2750 4800
Wire Wire Line
	2300 4000 2750 4000
Wire Wire Line
	8200 3200 8650 3200
Wire Wire Line
	8200 3300 8450 3300
Wire Wire Line
	8200 3400 8450 3400
Wire Wire Line
	8200 3500 8450 3500
Wire Wire Line
	8200 3600 8450 3600
Wire Wire Line
	8200 3700 8450 3700
Wire Wire Line
	8200 3800 8500 3800
Wire Wire Line
	8200 3900 8550 3900
Wire Wire Line
	8200 4000 8550 4000
Wire Wire Line
	7000 3700 7450 3700
Wire Wire Line
	7000 3800 7450 3800
Wire Wire Line
	7000 3900 7200 3900
Wire Wire Line
	7000 4000 7300 4000
Wire Wire Line
	7000 4100 7350 4100
Wire Wire Line
	7000 3500 7150 3500
$Comp
L CONN_2 P5
U 1 1 5A4CEAF6
P 2050 5500
F 0 "P5" V 2000 5500 40  0000 C CNN
F 1 "CONN_2" V 2100 5500 40  0000 C CNN
F 2 "" H 2050 5500 60  0000 C CNN
F 3 "" H 2050 5500 60  0000 C CNN
	1    2050 5500
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P6
U 1 1 5A4CEB03
P 2050 5900
F 0 "P6" V 2000 5900 40  0000 C CNN
F 1 "CONN_2" V 2100 5900 40  0000 C CNN
F 2 "" H 2050 5900 60  0000 C CNN
F 3 "" H 2050 5900 60  0000 C CNN
	1    2050 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 5600 1700 5800
$Comp
L +12V #PWR031
U 1 1 5A4CEB87
P 1600 6000
F 0 "#PWR031" H 1600 5950 20  0001 C CNN
F 1 "+12V" H 1600 6100 30  0000 C CNN
F 2 "" H 1600 6000 60  0000 C CNN
F 3 "" H 1600 6000 60  0000 C CNN
	1    1600 6000
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-main #PWR032
U 1 1 5A4CEB96
P 1600 5400
F 0 "#PWR032" H 1600 5400 30  0001 C CNN
F 1 "GND" H 1600 5330 30  0001 C CNN
F 2 "" H 1600 5400 60  0000 C CNN
F 3 "" H 1600 5400 60  0000 C CNN
	1    1600 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 5400 1600 5400
Wire Wire Line
	1600 6000 1700 6000
$Comp
L CONN_2 P1
U 1 1 5A4CECBB
P 1250 5500
F 0 "P1" V 1200 5500 40  0000 C CNN
F 1 "CONN_2" V 1300 5500 40  0000 C CNN
F 2 "" H 1250 5500 60  0000 C CNN
F 3 "" H 1250 5500 60  0000 C CNN
	1    1250 5500
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P2
U 1 1 5A4CECC1
P 1250 5900
F 0 "P2" V 1200 5900 40  0000 C CNN
F 1 "CONN_2" V 1300 5900 40  0000 C CNN
F 2 "" H 1250 5900 60  0000 C CNN
F 3 "" H 1250 5900 60  0000 C CNN
	1    1250 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  5600 900  5800
$Comp
L +12V #PWR033
U 1 1 5A4CECC8
P 800 6000
F 0 "#PWR033" H 800 5950 20  0001 C CNN
F 1 "+12V" H 800 6100 30  0000 C CNN
F 2 "" H 800 6000 60  0000 C CNN
F 3 "" H 800 6000 60  0000 C CNN
	1    800  6000
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-main #PWR034
U 1 1 5A4CECCE
P 800 5400
F 0 "#PWR034" H 800 5400 30  0001 C CNN
F 1 "GND" H 800 5330 30  0001 C CNN
F 2 "" H 800 5400 60  0000 C CNN
F 3 "" H 800 5400 60  0000 C CNN
	1    800  5400
	0    1    1    0   
$EndComp
Wire Wire Line
	900  5400 800  5400
Wire Wire Line
	800  6000 900  6000
$Comp
L CONN_2 P7
U 1 1 5A4CECD6
P 2050 6350
F 0 "P7" V 2000 6350 40  0000 C CNN
F 1 "CONN_2" V 2100 6350 40  0000 C CNN
F 2 "" H 2050 6350 60  0000 C CNN
F 3 "" H 2050 6350 60  0000 C CNN
	1    2050 6350
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P8
U 1 1 5A4CECDC
P 2050 6750
F 0 "P8" V 2000 6750 40  0000 C CNN
F 1 "CONN_2" V 2100 6750 40  0000 C CNN
F 2 "" H 2050 6750 60  0000 C CNN
F 3 "" H 2050 6750 60  0000 C CNN
	1    2050 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 6450 1700 6650
$Comp
L +12V #PWR035
U 1 1 5A4CECE3
P 1600 6850
F 0 "#PWR035" H 1600 6800 20  0001 C CNN
F 1 "+12V" H 1600 6950 30  0000 C CNN
F 2 "" H 1600 6850 60  0000 C CNN
F 3 "" H 1600 6850 60  0000 C CNN
	1    1600 6850
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-main #PWR036
U 1 1 5A4CECE9
P 1600 6250
F 0 "#PWR036" H 1600 6250 30  0001 C CNN
F 1 "GND" H 1600 6180 30  0001 C CNN
F 2 "" H 1600 6250 60  0000 C CNN
F 3 "" H 1600 6250 60  0000 C CNN
	1    1600 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 6250 1600 6250
Wire Wire Line
	1600 6850 1700 6850
$Comp
L CONN_2 P3
U 1 1 5A4CECF1
P 1250 6350
F 0 "P3" V 1200 6350 40  0000 C CNN
F 1 "CONN_2" V 1300 6350 40  0000 C CNN
F 2 "" H 1250 6350 60  0000 C CNN
F 3 "" H 1250 6350 60  0000 C CNN
	1    1250 6350
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P4
U 1 1 5A4CECF7
P 1250 6750
F 0 "P4" V 1200 6750 40  0000 C CNN
F 1 "CONN_2" V 1300 6750 40  0000 C CNN
F 2 "" H 1250 6750 60  0000 C CNN
F 3 "" H 1250 6750 60  0000 C CNN
	1    1250 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  6450 900  6650
$Comp
L +12V #PWR037
U 1 1 5A4CECFE
P 800 6850
F 0 "#PWR037" H 800 6800 20  0001 C CNN
F 1 "+12V" H 800 6950 30  0000 C CNN
F 2 "" H 800 6850 60  0000 C CNN
F 3 "" H 800 6850 60  0000 C CNN
	1    800  6850
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-main #PWR038
U 1 1 5A4CED04
P 800 6250
F 0 "#PWR038" H 800 6250 30  0001 C CNN
F 1 "GND" H 800 6180 30  0001 C CNN
F 2 "" H 800 6250 60  0000 C CNN
F 3 "" H 800 6250 60  0000 C CNN
	1    800  6250
	0    1    1    0   
$EndComp
Wire Wire Line
	900  6250 800  6250
Wire Wire Line
	800  6850 900  6850
$Comp
L CONN_2 P13
U 1 1 5A4CED0C
P 3600 5500
F 0 "P13" V 3550 5500 40  0000 C CNN
F 1 "CONN_2" V 3650 5500 40  0000 C CNN
F 2 "" H 3600 5500 60  0000 C CNN
F 3 "" H 3600 5500 60  0000 C CNN
	1    3600 5500
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P14
U 1 1 5A4CED12
P 3600 5900
F 0 "P14" V 3550 5900 40  0000 C CNN
F 1 "CONN_2" V 3650 5900 40  0000 C CNN
F 2 "" H 3600 5900 60  0000 C CNN
F 3 "" H 3600 5900 60  0000 C CNN
	1    3600 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 5600 3250 5800
$Comp
L +12V #PWR039
U 1 1 5A4CED19
P 3150 6000
F 0 "#PWR039" H 3150 5950 20  0001 C CNN
F 1 "+12V" H 3150 6100 30  0000 C CNN
F 2 "" H 3150 6000 60  0000 C CNN
F 3 "" H 3150 6000 60  0000 C CNN
	1    3150 6000
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-main #PWR040
U 1 1 5A4CED1F
P 3150 5400
F 0 "#PWR040" H 3150 5400 30  0001 C CNN
F 1 "GND" H 3150 5330 30  0001 C CNN
F 2 "" H 3150 5400 60  0000 C CNN
F 3 "" H 3150 5400 60  0000 C CNN
	1    3150 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 5400 3150 5400
Wire Wire Line
	3150 6000 3250 6000
$Comp
L CONN_2 P9
U 1 1 5A4CED27
P 2800 5500
F 0 "P9" V 2750 5500 40  0000 C CNN
F 1 "CONN_2" V 2850 5500 40  0000 C CNN
F 2 "" H 2800 5500 60  0000 C CNN
F 3 "" H 2800 5500 60  0000 C CNN
	1    2800 5500
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P10
U 1 1 5A4CED2D
P 2800 5900
F 0 "P10" V 2750 5900 40  0000 C CNN
F 1 "CONN_2" V 2850 5900 40  0000 C CNN
F 2 "" H 2800 5900 60  0000 C CNN
F 3 "" H 2800 5900 60  0000 C CNN
	1    2800 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 5600 2450 5800
$Comp
L +12V #PWR041
U 1 1 5A4CED34
P 2350 6000
F 0 "#PWR041" H 2350 5950 20  0001 C CNN
F 1 "+12V" H 2350 6100 30  0000 C CNN
F 2 "" H 2350 6000 60  0000 C CNN
F 3 "" H 2350 6000 60  0000 C CNN
	1    2350 6000
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-main #PWR042
U 1 1 5A4CED3A
P 2350 5400
F 0 "#PWR042" H 2350 5400 30  0001 C CNN
F 1 "GND" H 2350 5330 30  0001 C CNN
F 2 "" H 2350 5400 60  0000 C CNN
F 3 "" H 2350 5400 60  0000 C CNN
	1    2350 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 5400 2350 5400
Wire Wire Line
	2350 6000 2450 6000
$Comp
L CONN_2 P15
U 1 1 5A4CED42
P 3600 6350
F 0 "P15" V 3550 6350 40  0000 C CNN
F 1 "CONN_2" V 3650 6350 40  0000 C CNN
F 2 "" H 3600 6350 60  0000 C CNN
F 3 "" H 3600 6350 60  0000 C CNN
	1    3600 6350
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P16
U 1 1 5A4CED48
P 3600 6750
F 0 "P16" V 3550 6750 40  0000 C CNN
F 1 "CONN_2" V 3650 6750 40  0000 C CNN
F 2 "" H 3600 6750 60  0000 C CNN
F 3 "" H 3600 6750 60  0000 C CNN
	1    3600 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 6450 3250 6650
$Comp
L +12V #PWR043
U 1 1 5A4CED4F
P 3150 6850
F 0 "#PWR043" H 3150 6800 20  0001 C CNN
F 1 "+12V" H 3150 6950 30  0000 C CNN
F 2 "" H 3150 6850 60  0000 C CNN
F 3 "" H 3150 6850 60  0000 C CNN
	1    3150 6850
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-main #PWR044
U 1 1 5A4CED55
P 3150 6250
F 0 "#PWR044" H 3150 6250 30  0001 C CNN
F 1 "GND" H 3150 6180 30  0001 C CNN
F 2 "" H 3150 6250 60  0000 C CNN
F 3 "" H 3150 6250 60  0000 C CNN
	1    3150 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 6250 3150 6250
Wire Wire Line
	3150 6850 3250 6850
$Comp
L CONN_2 P11
U 1 1 5A4CED5D
P 2800 6350
F 0 "P11" V 2750 6350 40  0000 C CNN
F 1 "CONN_2" V 2850 6350 40  0000 C CNN
F 2 "" H 2800 6350 60  0000 C CNN
F 3 "" H 2800 6350 60  0000 C CNN
	1    2800 6350
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P12
U 1 1 5A4CED63
P 2800 6750
F 0 "P12" V 2750 6750 40  0000 C CNN
F 1 "CONN_2" V 2850 6750 40  0000 C CNN
F 2 "" H 2800 6750 60  0000 C CNN
F 3 "" H 2800 6750 60  0000 C CNN
	1    2800 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 6450 2450 6650
$Comp
L +12V #PWR045
U 1 1 5A4CED6A
P 2350 6850
F 0 "#PWR045" H 2350 6800 20  0001 C CNN
F 1 "+12V" H 2350 6950 30  0000 C CNN
F 2 "" H 2350 6850 60  0000 C CNN
F 3 "" H 2350 6850 60  0000 C CNN
	1    2350 6850
	0    -1   -1   0   
$EndComp
$Comp
L GND-RESCUE-main #PWR046
U 1 1 5A4CED70
P 2350 6250
F 0 "#PWR046" H 2350 6250 30  0001 C CNN
F 1 "GND" H 2350 6180 30  0001 C CNN
F 2 "" H 2350 6250 60  0000 C CNN
F 3 "" H 2350 6250 60  0000 C CNN
	1    2350 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 6250 2350 6250
Wire Wire Line
	2350 6850 2450 6850
$Comp
L Conn_01x07 J1
U 1 1 5A511F37
P 9000 3700
F 0 "J1" H 9000 4100 50  0000 C CNN
F 1 "Conn_01x07" H 9000 3300 50  0000 C CNN
F 2 "" H 9000 3700 50  0001 C CNN
F 3 "" H 9000 3700 50  0001 C CNN
	1    9000 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	9200 3400 9800 3400
Wire Wire Line
	9200 3500 9950 3500
Wire Wire Line
	9200 3600 9650 3600
Wire Wire Line
	9200 3700 10200 3700
Wire Wire Line
	9200 3900 9800 3900
Wire Wire Line
	9200 4000 10450 4000
Text Label 9500 3100 0    60   ~ 0
RXD-GSM
Text Label 9250 3600 0    60   ~ 0
TXD-GSM
Text Label 10200 3100 0    60   ~ 0
PWRKEY
$Comp
L R R14
U 1 1 5A5131E3
P 9950 3350
F 0 "R14" V 10030 3350 50  0000 C CNN
F 1 "2k2" V 9950 3350 50  0000 C CNN
F 2 "" V 9880 3350 50  0001 C CNN
F 3 "" H 9950 3350 50  0001 C CNN
	1    9950 3350
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 5A51349F
P 9950 4200
F 0 "R15" V 10030 4200 50  0000 C CNN
F 1 "2k8" V 9950 4200 50  0000 C CNN
F 2 "" V 9880 4200 50  0001 C CNN
F 3 "" H 9950 4200 50  0001 C CNN
	1    9950 4200
	1    0    0    -1  
$EndComp
$Comp
L R R16
U 1 1 5A513638
P 10200 3350
F 0 "R16" V 10280 3350 50  0000 C CNN
F 1 "2k2" V 10200 3350 50  0000 C CNN
F 2 "" V 10130 3350 50  0001 C CNN
F 3 "" H 10200 3350 50  0001 C CNN
	1    10200 3350
	1    0    0    -1  
$EndComp
$Comp
L R R17
U 1 1 5A513C3C
P 10200 4200
F 0 "R17" V 10280 4200 50  0000 C CNN
F 1 "2k8" V 10200 4200 50  0000 C CNN
F 2 "" V 10130 4200 50  0001 C CNN
F 3 "" H 10200 4200 50  0001 C CNN
	1    10200 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 3500 10200 4050
Connection ~ 10200 3700
Wire Wire Line
	9950 3500 9950 4050
Wire Wire Line
	9950 3100 9950 3200
Wire Wire Line
	9500 3100 9950 3100
Wire Wire Line
	10200 3200 10200 3100
Wire Wire Line
	10200 3100 10550 3100
Wire Wire Line
	9800 3400 9800 4350
Wire Wire Line
	9800 4350 10450 4350
Connection ~ 9950 4350
$Comp
L GND #PWR047
U 1 1 5A514418
P 9950 4450
F 0 "#PWR047" H 9950 4200 50  0001 C CNN
F 1 "GND" H 9950 4300 50  0000 C CNN
F 2 "" H 9950 4450 50  0001 C CNN
F 3 "" H 9950 4450 50  0001 C CNN
	1    9950 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 4350 9950 4450
Connection ~ 9800 3900
$Comp
L +5V #PWR048
U 1 1 5A5146F6
P 9500 3800
F 0 "#PWR048" H 9500 3650 50  0001 C CNN
F 1 "+5V" H 9500 3940 50  0000 C CNN
F 2 "" H 9500 3800 50  0001 C CNN
F 3 "" H 9500 3800 50  0001 C CNN
	1    9500 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	9500 3800 9200 3800
$Comp
L R R19
U 1 1 5A516E0E
P 10450 4200
F 0 "R19" V 10530 4200 50  0000 C CNN
F 1 "2k8" V 10450 4200 50  0000 C CNN
F 2 "" V 10380 4200 50  0001 C CNN
F 3 "" H 10450 4200 50  0001 C CNN
	1    10450 4200
	1    0    0    -1  
$EndComp
$Comp
L R R18
U 1 1 5A516F85
P 10450 3350
F 0 "R18" V 10530 3350 50  0000 C CNN
F 1 "2k2" V 10450 3350 50  0000 C CNN
F 2 "" V 10380 3350 50  0001 C CNN
F 3 "" H 10450 3350 50  0001 C CNN
	1    10450 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 3500 10450 4050
Connection ~ 10450 4000
Connection ~ 10200 4350
Wire Wire Line
	10450 3200 10950 3200
Text Label 10450 3200 0    60   ~ 0
SLEEP-GSM
Text Label 7050 4700 0    60   ~ 0
RXD-GSM
Text Label 7050 4600 0    60   ~ 0
TXD-GSM
Wire Wire Line
	7000 4600 7500 4600
Wire Wire Line
	7000 4700 7500 4700
Text Label 7050 4800 0    60   ~ 0
SLEEP-GSM
Text Label 7050 4900 0    60   ~ 0
PWRKEY
Wire Wire Line
	7000 4900 7400 4900
Wire Wire Line
	7000 4800 7600 4800
$Comp
L Conn_01x07 J4
U 1 1 5A51F0C3
P 10650 5100
F 0 "J4" H 10650 5500 50  0000 C CNN
F 1 "Conn_01x07" H 10650 4700 50  0000 C CNN
F 2 "" H 10650 5100 50  0001 C CNN
F 3 "" H 10650 5100 50  0001 C CNN
	1    10650 5100
	1    0    0    -1  
$EndComp
Text Label 10100 4800 0    60   ~ 0
XSHUT2
Text Label 10100 4900 0    60   ~ 0
INT2
Text Label 10100 5000 0    60   ~ 0
SDA
Text Label 10100 5100 0    60   ~ 0
SCL
Text Label 10100 5200 0    60   ~ 0
LED2
$Comp
L +3.3V #PWR049
U 1 1 5A51F0C4
P 10150 5300
F 0 "#PWR049" H 10150 5150 50  0001 C CNN
F 1 "+3.3V" H 10150 5440 50  0000 C CNN
F 2 "" H 10150 5300 50  0001 C CNN
F 3 "" H 10150 5300 50  0001 C CNN
	1    10150 5300
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR050
U 1 1 5A51F0C5
P 10300 5400
F 0 "#PWR050" H 10300 5150 50  0001 C CNN
F 1 "GND" H 10300 5250 50  0000 C CNN
F 2 "" H 10300 5400 50  0001 C CNN
F 3 "" H 10300 5400 50  0001 C CNN
	1    10300 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	10300 5400 10450 5400
Wire Wire Line
	10450 5300 10150 5300
Wire Wire Line
	10100 5200 10450 5200
Wire Wire Line
	10450 5100 10100 5100
Wire Wire Line
	10100 5000 10450 5000
Wire Wire Line
	10000 4900 10450 4900
Wire Wire Line
	9900 4800 10450 4800
$Comp
L Conn_01x07 J2
U 1 1 5A520EAC
P 9100 5100
F 0 "J2" H 9100 5500 50  0000 C CNN
F 1 "Conn_01x07" H 9100 4700 50  0000 C CNN
F 2 "" H 9100 5100 50  0001 C CNN
F 3 "" H 9100 5100 50  0001 C CNN
	1    9100 5100
	1    0    0    -1  
$EndComp
Text Label 8550 4800 0    60   ~ 0
XSHUT1
Text Label 8550 4900 0    60   ~ 0
INT1
Text Label 8550 5000 0    60   ~ 0
SDA
Text Label 8550 5100 0    60   ~ 0
SCL
Text Label 8550 5200 0    60   ~ 0
LED1
$Comp
L +3.3V #PWR051
U 1 1 5A520EB7
P 8600 5300
F 0 "#PWR051" H 8600 5150 50  0001 C CNN
F 1 "+3.3V" H 8600 5440 50  0000 C CNN
F 2 "" H 8600 5300 50  0001 C CNN
F 3 "" H 8600 5300 50  0001 C CNN
	1    8600 5300
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR052
U 1 1 5A520EBD
P 8750 5400
F 0 "#PWR052" H 8750 5150 50  0001 C CNN
F 1 "GND" H 8750 5250 50  0000 C CNN
F 2 "" H 8750 5400 50  0001 C CNN
F 3 "" H 8750 5400 50  0001 C CNN
	1    8750 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	8750 5400 8900 5400
Wire Wire Line
	8900 5300 8600 5300
Wire Wire Line
	8550 5200 8900 5200
Wire Wire Line
	8900 5100 8550 5100
Wire Wire Line
	8550 5000 8900 5000
Wire Wire Line
	8450 4900 8900 4900
Wire Wire Line
	8350 4800 8900 4800
$Comp
L Conn_01x07 J5
U 1 1 5A520FCA
P 10650 6050
F 0 "J5" H 10650 6450 50  0000 C CNN
F 1 "Conn_01x07" H 10650 5650 50  0000 C CNN
F 2 "" H 10650 6050 50  0001 C CNN
F 3 "" H 10650 6050 50  0001 C CNN
	1    10650 6050
	1    0    0    -1  
$EndComp
Text Label 10100 5750 0    60   ~ 0
XSHUT4
Text Label 10100 5850 0    60   ~ 0
INT4
Text Label 10100 5950 0    60   ~ 0
SDA
Text Label 10100 6050 0    60   ~ 0
SCL
Text Label 10100 6150 0    60   ~ 0
LED4
$Comp
L +3.3V #PWR053
U 1 1 5A520FD5
P 10150 6250
F 0 "#PWR053" H 10150 6100 50  0001 C CNN
F 1 "+3.3V" H 10150 6390 50  0000 C CNN
F 2 "" H 10150 6250 50  0001 C CNN
F 3 "" H 10150 6250 50  0001 C CNN
	1    10150 6250
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR054
U 1 1 5A520FDB
P 10300 6350
F 0 "#PWR054" H 10300 6100 50  0001 C CNN
F 1 "GND" H 10300 6200 50  0000 C CNN
F 2 "" H 10300 6350 50  0001 C CNN
F 3 "" H 10300 6350 50  0001 C CNN
	1    10300 6350
	0    1    1    0   
$EndComp
Wire Wire Line
	10300 6350 10450 6350
Wire Wire Line
	10450 6250 10150 6250
Wire Wire Line
	10100 6150 10450 6150
Wire Wire Line
	10450 6050 10100 6050
Wire Wire Line
	10100 5950 10450 5950
Wire Wire Line
	10000 5850 10450 5850
Wire Wire Line
	9900 5750 10450 5750
$Comp
L Conn_01x07 J3
U 1 1 5A520FE8
P 9100 6050
F 0 "J3" H 9100 6450 50  0000 C CNN
F 1 "Conn_01x07" H 9100 5650 50  0000 C CNN
F 2 "" H 9100 6050 50  0001 C CNN
F 3 "" H 9100 6050 50  0001 C CNN
	1    9100 6050
	1    0    0    -1  
$EndComp
Text Label 8550 5750 0    60   ~ 0
XSHUT3
Text Label 8550 5850 0    60   ~ 0
INT3
Text Label 8550 5950 0    60   ~ 0
SDA
Text Label 8550 6050 0    60   ~ 0
SCL
Text Label 8550 6150 0    60   ~ 0
LED3
$Comp
L +3.3V #PWR055
U 1 1 5A520FF3
P 8600 6250
F 0 "#PWR055" H 8600 6100 50  0001 C CNN
F 1 "+3.3V" H 8600 6390 50  0000 C CNN
F 2 "" H 8600 6250 50  0001 C CNN
F 3 "" H 8600 6250 50  0001 C CNN
	1    8600 6250
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR056
U 1 1 5A520FF9
P 8750 6350
F 0 "#PWR056" H 8750 6100 50  0001 C CNN
F 1 "GND" H 8750 6200 50  0000 C CNN
F 2 "" H 8750 6350 50  0001 C CNN
F 3 "" H 8750 6350 50  0001 C CNN
	1    8750 6350
	0    1    1    0   
$EndComp
Wire Wire Line
	8750 6350 8900 6350
Wire Wire Line
	8900 6250 8600 6250
Wire Wire Line
	8550 6150 8900 6150
Wire Wire Line
	8900 6050 8550 6050
Wire Wire Line
	8550 5950 8900 5950
Wire Wire Line
	8450 5850 8900 5850
Wire Wire Line
	8350 5750 8900 5750
$Comp
L R R10
U 1 1 5A524DC5
P 9750 4800
F 0 "R10" V 9830 4800 50  0000 C CNN
F 1 "10k" V 9750 4800 50  0000 C CNN
F 2 "" V 9680 4800 50  0001 C CNN
F 3 "" H 9750 4800 50  0001 C CNN
	1    9750 4800
	0    1    1    0   
$EndComp
$Comp
L R R11
U 1 1 5A524F38
P 9750 5000
F 0 "R11" V 9830 5000 50  0000 C CNN
F 1 "10k" V 9750 5000 50  0000 C CNN
F 2 "" V 9680 5000 50  0001 C CNN
F 3 "" H 9750 5000 50  0001 C CNN
	1    9750 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	9900 5000 10000 5000
Wire Wire Line
	10000 5000 10000 4900
Wire Wire Line
	9600 4800 9600 5000
$Comp
L GND #PWR057
U 1 1 5A52531A
P 9600 4900
F 0 "#PWR057" H 9600 4650 50  0001 C CNN
F 1 "GND" H 9600 4750 50  0000 C CNN
F 2 "" H 9600 4900 50  0001 C CNN
F 3 "" H 9600 4900 50  0001 C CNN
	1    9600 4900
	0    1    1    0   
$EndComp
Connection ~ 9600 4900
$Comp
L R R12
U 1 1 5A52545A
P 9750 5750
F 0 "R12" V 9830 5750 50  0000 C CNN
F 1 "10k" V 9750 5750 50  0000 C CNN
F 2 "" V 9680 5750 50  0001 C CNN
F 3 "" H 9750 5750 50  0001 C CNN
	1    9750 5750
	0    1    1    0   
$EndComp
$Comp
L R R13
U 1 1 5A525460
P 9750 5950
F 0 "R13" V 9830 5950 50  0000 C CNN
F 1 "10k" V 9750 5950 50  0000 C CNN
F 2 "" V 9680 5950 50  0001 C CNN
F 3 "" H 9750 5950 50  0001 C CNN
	1    9750 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	9900 5950 10000 5950
Wire Wire Line
	10000 5950 10000 5850
Wire Wire Line
	9600 5750 9600 5950
$Comp
L GND #PWR058
U 1 1 5A525469
P 9600 5850
F 0 "#PWR058" H 9600 5600 50  0001 C CNN
F 1 "GND" H 9600 5700 50  0000 C CNN
F 2 "" H 9600 5850 50  0001 C CNN
F 3 "" H 9600 5850 50  0001 C CNN
	1    9600 5850
	0    1    1    0   
$EndComp
Connection ~ 9600 5850
$Comp
L R R5
U 1 1 5A5254F2
P 8200 4800
F 0 "R5" V 8280 4800 50  0000 C CNN
F 1 "10k" V 8200 4800 50  0000 C CNN
F 2 "" V 8130 4800 50  0001 C CNN
F 3 "" H 8200 4800 50  0001 C CNN
	1    8200 4800
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 5A5254F8
P 8200 5000
F 0 "R6" V 8280 5000 50  0000 C CNN
F 1 "10k" V 8200 5000 50  0000 C CNN
F 2 "" V 8130 5000 50  0001 C CNN
F 3 "" H 8200 5000 50  0001 C CNN
	1    8200 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	8350 5000 8450 5000
Wire Wire Line
	8450 5000 8450 4900
Wire Wire Line
	8050 4800 8050 5000
$Comp
L GND #PWR059
U 1 1 5A525501
P 8050 4900
F 0 "#PWR059" H 8050 4650 50  0001 C CNN
F 1 "GND" H 8050 4750 50  0000 C CNN
F 2 "" H 8050 4900 50  0001 C CNN
F 3 "" H 8050 4900 50  0001 C CNN
	1    8050 4900
	0    1    1    0   
$EndComp
Connection ~ 8050 4900
$Comp
L R R7
U 1 1 5A525616
P 8200 5750
F 0 "R7" V 8280 5750 50  0000 C CNN
F 1 "10k" V 8200 5750 50  0000 C CNN
F 2 "" V 8130 5750 50  0001 C CNN
F 3 "" H 8200 5750 50  0001 C CNN
	1    8200 5750
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 5A52561C
P 8200 5950
F 0 "R8" V 8280 5950 50  0000 C CNN
F 1 "10k" V 8200 5950 50  0000 C CNN
F 2 "" V 8130 5950 50  0001 C CNN
F 3 "" H 8200 5950 50  0001 C CNN
	1    8200 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	8350 5950 8450 5950
Wire Wire Line
	8450 5950 8450 5850
Wire Wire Line
	8050 5750 8050 5950
$Comp
L GND #PWR060
U 1 1 5A525625
P 8050 5850
F 0 "#PWR060" H 8050 5600 50  0001 C CNN
F 1 "GND" H 8050 5700 50  0000 C CNN
F 2 "" H 8050 5850 50  0001 C CNN
F 3 "" H 8050 5850 50  0001 C CNN
	1    8050 5850
	0    1    1    0   
$EndComp
Connection ~ 8050 5850
Wire Wire Line
	7000 5700 7200 5700
Wire Wire Line
	7000 5800 7200 5800
Wire Wire Line
	7000 5900 7200 5900
Wire Wire Line
	7000 6000 7200 6000
Text Label 7000 5700 0    60   ~ 0
INT1
Text Label 7000 5800 0    60   ~ 0
INT2
Text Label 7000 5900 0    60   ~ 0
INT3
Text Label 7000 6000 0    60   ~ 0
INT4
Wire Wire Line
	7000 6200 7550 6200
Wire Wire Line
	7000 6300 7550 6300
Wire Wire Line
	7000 6400 7550 6400
Wire Wire Line
	7000 6500 7550 6500
Text Label 7200 6200 0    60   ~ 0
XSHUT1
Text Label 7200 6300 0    60   ~ 0
XSHUT2
Text Label 7200 6400 0    60   ~ 0
XSHUT3
Text Label 7200 6500 0    60   ~ 0
XSHUT4
Wire Wire Line
	4100 6200 4400 6200
Wire Wire Line
	4400 6300 4100 6300
Wire Wire Line
	4100 6400 4400 6400
Wire Wire Line
	4100 6500 4400 6500
Text Label 4100 6200 0    60   ~ 0
LED1
Text Label 4100 6300 0    60   ~ 0
LED2
Text Label 4100 6400 0    60   ~ 0
LED3
Text Label 4100 6500 0    60   ~ 0
LED4
$EndSCHEMATC
