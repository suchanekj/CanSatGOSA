EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
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
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "noname.sch"
Date "4 jan 2018"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CRYSTAL CSTECE?
U 1 1 5A4CD86D
P 3700 2150
F 0 "CSTECE?" H 3700 2300 60  0000 C CNN
F 1 "16MHZ" H 3700 2000 60  0000 C CNN
F 2 "~" H 3700 2150 60  0000 C CNN
F 3 "~" H 3700 2150 60  0000 C CNN
	1    3700 2150
	0    -1   -1   0   
$EndComp
$Comp
L C C?
U 1 1 5A4CD86E
P 3300 2450
F 0 "C?" H 3300 2550 40  0000 L CNN
F 1 "22 pF" H 3306 2365 40  0000 L CNN
F 2 "~" H 3338 2300 30  0000 C CNN
F 3 "~" H 3300 2450 60  0000 C CNN
	1    3300 2450
	0    -1   -1   0   
$EndComp
$Comp
L C C?
U 1 1 5A4CD86F
P 3300 1850
F 0 "C?" H 3300 1950 40  0000 L CNN
F 1 "22 pF" H 3306 1765 40  0000 L CNN
F 2 "~" H 3338 1700 30  0000 C CNN
F 3 "~" H 3300 1850 60  0000 C CNN
	1    3300 1850
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 5A4CD870
P 3950 2150
F 0 "R?" V 4030 2150 40  0000 C CNN
F 1 "1M" V 3957 2151 40  0000 C CNN
F 2 "~" V 3880 2150 30  0000 C CNN
F 3 "~" H 3950 2150 30  0000 C CNN
	1    3950 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A4CD871
P 2850 2150
F 0 "#PWR?" H 2850 2150 30  0001 C CNN
F 1 "GND" H 2850 2080 30  0001 C CNN
F 2 "" H 2850 2150 60  0000 C CNN
F 3 "" H 2850 2150 60  0000 C CNN
	1    2850 2150
	0    1    1    0   
$EndComp
$Comp
L NCP1117ST50T3G IC?
U 1 1 5A4CD872
P 3400 1050
F 0 "IC?" H 3400 1300 40  0000 C CNN
F 1 "NCP1117ST50T3G" H 3400 1250 40  0000 C CNN
F 2 "" H 3400 1050 60  0000 C CNN
F 3 "" H 3400 1050 60  0000 C CNN
	1    3400 1050
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR?
U 1 1 5A4CD873
P 3000 600
F 0 "#PWR?" H 3000 550 20  0001 C CNN
F 1 "+12V" H 3000 700 30  0000 C CNN
F 2 "" H 3000 600 60  0000 C CNN
F 3 "" H 3000 600 60  0000 C CNN
	1    3000 600 
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5A4CD874
P 3800 600
F 0 "#PWR?" H 3800 690 20  0001 C CNN
F 1 "+5V" H 3800 690 30  0000 C CNN
F 2 "" H 3800 600 60  0000 C CNN
F 3 "" H 3800 600 60  0000 C CNN
	1    3800 600 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A4CD875
P 3400 1550
F 0 "#PWR?" H 3400 1550 30  0001 C CNN
F 1 "GND" H 3400 1480 30  0001 C CNN
F 2 "" H 3400 1550 60  0000 C CNN
F 3 "" H 3400 1550 60  0000 C CNN
	1    3400 1550
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A4CD876
P 3000 1200
F 0 "C?" H 3000 1300 40  0000 L CNN
F 1 "47 uF" H 3006 1115 40  0000 L CNN
F 2 "~" H 3038 1050 30  0000 C CNN
F 3 "~" H 3000 1200 60  0000 C CNN
	1    3000 1200
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A4CD877
P 3800 1200
F 0 "C?" H 3800 1300 40  0000 L CNN
F 1 "47 uF" H 3806 1115 40  0000 L CNN
F 2 "~" H 3838 1050 30  0000 C CNN
F 3 "~" H 3800 1200 60  0000 C CNN
	1    3800 1200
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5A4CD878
P 1150 2100
F 0 "R?" V 1230 2100 40  0000 C CNN
F 1 "10k" V 1157 2101 40  0000 C CNN
F 2 "~" V 1080 2100 30  0000 C CNN
F 3 "~" H 1150 2100 30  0000 C CNN
	1    1150 2100
	1    0    0    -1  
$EndComp
$Comp
L DIODE D?
U 1 1 5A4CD879
P 1550 2100
F 0 "D?" H 1550 2200 40  0000 C CNN
F 1 "CD1206-S01575" H 1550 2000 40  0000 C CNN
F 2 "~" H 1550 2100 60  0000 C CNN
F 3 "~" H 1550 2100 60  0000 C CNN
	1    1550 2100
	0    -1   -1   0   
$EndComp
$Comp
L C C?
U 1 1 5A4CD87A
P 1150 2650
F 0 "C?" H 1150 2750 40  0000 L CNN
F 1 "22 pF" H 1156 2565 40  0000 L CNN
F 2 "~" H 1188 2500 30  0000 C CNN
F 3 "~" H 1150 2650 60  0000 C CNN
	1    1150 2650
	1    0    0    -1  
$EndComp
Text Label 600  2400 0    60   ~ 0
RST
$Comp
L +5V #PWR?
U 1 1 5A4CD87B
P 1150 1850
F 0 "#PWR?" H 1150 1940 20  0001 C CNN
F 1 "+5V" H 1150 1940 30  0000 C CNN
F 2 "" H 1150 1850 60  0000 C CNN
F 3 "" H 1150 1850 60  0000 C CNN
	1    1150 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A4CD87C
P 1150 2850
F 0 "#PWR?" H 1150 2850 30  0001 C CNN
F 1 "GND" H 1150 2780 30  0001 C CNN
F 2 "" H 1150 2850 60  0000 C CNN
F 3 "" H 1150 2850 60  0000 C CNN
	1    1150 2850
	1    0    0    -1  
$EndComp
Text Label 7100 4750 0    60   ~ 0
TX
Text Label 7100 4650 0    60   ~ 0
RX
Text Label 7050 4550 0    60   ~ 0
SCL
Text Label 7050 4450 0    60   ~ 0
SDA
$Comp
L R R?
U 1 1 5A4CD87D
P 1400 3250
F 0 "R?" V 1480 3250 40  0000 C CNN
F 1 "4k7" V 1407 3251 40  0000 C CNN
F 2 "~" V 1330 3250 30  0000 C CNN
F 3 "~" H 1400 3250 30  0000 C CNN
	1    1400 3250
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5A4CD87E
P 1400 3450
F 0 "R?" V 1480 3450 40  0000 C CNN
F 1 "4k7" V 1407 3451 40  0000 C CNN
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
L +3.3V #PWR?
U 1 1 5A4CD87F
P 1750 3350
F 0 "#PWR?" H 1750 3310 30  0001 C CNN
F 1 "+3.3V" H 1750 3460 30  0000 C CNN
F 2 "" H 1750 3350 60  0000 C CNN
F 3 "" H 1750 3350 60  0000 C CNN
	1    1750 3350
	0    1    1    0   
$EndComp
$Comp
L NCP1117ST50T3G IC?
U 1 1 5A4CD880
P 1450 1050
F 0 "IC?" H 1450 1300 40  0000 C CNN
F 1 "NCP1117ST33T3G" H 1450 1250 40  0000 C CNN
F 2 "" H 1450 1050 60  0000 C CNN
F 3 "" H 1450 1050 60  0000 C CNN
	1    1450 1050
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A4CD881
P 1050 1200
F 0 "C?" H 1050 1300 40  0000 L CNN
F 1 "47 uF" H 1056 1115 40  0000 L CNN
F 2 "~" H 1088 1050 30  0000 C CNN
F 3 "~" H 1050 1200 60  0000 C CNN
	1    1050 1200
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A4CD882
P 1850 1200
F 0 "C?" H 1850 1300 40  0000 L CNN
F 1 "47 uF" H 1856 1115 40  0000 L CNN
F 2 "~" H 1888 1050 30  0000 C CNN
F 3 "~" H 1850 1200 60  0000 C CNN
	1    1850 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A4CD883
P 1450 1500
F 0 "#PWR?" H 1450 1500 30  0001 C CNN
F 1 "GND" H 1450 1430 30  0001 C CNN
F 2 "" H 1450 1500 60  0000 C CNN
F 3 "" H 1450 1500 60  0000 C CNN
	1    1450 1500
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR?
U 1 1 5A4CD884
P 1050 600
F 0 "#PWR?" H 1050 550 20  0001 C CNN
F 1 "+12V" H 1050 700 30  0000 C CNN
F 2 "" H 1050 600 60  0000 C CNN
F 3 "" H 1050 600 60  0000 C CNN
	1    1050 600 
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 5A4CD885
P 1850 600
F 0 "#PWR?" H 1850 560 30  0001 C CNN
F 1 "+3.3V" H 1850 710 30  0000 C CNN
F 2 "" H 1850 600 60  0000 C CNN
F 3 "" H 1850 600 60  0000 C CNN
	1    1850 600 
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A4CD886
P 10650 1100
F 0 "C?" H 10650 1200 40  0000 L CNN
F 1 "2.2 nF" H 10656 1015 40  0000 L CNN
F 2 "~" H 10688 950 30  0000 C CNN
F 3 "~" H 10650 1100 60  0000 C CNN
	1    10650 1100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A4CD887
P 10650 900
F 0 "#PWR?" H 10650 900 30  0001 C CNN
F 1 "GND" H 10650 830 30  0001 C CNN
F 2 "" H 10650 900 60  0000 C CNN
F 3 "" H 10650 900 60  0000 C CNN
	1    10650 900 
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 5A4CD888
P 10650 1550
F 0 "#PWR?" H 10650 1550 30  0001 C CNN
F 1 "GND" H 10650 1480 30  0001 C CNN
F 2 "" H 10650 1550 60  0000 C CNN
F 3 "" H 10650 1550 60  0000 C CNN
	1    10650 1550
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 5A4CD889
P 10650 2050
F 0 "#PWR?" H 10650 2010 30  0001 C CNN
F 1 "+3.3V" H 10650 2160 30  0000 C CNN
F 2 "" H 10650 2050 60  0000 C CNN
F 3 "" H 10650 2050 60  0000 C CNN
	1    10650 2050
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 5A4CD88A
P 7900 1650
F 0 "#PWR?" H 7900 1610 30  0001 C CNN
F 1 "+3.3V" H 7900 1760 30  0000 C CNN
F 2 "" H 7900 1650 60  0000 C CNN
F 3 "" H 7900 1650 60  0000 C CNN
	1    7900 1650
	0    -1   -1   0   
$EndComp
$Comp
L C C?
U 1 1 5A4CD88B
P 8150 1850
F 0 "C?" H 8150 1950 40  0000 L CNN
F 1 "0.8 uF" H 8156 1765 40  0000 L CNN
F 2 "~" H 8188 1700 30  0000 C CNN
F 3 "~" H 8150 1850 60  0000 C CNN
	1    8150 1850
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5A4CD88C
P 7850 1850
F 0 "#PWR?" H 7850 1850 30  0001 C CNN
F 1 "GND" H 7850 1780 30  0001 C CNN
F 2 "" H 7850 1850 60  0000 C CNN
F 3 "" H 7850 1850 60  0000 C CNN
	1    7850 1850
	0    1    1    0   
$EndComp
Text Label 10050 950  0    60   ~ 0
SDA
Text Label 10050 1050 0    60   ~ 0
SCL
$Comp
L GND #PWR?
U 1 1 5A4CD88D
P 7850 950
F 0 "#PWR?" H 7850 950 30  0001 C CNN
F 1 "GND" H 7850 880 30  0001 C CNN
F 2 "" H 7850 950 60  0000 C CNN
F 3 "" H 7850 950 60  0000 C CNN
	1    7850 950 
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5A4CD88E
P 10550 1800
F 0 "C?" H 10550 1900 40  0000 L CNN
F 1 "100 nF" H 10556 1715 40  0000 L CNN
F 2 "~" H 10588 1650 30  0000 C CNN
F 3 "~" H 10550 1800 60  0000 C CNN
	1    10550 1800
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5A4CD88F
P 8200 2200
F 0 "R?" V 8280 2200 40  0000 C CNN
F 1 "4k7" V 8207 2201 40  0000 C CNN
F 2 "~" V 8130 2200 30  0000 C CNN
F 3 "~" H 8200 2200 30  0000 C CNN
	1    8200 2200
	0    -1   -1   0   
$EndComp
Text Label 4150 2350 0    60   ~ 0
XTAL2
Text Label 4150 2050 0    60   ~ 0
XTAL1
$Comp
L C C?
U 1 1 5A4CD890
P 7950 1450
F 0 "C?" H 7950 1550 40  0000 L CNN
F 1 "10 nF" H 7956 1365 40  0000 L CNN
F 2 "~" H 7988 1300 30  0000 C CNN
F 3 "~" H 7950 1450 60  0000 C CNN
	1    7950 1450
	-1   0    0    1   
$EndComp
$Comp
L C C?
U 1 1 5A4CD891
P 4950 1250
F 0 "C?" H 4950 1350 40  0000 L CNN
F 1 "100 nF" H 4956 1165 40  0000 L CNN
F 2 "~" H 4988 1100 30  0000 C CNN
F 3 "~" H 4950 1250 60  0000 C CNN
	1    4950 1250
	-1   0    0    1   
$EndComp
$Comp
L C C?
U 1 1 5A4CD892
P 5250 1250
F 0 "C?" H 5250 1350 40  0000 L CNN
F 1 "100 nF" H 5256 1165 40  0000 L CNN
F 2 "~" H 5288 1100 30  0000 C CNN
F 3 "~" H 5250 1250 60  0000 C CNN
	1    5250 1250
	-1   0    0    1   
$EndComp
$Comp
L C C?
U 1 1 5A4CD893
P 5550 1250
F 0 "C?" H 5550 1350 40  0000 L CNN
F 1 "100 nF" H 5556 1165 40  0000 L CNN
F 2 "~" H 5588 1100 30  0000 C CNN
F 3 "~" H 5550 1250 60  0000 C CNN
	1    5550 1250
	-1   0    0    1   
$EndComp
$Comp
L C C?
U 1 1 5A4CD894
P 5850 1250
F 0 "C?" H 5850 1350 40  0000 L CNN
F 1 "100 nF" H 5856 1165 40  0000 L CNN
F 2 "~" H 5888 1100 30  0000 C CNN
F 3 "~" H 5850 1250 60  0000 C CNN
	1    5850 1250
	-1   0    0    1   
$EndComp
$Comp
L C C?
U 1 1 5A4CD895
P 2100 1200
F 0 "C?" H 2100 1300 40  0000 L CNN
F 1 "100 nF" H 2106 1115 40  0000 L CNN
F 2 "~" H 2138 1050 30  0000 C CNN
F 3 "~" H 2100 1200 60  0000 C CNN
	1    2100 1200
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A4CD896
P 4050 1200
F 0 "C?" H 4050 1300 40  0000 L CNN
F 1 "100 nF" H 4056 1115 40  0000 L CNN
F 2 "~" H 4088 1050 30  0000 C CNN
F 3 "~" H 4050 1200 60  0000 C CNN
	1    4050 1200
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA2560-A IC?
U 1 1 5A4CD897
P 5700 4350
F 0 "IC?" H 4550 7150 40  0000 L BNN
F 1 "ATMEGA2560-A" H 6400 1500 40  0000 L BNN
F 2 "TQFP100" H 5700 4350 30  0000 C CIN
F 3 "" H 5700 4350 60  0000 C CNN
	1    5700 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A4CD898
P 5850 1000
F 0 "#PWR?" H 5850 1000 30  0001 C CNN
F 1 "GND" H 5850 930 30  0001 C CNN
F 2 "" H 5850 1000 60  0000 C CNN
F 3 "" H 5850 1000 60  0000 C CNN
	1    5850 1000
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5A4CD899
P 6150 1300
F 0 "#PWR?" H 6150 1390 20  0001 C CNN
F 1 "+5V" H 6150 1390 30  0000 C CNN
F 2 "" H 6150 1300 60  0000 C CNN
F 3 "" H 6150 1300 60  0000 C CNN
	1    6150 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A4CD89A
P 5700 7400
F 0 "#PWR?" H 5700 7400 30  0001 C CNN
F 1 "GND" H 5700 7330 30  0001 C CNN
F 2 "" H 5700 7400 60  0000 C CNN
F 3 "" H 5700 7400 60  0000 C CNN
	1    5700 7400
	1    0    0    -1  
$EndComp
Text Label 4150 1750 0    60   ~ 0
RST
$Comp
L MPU-6050 IC?
U 1 1 5A4CD89B
P 9250 1400
F 0 "IC?" H 8800 2050 70  0000 C CNN
F 1 "MPU-6050" H 9300 1950 70  0000 C CNN
F 2 "~" H 9500 900 60  0000 C CNN
F 3 "~" H 9500 900 60  0000 C CNN
	1    9250 1400
	1    0    0    -1  
$EndComp
$Comp
L CONN_4 P?
U 1 1 5A4CD89C
P 10400 2750
F 0 "P?" V 10350 2750 50  0000 C CNN
F 1 "CONN_O2" V 10450 2750 50  0000 C CNN
F 2 "" H 10400 2750 60  0000 C CNN
F 3 "" H 10400 2750 60  0000 C CNN
	1    10400 2750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5A4CD89D
P 9950 2700
F 0 "#PWR?" H 9950 2790 20  0001 C CNN
F 1 "+5V" H 9950 2790 30  0000 C CNN
F 2 "" H 9950 2700 60  0000 C CNN
F 3 "" H 9950 2700 60  0000 C CNN
	1    9950 2700
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5A4CD89E
P 9950 2600
F 0 "#PWR?" H 9950 2600 30  0001 C CNN
F 1 "GND" H 9950 2530 30  0001 C CNN
F 2 "" H 9950 2600 60  0000 C CNN
F 3 "" H 9950 2600 60  0000 C CNN
	1    9950 2600
	0    1    1    0   
$EndComp
Text Label 9850 2900 0    60   ~ 0
O2
Text Label 7050 3550 0    60   ~ 0
O2
$Comp
L CONN_3X2 P?
U 1 1 5A4CD89F
P 8850 2800
F 0 "P?" H 8850 3050 50  0000 C CNN
F 1 "CONN_3X2" V 8850 2850 40  0000 C CNN
F 2 "" H 8850 2800 60  0000 C CNN
F 3 "" H 8850 2800 60  0000 C CNN
	1    8850 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A4CD8A0
P 8150 2850
F 0 "#PWR?" H 8150 2850 30  0001 C CNN
F 1 "GND" H 8150 2780 30  0001 C CNN
F 2 "" H 8150 2850 60  0000 C CNN
F 3 "" H 8150 2850 60  0000 C CNN
	1    8150 2850
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 5A4CD8A1
P 9500 2650
F 0 "#PWR?" H 9500 2610 30  0001 C CNN
F 1 "+3.3V" H 9500 2760 30  0000 C CNN
F 2 "" H 9500 2650 60  0000 C CNN
F 3 "" H 9500 2650 60  0000 C CNN
	1    9500 2650
	0    1    1    0   
$EndComp
Text Label 9450 2850 0    60   ~ 0
SDA
Text Label 8100 2750 0    60   ~ 0
SCL
Text Label 8100 2650 0    60   ~ 0
CO2
Text Label 7050 3650 0    60   ~ 0
CO2
$Comp
L HESOP1 K?
U 1 1 5A4CD8A2
P 1750 4100
F 0 "K?" H 1600 4300 60  0000 C CNN
F 1 "HESOP1" H 1800 3900 60  0000 C CNN
F 2 "" H 1750 4100 60  0000 C CNN
F 3 "" H 1750 4100 60  0000 C CNN
	1    1750 4100
	1    0    0    -1  
$EndComp
$Comp
L HESOP1 K?
U 1 1 5A4CD8A3
P 1750 4900
F 0 "K?" H 1600 5100 60  0000 C CNN
F 1 "HESOP1" H 1800 4700 60  0000 C CNN
F 2 "" H 1750 4900 60  0000 C CNN
F 3 "" H 1750 4900 60  0000 C CNN
	1    1750 4900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A4CD8A4
P 850 4100
F 0 "#PWR?" H 850 4100 30  0001 C CNN
F 1 "GND" H 850 4030 30  0001 C CNN
F 2 "" H 850 4100 60  0000 C CNN
F 3 "" H 850 4100 60  0000 C CNN
	1    850  4100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5A4CD8A5
P 850 4900
F 0 "#PWR?" H 850 4900 30  0001 C CNN
F 1 "GND" H 850 4830 30  0001 C CNN
F 2 "" H 850 4900 60  0000 C CNN
F 3 "" H 850 4900 60  0000 C CNN
	1    850  4900
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5A4CD8A6
P 2650 4100
F 0 "#PWR?" H 2650 4190 20  0001 C CNN
F 1 "+5V" H 2650 4190 30  0000 C CNN
F 2 "" H 2650 4100 60  0000 C CNN
F 3 "" H 2650 4100 60  0000 C CNN
	1    2650 4100
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5A4CD8A7
P 2650 4900
F 0 "#PWR?" H 2650 4990 20  0001 C CNN
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
L CONN_9 P?
U 1 1 5A4CD8BD
P 9050 3750
F 0 "P?" V 9000 3750 60  0000 C CNN
F 1 "CONN_9" V 9100 3750 60  0000 C CNN
F 2 "" H 9050 3750 60  0000 C CNN
F 3 "" H 9050 3750 60  0000 C CNN
	1    9050 3750
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 5A4CD8BE
P 9750 4150
F 0 "#PWR?" H 9750 4150 30  0001 C CNN
F 1 "GND" H 9750 4080 30  0001 C CNN
F 2 "" H 9750 4150 60  0000 C CNN
F 3 "" H 9750 4150 60  0000 C CNN
	1    9750 4150
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 5A4CD8BF
P 9750 4050
F 0 "#PWR?" H 9750 4010 30  0001 C CNN
F 1 "+3.3V" H 9750 4160 30  0000 C CNN
F 2 "" H 9750 4050 60  0000 C CNN
F 3 "" H 9750 4050 60  0000 C CNN
	1    9750 4050
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5A4CD8C0
P 9700 3950
F 0 "#PWR?" H 9700 4040 20  0001 C CNN
F 1 "+5V" H 9700 4040 30  0000 C CNN
F 2 "" H 9700 3950 60  0000 C CNN
F 3 "" H 9700 3950 60  0000 C CNN
	1    9700 3950
	0    1    1    0   
$EndComp
Text Label 9500 3350 0    60   ~ 0
LED
Text Label 9550 3450 0    60   ~ 0
RX
Text Label 9550 3550 0    60   ~ 0
TX
Text Label 9500 3650 0    60   ~ 0
SDA
Text Label 9500 3750 0    60   ~ 0
SCL
Text Label 9500 3850 0    60   ~ 0
RST
Text Label 7050 3750 0    60   ~ 0
CAM_TRIG
Text Label 7050 3850 0    60   ~ 0
FLY_TRIG
Text Label 7050 3950 0    60   ~ 0
LED
Text Label 7050 4050 0    60   ~ 0
FC_IN
Text Label 7050 4150 0    60   ~ 0
FC_OUT
Wire Wire Line
	3500 1850 3700 1850
Wire Wire Line
	3700 1850 3950 1850
Wire Wire Line
	3950 1850 4100 1850
Wire Wire Line
	4100 1850 4100 2050
Wire Wire Line
	4100 2050 4400 2050
Connection ~ 3700 1850
Wire Wire Line
	4400 2350 4100 2350
Wire Wire Line
	4100 2350 4100 2450
Wire Wire Line
	4100 2450 3950 2450
Wire Wire Line
	3950 2450 3700 2450
Wire Wire Line
	3700 2450 3500 2450
Connection ~ 3700 2450
Wire Wire Line
	3100 2450 3100 2150
Wire Wire Line
	3100 2150 3100 1850
Wire Wire Line
	2850 2150 3100 2150
Connection ~ 3100 2150
Wire Wire Line
	3950 2400 3950 2450
Connection ~ 3950 2450
Wire Wire Line
	3950 1900 3950 1850
Connection ~ 3950 1850
Connection ~ 3800 1000
Wire Wire Line
	3000 1000 3000 600 
Connection ~ 3000 1000
Wire Wire Line
	3800 1000 3800 600 
Connection ~ 3400 1400
Wire Wire Line
	3400 1300 3400 1400
Wire Wire Line
	3400 1400 3400 1550
Wire Wire Line
	1550 2400 1550 2300
Wire Wire Line
	600  2400 1150 2400
Wire Wire Line
	1150 2400 1550 2400
Connection ~ 1150 2400
Wire Wire Line
	1150 2450 1150 2400
Wire Wire Line
	1150 2400 1150 2350
Wire Wire Line
	1150 1850 1550 1850
Wire Wire Line
	1550 1850 1550 1900
Wire Wire Line
	7000 4650 7200 4650
Wire Wire Line
	7000 4750 7200 4750
Wire Wire Line
	7000 4450 7200 4450
Wire Wire Line
	7000 4550 7200 4550
Wire Wire Line
	1650 3250 1650 3350
Wire Wire Line
	1650 3350 1650 3450
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
	1450 1300 1450 1400
Wire Wire Line
	1450 1400 1450 1500
Connection ~ 1450 1400
Wire Wire Line
	10050 1350 10650 1350
Wire Wire Line
	10650 1350 10650 1300
Wire Wire Line
	10050 1550 10550 1550
Wire Wire Line
	10550 1550 10650 1550
Wire Wire Line
	10050 2050 10550 2050
Wire Wire Line
	10550 2050 10650 2050
Wire Wire Line
	7900 1650 7950 1650
Wire Wire Line
	7950 1650 8450 1650
Wire Wire Line
	8350 1850 8450 1850
Wire Wire Line
	7950 1850 7850 1850
Wire Wire Line
	10050 1050 10200 1050
Wire Wire Line
	10050 950  10200 950 
Wire Wire Line
	7950 1850 7950 1950
Wire Wire Line
	7950 1950 7950 2200
Wire Wire Line
	7950 1950 8450 1950
Connection ~ 7950 1850
Wire Wire Line
	10550 1600 10550 1550
Connection ~ 10550 1550
Wire Wire Line
	10550 2000 10550 2050
Connection ~ 10550 2050
Wire Wire Line
	8400 1750 8450 1750
Connection ~ 7950 1950
Wire Wire Line
	7850 950  7950 950 
Wire Wire Line
	7950 950  8450 950 
Connection ~ 7950 1650
Connection ~ 7950 950 
Wire Wire Line
	7950 950  7950 1250
Wire Wire Line
	3800 1000 4050 1000
Connection ~ 3800 1400
Wire Wire Line
	1850 1000 2100 1000
Connection ~ 1850 1400
Connection ~ 1850 1000
Connection ~ 1050 1000
Wire Wire Line
	4950 1450 5250 1450
Wire Wire Line
	5250 1450 5350 1450
Wire Wire Line
	5350 1450 5450 1450
Wire Wire Line
	5450 1450 5550 1450
Wire Wire Line
	5550 1450 5850 1450
Wire Wire Line
	5850 1450 6150 1450
Connection ~ 5250 1450
Connection ~ 5350 1450
Connection ~ 5450 1450
Connection ~ 5550 1450
Wire Wire Line
	4950 1050 5250 1050
Wire Wire Line
	5250 1050 5550 1050
Wire Wire Line
	5550 1050 5850 1050
Connection ~ 5250 1050
Connection ~ 5550 1050
Wire Wire Line
	5850 1050 5850 1000
Connection ~ 5850 1050
Wire Wire Line
	6150 1450 6150 1300
Connection ~ 5850 1450
Wire Wire Line
	5550 7250 5650 7250
Wire Wire Line
	5650 7250 5700 7250
Wire Wire Line
	5700 7250 5750 7250
Wire Wire Line
	5750 7250 5850 7250
Connection ~ 5650 7250
Connection ~ 5750 7250
Wire Wire Line
	5700 7400 5700 7250
Connection ~ 5700 7250
Wire Wire Line
	4150 1750 4400 1750
Wire Wire Line
	8400 1750 8400 2100
Wire Wire Line
	8400 2100 8450 2100
Wire Wire Line
	8450 2100 8450 2200
Wire Wire Line
	4050 1400 3800 1400
Wire Wire Line
	3800 1400 3400 1400
Wire Wire Line
	3400 1400 3000 1400
Wire Wire Line
	2100 1400 1850 1400
Wire Wire Line
	1850 1400 1450 1400
Wire Wire Line
	1450 1400 1050 1400
Wire Wire Line
	10050 2600 9950 2600
Wire Wire Line
	9950 2700 10050 2700
Wire Wire Line
	10050 2900 9850 2900
Wire Wire Line
	8100 2650 8450 2650
Wire Wire Line
	8450 2750 8100 2750
Wire Wire Line
	9500 2650 9250 2650
Wire Wire Line
	8150 2850 8450 2850
Wire Wire Line
	9250 2850 9600 2850
Wire Wire Line
	7000 3650 7200 3650
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
	9400 3350 9650 3350
Wire Wire Line
	9400 3450 9650 3450
Wire Wire Line
	9400 3550 9650 3550
Wire Wire Line
	9400 3650 9650 3650
Wire Wire Line
	9400 3750 9650 3750
Wire Wire Line
	9400 3850 9650 3850
Wire Wire Line
	9400 3950 9700 3950
Wire Wire Line
	9400 4050 9750 4050
Wire Wire Line
	9400 4150 9750 4150
Wire Wire Line
	7000 3750 7450 3750
Wire Wire Line
	7000 3850 7450 3850
Wire Wire Line
	7000 3950 7200 3950
Wire Wire Line
	7000 4050 7300 4050
Wire Wire Line
	7000 4150 7350 4150
Wire Wire Line
	7000 3550 7150 3550
$Comp
L CONN_2 P?
U 1 1 5A4CEAF6
P 2050 5500
F 0 "P?" V 2000 5500 40  0000 C CNN
F 1 "CONN_2" V 2100 5500 40  0000 C CNN
F 2 "" H 2050 5500 60  0000 C CNN
F 3 "" H 2050 5500 60  0000 C CNN
	1    2050 5500
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P?
U 1 1 5A4CEB03
P 2050 5900
F 0 "P?" V 2000 5900 40  0000 C CNN
F 1 "CONN_2" V 2100 5900 40  0000 C CNN
F 2 "" H 2050 5900 60  0000 C CNN
F 3 "" H 2050 5900 60  0000 C CNN
	1    2050 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 5600 1700 5800
$Comp
L +12V #PWR?
U 1 1 5A4CEB87
P 1600 6000
F 0 "#PWR?" H 1600 5950 20  0001 C CNN
F 1 "+12V" H 1600 6100 30  0000 C CNN
F 2 "" H 1600 6000 60  0000 C CNN
F 3 "" H 1600 6000 60  0000 C CNN
	1    1600 6000
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5A4CEB96
P 1600 5400
F 0 "#PWR?" H 1600 5400 30  0001 C CNN
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
L CONN_2 P?
U 1 1 5A4CECBB
P 1250 5500
F 0 "P?" V 1200 5500 40  0000 C CNN
F 1 "CONN_2" V 1300 5500 40  0000 C CNN
F 2 "" H 1250 5500 60  0000 C CNN
F 3 "" H 1250 5500 60  0000 C CNN
	1    1250 5500
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P?
U 1 1 5A4CECC1
P 1250 5900
F 0 "P?" V 1200 5900 40  0000 C CNN
F 1 "CONN_2" V 1300 5900 40  0000 C CNN
F 2 "" H 1250 5900 60  0000 C CNN
F 3 "" H 1250 5900 60  0000 C CNN
	1    1250 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  5600 900  5800
$Comp
L +12V #PWR?
U 1 1 5A4CECC8
P 800 6000
F 0 "#PWR?" H 800 5950 20  0001 C CNN
F 1 "+12V" H 800 6100 30  0000 C CNN
F 2 "" H 800 6000 60  0000 C CNN
F 3 "" H 800 6000 60  0000 C CNN
	1    800  6000
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5A4CECCE
P 800 5400
F 0 "#PWR?" H 800 5400 30  0001 C CNN
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
L CONN_2 P?
U 1 1 5A4CECD6
P 2050 6350
F 0 "P?" V 2000 6350 40  0000 C CNN
F 1 "CONN_2" V 2100 6350 40  0000 C CNN
F 2 "" H 2050 6350 60  0000 C CNN
F 3 "" H 2050 6350 60  0000 C CNN
	1    2050 6350
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P?
U 1 1 5A4CECDC
P 2050 6750
F 0 "P?" V 2000 6750 40  0000 C CNN
F 1 "CONN_2" V 2100 6750 40  0000 C CNN
F 2 "" H 2050 6750 60  0000 C CNN
F 3 "" H 2050 6750 60  0000 C CNN
	1    2050 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 6450 1700 6650
$Comp
L +12V #PWR?
U 1 1 5A4CECE3
P 1600 6850
F 0 "#PWR?" H 1600 6800 20  0001 C CNN
F 1 "+12V" H 1600 6950 30  0000 C CNN
F 2 "" H 1600 6850 60  0000 C CNN
F 3 "" H 1600 6850 60  0000 C CNN
	1    1600 6850
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5A4CECE9
P 1600 6250
F 0 "#PWR?" H 1600 6250 30  0001 C CNN
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
L CONN_2 P?
U 1 1 5A4CECF1
P 1250 6350
F 0 "P?" V 1200 6350 40  0000 C CNN
F 1 "CONN_2" V 1300 6350 40  0000 C CNN
F 2 "" H 1250 6350 60  0000 C CNN
F 3 "" H 1250 6350 60  0000 C CNN
	1    1250 6350
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P?
U 1 1 5A4CECF7
P 1250 6750
F 0 "P?" V 1200 6750 40  0000 C CNN
F 1 "CONN_2" V 1300 6750 40  0000 C CNN
F 2 "" H 1250 6750 60  0000 C CNN
F 3 "" H 1250 6750 60  0000 C CNN
	1    1250 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  6450 900  6650
$Comp
L +12V #PWR?
U 1 1 5A4CECFE
P 800 6850
F 0 "#PWR?" H 800 6800 20  0001 C CNN
F 1 "+12V" H 800 6950 30  0000 C CNN
F 2 "" H 800 6850 60  0000 C CNN
F 3 "" H 800 6850 60  0000 C CNN
	1    800  6850
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5A4CED04
P 800 6250
F 0 "#PWR?" H 800 6250 30  0001 C CNN
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
L CONN_2 P?
U 1 1 5A4CED0C
P 3600 5500
F 0 "P?" V 3550 5500 40  0000 C CNN
F 1 "CONN_2" V 3650 5500 40  0000 C CNN
F 2 "" H 3600 5500 60  0000 C CNN
F 3 "" H 3600 5500 60  0000 C CNN
	1    3600 5500
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P?
U 1 1 5A4CED12
P 3600 5900
F 0 "P?" V 3550 5900 40  0000 C CNN
F 1 "CONN_2" V 3650 5900 40  0000 C CNN
F 2 "" H 3600 5900 60  0000 C CNN
F 3 "" H 3600 5900 60  0000 C CNN
	1    3600 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 5600 3250 5800
$Comp
L +12V #PWR?
U 1 1 5A4CED19
P 3150 6000
F 0 "#PWR?" H 3150 5950 20  0001 C CNN
F 1 "+12V" H 3150 6100 30  0000 C CNN
F 2 "" H 3150 6000 60  0000 C CNN
F 3 "" H 3150 6000 60  0000 C CNN
	1    3150 6000
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5A4CED1F
P 3150 5400
F 0 "#PWR?" H 3150 5400 30  0001 C CNN
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
L CONN_2 P?
U 1 1 5A4CED27
P 2800 5500
F 0 "P?" V 2750 5500 40  0000 C CNN
F 1 "CONN_2" V 2850 5500 40  0000 C CNN
F 2 "" H 2800 5500 60  0000 C CNN
F 3 "" H 2800 5500 60  0000 C CNN
	1    2800 5500
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P?
U 1 1 5A4CED2D
P 2800 5900
F 0 "P?" V 2750 5900 40  0000 C CNN
F 1 "CONN_2" V 2850 5900 40  0000 C CNN
F 2 "" H 2800 5900 60  0000 C CNN
F 3 "" H 2800 5900 60  0000 C CNN
	1    2800 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 5600 2450 5800
$Comp
L +12V #PWR?
U 1 1 5A4CED34
P 2350 6000
F 0 "#PWR?" H 2350 5950 20  0001 C CNN
F 1 "+12V" H 2350 6100 30  0000 C CNN
F 2 "" H 2350 6000 60  0000 C CNN
F 3 "" H 2350 6000 60  0000 C CNN
	1    2350 6000
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5A4CED3A
P 2350 5400
F 0 "#PWR?" H 2350 5400 30  0001 C CNN
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
L CONN_2 P?
U 1 1 5A4CED42
P 3600 6350
F 0 "P?" V 3550 6350 40  0000 C CNN
F 1 "CONN_2" V 3650 6350 40  0000 C CNN
F 2 "" H 3600 6350 60  0000 C CNN
F 3 "" H 3600 6350 60  0000 C CNN
	1    3600 6350
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P?
U 1 1 5A4CED48
P 3600 6750
F 0 "P?" V 3550 6750 40  0000 C CNN
F 1 "CONN_2" V 3650 6750 40  0000 C CNN
F 2 "" H 3600 6750 60  0000 C CNN
F 3 "" H 3600 6750 60  0000 C CNN
	1    3600 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 6450 3250 6650
$Comp
L +12V #PWR?
U 1 1 5A4CED4F
P 3150 6850
F 0 "#PWR?" H 3150 6800 20  0001 C CNN
F 1 "+12V" H 3150 6950 30  0000 C CNN
F 2 "" H 3150 6850 60  0000 C CNN
F 3 "" H 3150 6850 60  0000 C CNN
	1    3150 6850
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5A4CED55
P 3150 6250
F 0 "#PWR?" H 3150 6250 30  0001 C CNN
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
L CONN_2 P?
U 1 1 5A4CED5D
P 2800 6350
F 0 "P?" V 2750 6350 40  0000 C CNN
F 1 "CONN_2" V 2850 6350 40  0000 C CNN
F 2 "" H 2800 6350 60  0000 C CNN
F 3 "" H 2800 6350 60  0000 C CNN
	1    2800 6350
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P?
U 1 1 5A4CED63
P 2800 6750
F 0 "P?" V 2750 6750 40  0000 C CNN
F 1 "CONN_2" V 2850 6750 40  0000 C CNN
F 2 "" H 2800 6750 60  0000 C CNN
F 3 "" H 2800 6750 60  0000 C CNN
	1    2800 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 6450 2450 6650
$Comp
L +12V #PWR?
U 1 1 5A4CED6A
P 2350 6850
F 0 "#PWR?" H 2350 6800 20  0001 C CNN
F 1 "+12V" H 2350 6950 30  0000 C CNN
F 2 "" H 2350 6850 60  0000 C CNN
F 3 "" H 2350 6850 60  0000 C CNN
	1    2350 6850
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5A4CED70
P 2350 6250
F 0 "#PWR?" H 2350 6250 30  0001 C CNN
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
$EndSCHEMATC
