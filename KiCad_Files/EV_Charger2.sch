EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "EV Charger Schematic"
Date "07/03/2022"
Rev "V0.1"
Comp "James Fotherby"
Comment1 "Showing: 1) GFCI transimpedance amp, 2) Relay drivers, 3) Pilot signal generation"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Amplifier_Operational:OP07 U2
U 1 1 6226CA08
P 2750 7000
F 0 "U2" H 2650 7000 50  0000 L CNN
F 1 "OP07" H 2750 7150 50  0000 L CNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 2800 7050 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/OP07.pdf" H 2800 7150 50  0001 C CNN
	1    2750 7000
	1    0    0    1   
$EndComp
$Comp
L Diode:1N4148 D3
U 1 1 622791AC
P 4800 6800
F 0 "D3" H 4800 6600 50  0000 C CNN
F 1 "1N749A 4.3V Zener" H 4800 6700 50  0000 C CNN
F 2 "Diodes_ThroughHole:D_DO-35_SOD27_P7.62mm_Horizontal" H 4800 6625 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4800 6800 50  0001 C CNN
	1    4800 6800
	-1   0    0    1   
$EndComp
Wire Wire Line
	4950 6800 5150 6800
Wire Wire Line
	5150 7100 5250 7100
Wire Wire Line
	5000 6450 4400 6450
Wire Wire Line
	4400 6800 4650 6800
Wire Wire Line
	4400 7000 4400 6800
Wire Wire Line
	3050 7000 3150 7000
Wire Wire Line
	2800 6450 3150 6450
Wire Wire Line
	3150 6450 3150 7000
Wire Wire Line
	2500 6450 2300 6450
Wire Wire Line
	2300 6450 2300 6900
Wire Wire Line
	2300 6900 2450 6900
$Comp
L power:Earth #PWR02
U 1 1 6228CBC4
P 2250 7450
F 0 "#PWR02" H 2250 7200 50  0001 C CNN
F 1 "Earth" H 2250 7300 50  0001 C CNN
F 2 "" H 2250 7450 50  0001 C CNN
F 3 "~" H 2250 7450 50  0001 C CNN
	1    2250 7450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 6228F512
P 850 7100
F 0 "J1" H 768 6675 50  0000 C CNN
F 1 "Conn_01x04" H 768 6766 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 850 7100 50  0001 C CNN
F 3 "~" H 850 7100 50  0001 C CNN
	1    850  7100
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D2
U 1 1 62291897
P 2000 7050
F 0 "D2" V 1954 7130 50  0000 L CNN
F 1 "1N4148" V 2045 7130 50  0000 L CNN
F 2 "Diodes_ThroughHole:D_DO-35_SOD27_P7.62mm_Horizontal" H 2000 6875 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2000 7050 50  0001 C CNN
	1    2000 7050
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148 D1
U 1 1 62292EA1
P 1550 7050
F 0 "D1" V 1596 6970 50  0000 R CNN
F 1 "1N4148" V 1505 6970 50  0000 R CNN
F 2 "Diodes_ThroughHole:D_DO-35_SOD27_P7.62mm_Horizontal" H 1550 6875 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 1550 7050 50  0001 C CNN
	1    1550 7050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1550 6900 2000 6900
Wire Wire Line
	2300 6900 2000 6900
Connection ~ 2300 6900
Connection ~ 2000 6900
Wire Wire Line
	1550 7200 2000 7200
Wire Wire Line
	1050 7200 1550 7200
Connection ~ 1550 7200
Wire Wire Line
	1300 7100 1300 6900
Wire Wire Line
	1300 6900 1550 6900
Connection ~ 1550 6900
Wire Wire Line
	1050 7100 1300 7100
Wire Wire Line
	2450 7100 2450 7200
Wire Wire Line
	2450 7200 2250 7200
Connection ~ 2000 7200
Wire Wire Line
	2250 7450 2250 7200
Connection ~ 2250 7200
Wire Wire Line
	2250 7200 2000 7200
$Comp
L power:Earth #PWR09
U 1 1 6229CD02
P 4400 7450
F 0 "#PWR09" H 4400 7200 50  0001 C CNN
F 1 "Earth" H 4400 7300 50  0001 C CNN
F 2 "" H 4400 7450 50  0001 C CNN
F 3 "~" H 4400 7450 50  0001 C CNN
	1    4400 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 7450 4400 7200
$Comp
L Device:CP C3
U 1 1 6229E3FC
P 6350 7300
F 0 "C3" H 6468 7346 50  0000 L CNN
F 1 "2.2uF" H 6468 7255 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D4.0mm_P1.50mm" H 6388 7150 50  0001 C CNN
F 3 "~" H 6350 7300 50  0001 C CNN
	1    6350 7300
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR010
U 1 1 6229EAC7
P 6350 7450
F 0 "#PWR010" H 6350 7200 50  0001 C CNN
F 1 "Earth" H 6350 7300 50  0001 C CNN
F 2 "" H 6350 7450 50  0001 C CNN
F 3 "~" H 6350 7450 50  0001 C CNN
	1    6350 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 7100 5550 7100
Connection ~ 4400 6800
Wire Wire Line
	5150 6800 5150 7100
Wire Wire Line
	4400 6450 4400 6800
Wire Wire Line
	5750 6450 5750 7100
Connection ~ 5750 7100
Wire Wire Line
	5300 6450 5750 6450
$Comp
L Device:R R7
U 1 1 62276D48
P 5150 6450
F 0 "R7" V 4943 6450 50  0000 C CNN
F 1 "100K" V 5034 6450 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5080 6450 50  0001 C CNN
F 3 "~" H 5150 6450 50  0001 C CNN
	1    5150 6450
	0    1    1    0   
$EndComp
$Comp
L power:Earth #PWR017
U 1 1 622B95B3
P 10300 2150
F 0 "#PWR017" H 10300 1900 50  0001 C CNN
F 1 "Earth" H 10300 2000 50  0001 C CNN
F 2 "" H 10300 2150 50  0001 C CNN
F 3 "~" H 10300 2150 50  0001 C CNN
	1    10300 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 622C8B22
P 8750 900
F 0 "R13" V 8543 900 50  0000 C CNN
F 1 "47R" V 8634 900 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0309_L9.0mm_D3.2mm_P15.24mm_Horizontal" V 8680 900 50  0001 C CNN
F 3 "~" H 8750 900 50  0001 C CNN
	1    8750 900 
	0    1    1    0   
$EndComp
$Comp
L Device:CP C4
U 1 1 622C9BCA
P 9050 1050
F 0 "C4" H 9168 1096 50  0000 L CNN
F 1 "100uF" H 9168 1005 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D5.0mm_P2.50mm" H 9088 900 50  0001 C CNN
F 3 "~" H 9050 1050 50  0001 C CNN
	1    9050 1050
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR016
U 1 1 622CA7A5
P 9050 1200
F 0 "#PWR016" H 9050 950 50  0001 C CNN
F 1 "Earth" H 9050 1050 50  0001 C CNN
F 2 "" H 9050 1200 50  0001 C CNN
F 3 "~" H 9050 1200 50  0001 C CNN
	1    9050 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 900  9050 900 
Connection ~ 9050 900 
$Comp
L Device:R R15
U 1 1 622D3D31
P 9650 1750
F 0 "R15" V 9443 1750 50  0000 C CNN
F 1 "2.2K" V 9534 1750 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9580 1750 50  0001 C CNN
F 3 "~" H 9650 1750 50  0001 C CNN
	1    9650 1750
	0    1    1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 622D52D1
P 9650 2550
F 0 "R16" V 9443 2550 50  0000 C CNN
F 1 "2.2K" V 9534 2550 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9580 2550 50  0001 C CNN
F 3 "~" H 9650 2550 50  0001 C CNN
	1    9650 2550
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 622DD234
P 8750 3450
F 0 "R14" V 8543 3450 50  0000 C CNN
F 1 "47R" V 8634 3450 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0309_L9.0mm_D3.2mm_P15.24mm_Horizontal" V 8680 3450 50  0001 C CNN
F 3 "~" H 8750 3450 50  0001 C CNN
	1    8750 3450
	0    1    1    0   
$EndComp
$Comp
L Device:CP C5
U 1 1 622DD925
P 9050 3600
F 0 "C5" H 8932 3554 50  0000 R CNN
F 1 "100uF" H 8932 3645 50  0000 R CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D5.0mm_P2.50mm" H 9088 3450 50  0001 C CNN
F 3 "~" H 9050 3600 50  0001 C CNN
	1    9050 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 3450 8500 3350
Wire Wire Line
	8500 3450 8600 3450
Wire Wire Line
	8900 3450 9050 3450
Wire Wire Line
	9050 3450 9500 3450
Connection ~ 9050 3450
$Comp
L power:Earth #PWR018
U 1 1 622E3DEE
P 9050 3750
F 0 "#PWR018" H 9050 3500 50  0001 C CNN
F 1 "Earth" H 9050 3600 50  0001 C CNN
F 2 "" H 9050 3750 50  0001 C CNN
F 3 "~" H 9050 3750 50  0001 C CNN
	1    9050 3750
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D6
U 1 1 622E44E5
P 9500 3150
F 0 "D6" V 9546 3070 50  0000 R CNN
F 1 "1N4148" V 9455 3070 50  0000 R CNN
F 2 "Diodes_ThroughHole:D_DO-35_SOD27_P7.62mm_Horizontal" H 9500 2975 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9500 3150 50  0001 C CNN
	1    9500 3150
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D5
U 1 1 622E7425
P 9500 1200
F 0 "D5" V 9454 1280 50  0000 L CNN
F 1 "1N4148" V 9545 1280 50  0000 L CNN
F 2 "Diodes_ThroughHole:D_DO-35_SOD27_P7.62mm_Horizontal" H 9500 1025 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 9500 1200 50  0001 C CNN
	1    9500 1200
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC337 Q1
U 1 1 622B3215
P 10000 1750
F 0 "Q1" H 10191 1796 50  0000 L CNN
F 1 "BC337" H 10191 1705 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 10200 1675 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 10000 1750 50  0001 L CNN
	1    10000 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 1500 9500 1500
Wire Wire Line
	9500 1500 9500 1350
Wire Wire Line
	9500 1050 9500 900 
Wire Wire Line
	9500 900  10100 900 
Wire Wire Line
	10100 1500 10100 1550
Wire Wire Line
	10100 2850 9500 2850
Wire Wire Line
	10100 3450 9500 3450
Wire Wire Line
	10100 2850 10100 2750
$Comp
L Device:R R5
U 1 1 6233254A
P 7800 4500
F 0 "R5" H 7730 4454 50  0000 R CNN
F 1 "10K" H 7730 4545 50  0000 R CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7730 4500 50  0001 C CNN
F 3 "~" H 7800 4500 50  0001 C CNN
	1    7800 4500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 62332B1E
P 7800 4900
F 0 "R6" H 7730 4854 50  0000 R CNN
F 1 "10K" H 7730 4945 50  0000 R CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7730 4900 50  0001 C CNN
F 3 "~" H 7800 4900 50  0001 C CNN
	1    7800 4900
	-1   0    0    1   
$EndComp
$Comp
L power:Earth #PWR08
U 1 1 62338639
P 7800 5050
F 0 "#PWR08" H 7800 4800 50  0001 C CNN
F 1 "Earth" H 7800 4900 50  0001 C CNN
F 2 "" H 7800 5050 50  0001 C CNN
F 3 "~" H 7800 5050 50  0001 C CNN
	1    7800 5050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 62338DAC
P 7800 4350
F 0 "#PWR07" H 7800 4200 50  0001 C CNN
F 1 "+5V" H 7815 4523 50  0000 C CNN
F 2 "" H 7800 4350 50  0001 C CNN
F 3 "" H 7800 4350 50  0001 C CNN
	1    7800 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 62339948
P 9050 4800
F 0 "R8" V 9257 4800 50  0000 C CNN
F 1 "1K" V 9166 4800 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8980 4800 50  0001 C CNN
F 3 "~" H 9050 4800 50  0001 C CNN
	1    9050 4800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R9
U 1 1 6233BD9E
P 9450 4950
F 0 "R9" H 9380 4904 50  0000 R CNN
F 1 "100K" H 9380 4995 50  0000 R CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9380 4950 50  0001 C CNN
F 3 "~" H 9450 4950 50  0001 C CNN
	1    9450 4950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R10
U 1 1 6233C422
P 9450 5500
F 0 "R10" H 9380 5454 50  0000 R CNN
F 1 "47K" H 9380 5545 50  0000 R CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9380 5500 50  0001 C CNN
F 3 "~" H 9450 5500 50  0001 C CNN
	1    9450 5500
	-1   0    0    1   
$EndComp
Connection ~ 9450 4800
Wire Wire Line
	9450 4800 9200 4800
$Comp
L power:Earth #PWR011
U 1 1 62340EDC
P 9450 5650
F 0 "#PWR011" H 9450 5400 50  0001 C CNN
F 1 "Earth" H 9450 5500 50  0001 C CNN
F 2 "" H 9450 5650 50  0001 C CNN
F 3 "~" H 9450 5650 50  0001 C CNN
	1    9450 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 5100 8800 5750
Connection ~ 9450 5100
Wire Wire Line
	9450 5100 9450 5350
$Comp
L Diode:SM6T6V8A TVS1
U 1 1 62349AB9
P 9850 4950
F 0 "TVS1" V 9650 4750 50  0000 L CNN
F 1 "P6KE16CA" V 9550 4750 50  0000 L CNN
F 2 "Diodes_ThroughHole:D_DO-35_SOD27_P10.16mm_Horizontal" H 9850 4750 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/sm6t.pdf" H 9800 4950 50  0001 C CNN
	1    9850 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	9450 4800 9850 4800
$Comp
L power:Earth #PWR012
U 1 1 6234CB2D
P 9850 5100
F 0 "#PWR012" H 9850 4850 50  0001 C CNN
F 1 "Earth" H 9850 4950 50  0001 C CNN
F 2 "" H 9850 5100 50  0001 C CNN
F 3 "~" H 9850 5100 50  0001 C CNN
	1    9850 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 6234FE13
P 1400 6500
F 0 "R1" V 1193 6500 50  0000 C CNN
F 1 "1K" V 1284 6500 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1330 6500 50  0001 C CNN
F 3 "~" H 1400 6500 50  0001 C CNN
	1    1400 6500
	0    1    1    0   
$EndComp
Wire Wire Line
	1050 7000 1200 7000
Wire Wire Line
	1200 7000 1200 7450
Wire Wire Line
	1050 6900 1200 6900
Wire Wire Line
	1200 6900 1200 6500
Wire Wire Line
	1200 6500 1250 6500
Wire Wire Line
	1550 6500 1750 6500
$Comp
L power:Earth #PWR01
U 1 1 6235C097
P 1200 7450
F 0 "#PWR01" H 1200 7200 50  0001 C CNN
F 1 "Earth" H 1200 7300 50  0001 C CNN
F 2 "" H 1200 7450 50  0001 C CNN
F 3 "~" H 1200 7450 50  0001 C CNN
	1    1200 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 7100 5900 7100
$Comp
L Device:C C1
U 1 1 6235F23B
P 2650 6100
F 0 "C1" V 2398 6100 50  0000 C CNN
F 1 "1nF" V 2489 6100 50  0000 C CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 2688 5950 50  0001 C CNN
F 3 "~" H 2650 6100 50  0001 C CNN
	1    2650 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 6100 2300 6100
Wire Wire Line
	2300 6100 2300 6450
Connection ~ 2300 6450
Wire Wire Line
	2800 6100 3150 6100
Wire Wire Line
	3150 6100 3150 6450
Connection ~ 3150 6450
$Comp
L power:Earth #PWR03
U 1 1 6236EE1B
P 2600 5500
F 0 "#PWR03" H 2600 5250 50  0001 C CNN
F 1 "Earth" H 2600 5350 50  0001 C CNN
F 2 "" H 2600 5500 50  0001 C CNN
F 3 "~" H 2600 5500 50  0001 C CNN
	1    2600 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 7000 3400 7000
Connection ~ 3150 7000
$Comp
L T9VV1K15-12S:T9VV1K15-12S K2
U 1 1 624CF45F
P 10450 3150
F 0 "K2" H 10450 3515 50  0000 C CNN
F 1 "T9VV1K15-12S" H 10450 3424 50  0000 C CNN
F 2 "T9VV1K15-12S:RELAY_T9VV1K15-12S" H 10450 3150 50  0001 L BNN
F 3 "" H 10450 3150 50  0001 L BNN
F 4 "2027395-5" H 10450 3150 50  0001 L BNN "Comment"
F 5 "40 A" H 10450 3150 50  0001 L BNN "Contact_Current_Rating_Max"
F 6 "30 VDC" H 10450 3150 50  0001 L BNN "Contact_Switching_Voltage_Max"
	1    10450 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 1300 10100 1300
Wire Wire Line
	10100 1300 10100 1500
Connection ~ 10100 1500
Wire Wire Line
	10150 1100 10100 1100
Wire Wire Line
	10100 1100 10100 900 
Wire Wire Line
	10100 2850 10100 3050
Wire Wire Line
	10100 3050 10150 3050
Connection ~ 10100 2850
Wire Wire Line
	10150 3250 10100 3250
Wire Wire Line
	10100 3250 10100 3450
Wire Wire Line
	9500 3000 9500 2850
Wire Wire Line
	9500 3300 9500 3450
$Comp
L T9VV1K15-12S:T9VV1K15-12S K1
U 1 1 624CBE28
P 10450 1200
F 0 "K1" H 10450 1565 50  0000 C CNN
F 1 "T9VV1K15-12S" H 10450 1474 50  0000 C CNN
F 2 "T9VV1K15-12S:RELAY_T9VV1K15-12S" H 10450 1200 50  0001 L BNN
F 3 "" H 10450 1200 50  0001 L BNN
F 4 "2027395-5" H 10450 1200 50  0001 L BNN "Comment"
F 5 "40 A" H 10450 1200 50  0001 L BNN "Contact_Current_Rating_Max"
F 6 "30 VDC" H 10450 1200 50  0001 L BNN "Contact_Switching_Voltage_Max"
	1    10450 1200
	1    0    0    -1  
$EndComp
$Comp
L ARDUINO_PRO_MINI:ARDUINO_PRO_MINI U1
U 1 1 6251BE98
P 1800 4250
F 0 "U1" H 1800 5617 50  0000 C CNN
F 1 "ARDUINO_PRO_MINI" H 1800 5526 50  0000 C CNN
F 2 "ARDUINO_PRO_MINI:MODULE_ARDUINO_PRO_MINI" H 1800 4250 50  0001 L BNN
F 3 "" H 1800 4250 50  0001 L BNN
F 4 "SparkFun Electronics" H 1800 4250 50  0001 L BNN "MANUFACTURER"
F 5 "N/A" H 1800 4250 50  0001 L BNN "PARTREV"
F 6 "Manufacturer Recommendations" H 1800 4250 50  0001 L BNN "STANDARD"
F 7 "N/A" H 1800 4250 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
	1    1800 4250
	1    0    0    -1  
$EndComp
$Comp
L RAC10-15DK_277:RAC10-15DK_277 PS1
U 1 1 6251CCC6
P 1550 1650
F 0 "PS1" H 1550 2117 50  0000 C CNN
F 1 "RAC10-15DK_277" H 1550 2026 50  0000 C CNN
F 2 "RAC10-15DK_277:CONV_RAC10-15DK_277" H 1550 1650 50  0001 L BNN
F 3 "" H 1550 1650 50  0001 L BNN
F 4 "Manufacturer Recommendations" H 1550 1650 50  0001 L BNN "STANDARD"
F 5 "8/2020" H 1550 1650 50  0001 L BNN "PARTREV"
F 6 "RECOM" H 1550 1650 50  0001 L BNN "MANUFACTURER"
F 7 "23.5mm" H 1550 1650 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
	1    1550 1650
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM358 U3
U 3 1 62565F6B
P 8600 4800
F 0 "U3" H 8550 4600 50  0001 L CNN
F 1 "LM358" H 8558 4755 50  0001 L CNN
F 2 "LM358AP:DIP794W45P254L959H508Q8" H 8600 4800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 8600 4800 50  0001 C CNN
	3    8600 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 5500 2600 5350
Wire Wire Line
	2600 5350 2500 5350
Wire Wire Line
	2500 5250 2600 5250
Wire Wire Line
	2600 5250 2600 5350
Connection ~ 2600 5350
Wire Wire Line
	2600 5250 2600 5150
Wire Wire Line
	2600 5150 2500 5150
Connection ~ 2600 5250
$Comp
L Regulator_Linear:LM317_TO-220 U5
U 1 1 625AFE1E
P 3150 950
F 0 "U5" H 3150 1192 50  0000 C CNN
F 1 "LM317_TO-220" H 3150 1101 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 3150 1200 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm317.pdf" H 3150 950 50  0001 C CNN
	1    3150 950 
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM337_TO220 U6
U 1 1 625B0E2C
P 3150 2350
F 0 "U6" H 3150 2201 50  0000 C CNN
F 1 "LM337_TO220" H 3150 2110 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 3150 2150 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm337-n.pdf" H 3150 2350 50  0001 C CNN
	1    3150 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 6261CA75
P 3500 1300
F 0 "R18" V 3707 1300 50  0000 C CNN
F 1 "240R" V 3616 1300 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3430 1300 50  0001 C CNN
F 3 "~" H 3500 1300 50  0001 C CNN
	1    3500 1300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R19
U 1 1 62623E29
P 3500 2000
F 0 "R19" V 3707 2000 50  0000 C CNN
F 1 "120R" V 3616 2000 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3430 2000 50  0001 C CNN
F 3 "~" H 3500 2000 50  0001 C CNN
	1    3500 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2250 1650 2700 1650
Wire Wire Line
	3150 2000 3150 2050
Wire Wire Line
	3150 2000 3350 2000
Wire Wire Line
	3650 2000 3800 2000
Wire Wire Line
	3800 2000 3800 2350
Wire Wire Line
	3800 2350 3450 2350
Wire Wire Line
	3150 1250 3150 1300
Wire Wire Line
	3650 1300 3800 1300
Wire Wire Line
	3800 1300 3800 950 
Wire Wire Line
	3800 950  3450 950 
Wire Wire Line
	3350 1300 3150 1300
Wire Wire Line
	2250 1850 2300 1850
Wire Wire Line
	2300 2350 2700 2350
Wire Wire Line
	2250 1450 2300 1450
Wire Wire Line
	2300 1450 2300 950 
Wire Wire Line
	2300 950  2700 950 
Wire Wire Line
	2300 1850 2300 2350
$Comp
L Device:C C7
U 1 1 62662ED6
P 2700 2000
F 0 "C7" H 2815 2046 50  0000 L CNN
F 1 "100nf" H 2815 1955 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 2738 1850 50  0001 C CNN
F 3 "~" H 2700 2000 50  0001 C CNN
	1    2700 2000
	-1   0    0    1   
$EndComp
$Comp
L Device:C C6
U 1 1 62676B26
P 2700 1350
F 0 "C6" H 2815 1396 50  0000 L CNN
F 1 "100nF" H 2815 1305 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 2738 1200 50  0001 C CNN
F 3 "~" H 2700 1350 50  0001 C CNN
	1    2700 1350
	-1   0    0    1   
$EndComp
Wire Wire Line
	2700 1500 2700 1650
Connection ~ 2700 1650
Wire Wire Line
	2700 1850 2700 1650
Wire Wire Line
	2700 1200 2700 950 
Connection ~ 2700 950 
Wire Wire Line
	2700 950  2850 950 
Wire Wire Line
	2700 2150 2700 2350
Connection ~ 2700 2350
Wire Wire Line
	2700 2350 2850 2350
$Comp
L power:+12V #PWR0101
U 1 1 6269587E
P 3800 850
F 0 "#PWR0101" H 3800 700 50  0001 C CNN
F 1 "+12V" H 3815 1023 50  0000 C CNN
F 2 "" H 3800 850 50  0001 C CNN
F 3 "" H 3800 850 50  0001 C CNN
	1    3800 850 
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR0102
U 1 1 62697ECE
P 3800 2450
F 0 "#PWR0102" H 3800 2550 50  0001 C CNN
F 1 "-12V" H 3815 2623 50  0000 C CNN
F 2 "" H 3800 2450 50  0001 C CNN
F 3 "" H 3800 2450 50  0001 C CNN
	1    3800 2450
	-1   0    0    1   
$EndComp
$Comp
L power:Earth #PWR0103
U 1 1 62698EAA
P 4150 1700
F 0 "#PWR0103" H 4150 1450 50  0001 C CNN
F 1 "Earth" H 4150 1550 50  0001 C CNN
F 2 "" H 4150 1700 50  0001 C CNN
F 3 "~" H 4150 1700 50  0001 C CNN
	1    4150 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 850  3800 900 
Connection ~ 3800 950 
Wire Wire Line
	3800 2450 3800 2400
Connection ~ 3800 2350
$Comp
L power:+12V #PWR0104
U 1 1 626BC665
P 8500 4500
F 0 "#PWR0104" H 8500 4350 50  0001 C CNN
F 1 "+12V" H 8515 4673 50  0000 C CNN
F 2 "" H 8500 4500 50  0001 C CNN
F 3 "" H 8500 4500 50  0001 C CNN
	1    8500 4500
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR0105
U 1 1 626BCBE7
P 8500 5100
F 0 "#PWR0105" H 8500 5200 50  0001 C CNN
F 1 "-12V" H 8515 5273 50  0000 C CNN
F 2 "" H 8500 5100 50  0001 C CNN
F 3 "" H 8500 5100 50  0001 C CNN
	1    8500 5100
	-1   0    0    1   
$EndComp
$Comp
L power:-12V #PWR0108
U 1 1 626C09A1
P 2650 6700
F 0 "#PWR0108" H 2650 6800 50  0001 C CNN
F 1 "-12V" H 2550 6800 50  0000 C CNN
F 2 "" H 2650 6700 50  0001 C CNN
F 3 "" H 2650 6700 50  0001 C CNN
	1    2650 6700
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0109
U 1 1 626C18C1
P 2650 7300
F 0 "#PWR0109" H 2650 7150 50  0001 C CNN
F 1 "+12V" H 2750 7450 50  0000 C CNN
F 2 "" H 2650 7300 50  0001 C CNN
F 3 "" H 2650 7300 50  0001 C CNN
	1    2650 7300
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR0110
U 1 1 626C2B1A
P 3300 3200
F 0 "#PWR0110" H 3300 3050 50  0001 C CNN
F 1 "+12V" H 3315 3373 50  0000 C CNN
F 2 "" H 3300 3200 50  0001 C CNN
F 3 "" H 3300 3200 50  0001 C CNN
	1    3300 3200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 626D178E
P 3250 3950
F 0 "J2" H 3400 3850 50  0000 C CNN
F 1 "Conn_01x04" H 3350 4200 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 3250 3950 50  0001 C CNN
F 3 "~" H 3250 3950 50  0001 C CNN
	1    3250 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3950 3050 3950
Wire Wire Line
	3050 3850 3000 3850
$Comp
L power:Earth #PWR0111
U 1 1 626F175C
P 2850 3800
F 0 "#PWR0111" H 2850 3550 50  0001 C CNN
F 1 "Earth" H 2850 3650 50  0001 C CNN
F 2 "" H 2850 3800 50  0001 C CNN
F 3 "~" H 2850 3800 50  0001 C CNN
	1    2850 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 5450 8250 5450
Wire Wire Line
	8050 5750 8800 5750
Text Label 8100 5450 2    50   ~ 0
PWM
Text Label 8100 5750 2    50   ~ 0
PWM_Read
Text Label 8200 2550 2    50   ~ 0
Relay_2_Drive
Text Label 6450 7100 0    50   ~ 0
GFCI
Text Label 1750 6500 0    50   ~ 0
GFCI_Test
Wire Wire Line
	1100 4950 950  4950
Text Label 1000 4950 2    50   ~ 0
PWM
Text Label 2600 4750 0    50   ~ 0
Relay_1_Drive
Text Label 2600 4850 0    50   ~ 0
Relay_2_Drive
$Comp
L Device:CP C8
U 1 1 624705FA
P 4050 1100
F 0 "C8" H 4168 1146 50  0000 L CNN
F 1 "10uF" H 4168 1055 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D5.0mm_P2.50mm" H 4088 950 50  0001 C CNN
F 3 "~" H 4050 1100 50  0001 C CNN
	1    4050 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C9
U 1 1 62470A8C
P 4050 2200
F 0 "C9" H 4168 2246 50  0000 L CNN
F 1 "10uF" H 4168 2155 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D5.0mm_P2.50mm" H 4088 2050 50  0001 C CNN
F 3 "~" H 4050 2200 50  0001 C CNN
	1    4050 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2350 4050 2400
Wire Wire Line
	4050 2400 3800 2400
Connection ~ 3800 2400
Wire Wire Line
	3800 2400 3800 2350
Wire Wire Line
	4050 2050 4050 1650
Wire Wire Line
	4050 950  4050 900 
Wire Wire Line
	4050 900  3800 900 
Connection ~ 3800 900 
Wire Wire Line
	3800 900  3800 950 
Connection ~ 4050 1650
Wire Wire Line
	4050 1650 4050 1250
$Comp
L power:+5V #PWR04
U 1 1 624CB090
P 2800 3100
F 0 "#PWR04" H 2800 2950 50  0001 C CNN
F 1 "+5V" H 2815 3273 50  0000 C CNN
F 2 "" H 2800 3100 50  0001 C CNN
F 3 "" H 2800 3100 50  0001 C CNN
	1    2800 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3100 2800 3150
Wire Wire Line
	2800 3150 2600 3150
$Comp
L Device:R R20
U 1 1 624E539B
P 9100 5500
F 0 "R20" H 9030 5454 50  0000 R CNN
F 1 "22K" H 9030 5545 50  0000 R CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9030 5500 50  0001 C CNN
F 3 "~" H 9100 5500 50  0001 C CNN
	1    9100 5500
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 624F7A2D
P 9100 5350
F 0 "#PWR05" H 9100 5200 50  0001 C CNN
F 1 "+5V" H 9115 5523 50  0000 C CNN
F 2 "" H 9100 5350 50  0001 C CNN
F 3 "" H 9100 5350 50  0001 C CNN
	1    9100 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 6226FE50
P 3550 7000
F 0 "C2" H 3665 7046 50  0000 L CNN
F 1 "220nF" H 3665 6955 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 3588 6850 50  0001 C CNN
F 3 "~" H 3550 7000 50  0001 C CNN
	1    3550 7000
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 626380F9
P 4050 7000
F 0 "R4" V 3843 7000 50  0000 C CNN
F 1 "47K" V 3934 7000 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3980 7000 50  0001 C CNN
F 3 "~" H 4050 7000 50  0001 C CNN
	1    4050 7000
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 7000 4400 7000
Wire Wire Line
	3700 7000 3900 7000
$Comp
L Device:R R2
U 1 1 6226E832
P 2650 6450
F 0 "R2" V 2443 6450 50  0000 C CNN
F 1 "100K" V 2534 6450 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2580 6450 50  0001 C CNN
F 3 "~" H 2650 6450 50  0001 C CNN
	1    2650 6450
	0    1    1    0   
$EndComp
Wire Notes Line
	600  600  4450 600 
Wire Notes Line
	4450 2700 600  2700
Wire Notes Line
	600  2700 600  600 
Wire Notes Line
	4450 600  4450 2700
Wire Wire Line
	3000 3850 3000 3700
Wire Wire Line
	3000 3700 2850 3700
Wire Wire Line
	2850 3700 2850 3800
Wire Wire Line
	8800 5100 9450 5100
Wire Wire Line
	8800 5750 9100 5750
Wire Wire Line
	9100 5750 9100 5650
Connection ~ 8800 5750
Wire Notes Line
	3550 2800 3550 5700
Wire Notes Line
	3550 5700 600  5700
Wire Notes Line
	600  5700 600  2800
Wire Notes Line
	600  2800 3550 2800
Wire Wire Line
	800  1850 850  1850
Text Label 800  950  2    50   ~ 0
L_In
Text Label 800  1850 2    50   ~ 0
N_In
Wire Wire Line
	10750 1300 10800 1300
Wire Wire Line
	10750 1100 10800 1100
Wire Wire Line
	10750 3250 10800 3250
Wire Wire Line
	10750 3050 10800 3050
Text Label 10800 1300 0    50   ~ 0
N_Out
Text Label 10800 3250 0    50   ~ 0
L_Out
Text Label 10800 3050 0    50   ~ 0
L_In
Text Label 10800 1100 0    50   ~ 0
N_In
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 6292B417
P 10250 4800
F 0 "J3" H 10330 4746 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 10330 4701 50  0001 L CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02_Pitch2.54mm" H 10250 4800 50  0001 C CNN
F 3 "~" H 10250 4800 50  0001 C CNN
	1    10250 4800
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR06
U 1 1 6292D946
P 10000 5100
F 0 "#PWR06" H 10000 4850 50  0001 C CNN
F 1 "Earth" H 10000 4950 50  0001 C CNN
F 2 "" H 10000 5100 50  0001 C CNN
F 3 "~" H 10000 5100 50  0001 C CNN
	1    10000 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 4800 9850 4800
Connection ~ 9850 4800
Wire Wire Line
	10050 4900 10000 4900
Wire Wire Line
	10000 4900 10000 5100
Wire Notes Line
	7600 4100 10450 4100
Wire Notes Line
	10450 4100 10450 5800
Wire Notes Line
	10450 5800 7600 5800
Wire Notes Line
	7600 5800 7600 4100
Wire Wire Line
	10100 1950 10100 2100
Wire Wire Line
	10300 2150 10300 2100
Wire Wire Line
	10300 2100 10100 2100
Connection ~ 10100 2100
Wire Wire Line
	10100 2100 10100 2350
Text Label 8200 1750 2    50   ~ 0
Relay_1_Drive
Wire Wire Line
	8200 1750 9500 1750
Wire Wire Line
	8500 850  8500 900 
Wire Wire Line
	8500 900  8600 900 
Wire Wire Line
	9050 900  9500 900 
Connection ~ 9500 900 
Connection ~ 9500 3450
Wire Notes Line
	7600 600  7600 3900
Wire Notes Line
	7600 3900 11050 3900
Wire Notes Line
	11050 3900 11050 600 
Wire Notes Line
	7600 600  11050 600 
Wire Notes Line
	600  5800 6800 5800
Wire Notes Line
	6800 5800 6800 7600
Wire Notes Line
	6800 7600 600  7600
Wire Notes Line
	600  7600 600  5800
Wire Wire Line
	2850 4150 2850 4050
Wire Wire Line
	2850 4050 2500 4050
Wire Wire Line
	2850 4150 3050 4150
Wire Wire Line
	2500 4150 2750 4150
Wire Wire Line
	2750 4150 2750 4200
Wire Wire Line
	2750 4200 2950 4200
Wire Wire Line
	2950 4200 2950 4050
Wire Wire Line
	2950 4050 3050 4050
Wire Wire Line
	2500 4750 2600 4750
Wire Wire Line
	2600 4850 2500 4850
Wire Wire Line
	1100 4250 1000 4250
Text Label 1000 4250 2    50   ~ 0
GFCI
Wire Wire Line
	2500 3250 2600 3250
Wire Wire Line
	2600 3250 2600 3150
Connection ~ 2600 3150
Wire Wire Line
	2600 3150 2500 3150
Wire Wire Line
	1100 4350 1000 4350
Text Label 1000 4350 2    50   ~ 0
PWM_Read
Wire Wire Line
	1100 4850 950  4850
Text Label 950  4850 2    50   ~ 0
GFCI_Test
$Comp
L Device:Fuse F1
U 1 1 62587E31
P 800 1200
F 0 "F1" H 740 1154 50  0000 R CNN
F 1 "Fuse" H 740 1245 50  0000 R CNN
F 2 "Fuse_Holders_and_Fuses:Fuseholder5x20_horiz_open_lateral_Type-II" V 730 1200 50  0001 C CNN
F 3 "~" H 800 1200 50  0001 C CNN
	1    800  1200
	-1   0    0    1   
$EndComp
Wire Wire Line
	800  1350 800  1450
Wire Wire Line
	800  1450 850  1450
Wire Wire Line
	800  1050 800  950 
$Comp
L Device:R_POT_TRIM RV1
U 1 1 62601E30
P 3150 1450
F 0 "RV1" H 3100 1500 50  0000 R CNN
F 1 "5K" H 3080 1405 50  0000 R CNN
F 2 "Potentiometers:Potentiometer_Trimmer_Bourns_PV36W" H 3150 1450 50  0001 C CNN
F 3 "~" H 3150 1450 50  0001 C CNN
	1    3150 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT_TRIM RV2
U 1 1 626040FB
P 3150 1850
F 0 "RV2" H 3080 1804 50  0000 R CNN
F 1 "5K" H 3050 1900 50  0000 R CNN
F 2 "Potentiometers:Potentiometer_Trimmer_Bourns_PV36W" H 3150 1850 50  0001 C CNN
F 3 "~" H 3150 1850 50  0001 C CNN
	1    3150 1850
	-1   0    0    1   
$EndComp
Wire Wire Line
	2700 1650 2950 1650
Connection ~ 3150 2000
Connection ~ 3150 1300
Wire Wire Line
	3300 1450 3350 1450
Wire Wire Line
	3350 1450 3350 1650
Connection ~ 3350 1650
Wire Wire Line
	3150 1700 3150 1650
Connection ~ 3150 1650
Wire Wire Line
	3150 1650 3350 1650
Wire Wire Line
	3150 1650 3150 1600
Wire Wire Line
	3000 1850 2950 1850
Wire Wire Line
	2950 1850 2950 1650
Connection ~ 2950 1650
Wire Wire Line
	2950 1650 3150 1650
Wire Wire Line
	3350 1650 3800 1650
Connection ~ 3800 2000
Connection ~ 3800 1300
Wire Wire Line
	3800 1600 3800 1650
Connection ~ 3800 1650
Wire Wire Line
	3800 1650 4050 1650
Wire Wire Line
	3800 1650 3800 1700
Wire Wire Line
	4050 1650 4150 1650
Wire Wire Line
	4150 1650 4150 1700
$Comp
L power:+15V #PWR0112
U 1 1 6248CAF4
P 2300 950
F 0 "#PWR0112" H 2300 800 50  0001 C CNN
F 1 "+15V" H 2315 1123 50  0000 C CNN
F 2 "" H 2300 950 50  0001 C CNN
F 3 "" H 2300 950 50  0001 C CNN
	1    2300 950 
	1    0    0    -1  
$EndComp
Connection ~ 2300 950 
$Comp
L power:-15V #PWR0113
U 1 1 6248DDE5
P 2300 2350
F 0 "#PWR0113" H 2300 2450 50  0001 C CNN
F 1 "-15V" H 2315 2523 50  0000 C CNN
F 2 "" H 2300 2350 50  0001 C CNN
F 3 "" H 2300 2350 50  0001 C CNN
	1    2300 2350
	-1   0    0    1   
$EndComp
Connection ~ 2300 2350
$Comp
L power:+15V #PWR0115
U 1 1 6248EDB7
P 8500 850
F 0 "#PWR0115" H 8500 700 50  0001 C CNN
F 1 "+15V" H 8515 1023 50  0000 C CNN
F 2 "" H 8500 850 50  0001 C CNN
F 3 "" H 8500 850 50  0001 C CNN
	1    8500 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 2550 9500 2550
$Comp
L Transistor_BJT:BC337 Q2
U 1 1 624D7AF0
P 10000 2550
F 0 "Q2" H 10191 2596 50  0000 L CNN
F 1 "BC337" H 10191 2505 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 10200 2475 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 10000 2550 50  0001 L CNN
	1    10000 2550
	1    0    0    1   
$EndComp
$Comp
L power:+15V #PWR0106
U 1 1 624E3807
P 8500 3350
F 0 "#PWR0106" H 8500 3200 50  0001 C CNN
F 1 "+15V" H 8515 3523 50  0000 C CNN
F 2 "" H 8500 3350 50  0001 C CNN
F 3 "" H 8500 3350 50  0001 C CNN
	1    8500 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 6266B326
P 3800 1850
F 0 "R17" H 3730 1804 50  0000 R CNN
F 1 "2.2K" H 3730 1895 50  0000 R CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3730 1850 50  0001 C CNN
F 3 "~" H 3800 1850 50  0001 C CNN
	1    3800 1850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 6266DE12
P 3800 1450
F 0 "R3" H 3730 1404 50  0000 R CNN
F 1 "2.2K" H 3730 1495 50  0000 R CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3730 1450 50  0001 C CNN
F 3 "~" H 3800 1450 50  0001 C CNN
	1    3800 1450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R11
U 1 1 624E7990
P 1400 2400
F 0 "R11" V 1607 2400 50  0000 C CNN
F 1 "1K" V 1516 2400 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0309_L9.0mm_D3.2mm_P15.24mm_Horizontal" V 1330 2400 50  0001 C CNN
F 3 "~" H 1400 2400 50  0001 C CNN
	1    1400 2400
	0    -1   -1   0   
$EndComp
$Comp
L power:-15V #PWR0107
U 1 1 624E7D5F
P 1150 2450
F 0 "#PWR0107" H 1150 2550 50  0001 C CNN
F 1 "-15V" H 1165 2623 50  0000 C CNN
F 2 "" H 1150 2450 50  0001 C CNN
F 3 "" H 1150 2450 50  0001 C CNN
	1    1150 2450
	-1   0    0    1   
$EndComp
$Comp
L power:+15V #PWR0114
U 1 1 624E8003
P 1650 2300
F 0 "#PWR0114" H 1650 2150 50  0001 C CNN
F 1 "+15V" H 1665 2473 50  0000 C CNN
F 2 "" H 1650 2300 50  0001 C CNN
F 3 "" H 1650 2300 50  0001 C CNN
	1    1650 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 2450 1150 2400
Wire Wire Line
	1150 2400 1250 2400
Wire Wire Line
	1550 2400 1650 2400
Wire Wire Line
	1650 2400 1650 2300
$Comp
L Device:R R12
U 1 1 6251CAB4
P 6050 7100
F 0 "R12" V 5843 7100 50  0000 C CNN
F 1 "1K" V 5934 7100 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5980 7100 50  0001 C CNN
F 3 "~" H 6050 7100 50  0001 C CNN
	1    6050 7100
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 7100 6350 7100
Wire Wire Line
	6350 7100 6350 7150
Wire Wire Line
	6350 7100 6450 7100
Connection ~ 6350 7100
$Comp
L Diode:1N4148 D4
U 1 1 62277A17
P 5400 7100
F 0 "D4" H 5400 7000 50  0000 C CNN
F 1 "1N749A 4.3V Zener" H 5400 7200 50  0000 C CNN
F 2 "Diodes_ThroughHole:D_DO-35_SOD27_P7.62mm_Horizontal" H 5400 6925 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5400 7100 50  0001 C CNN
	1    5400 7100
	-1   0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM358 U3
U 1 1 6255DD4B
P 8550 4800
F 0 "U3" H 8700 5200 50  0000 C CNN
F 1 "LM358" H 8700 5100 50  0000 C CNN
F 2 "LM358AP:DIP794W45P254L959H508Q8" H 8550 4800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 8550 4800 50  0001 C CNN
	1    8550 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 4800 8900 4800
$Comp
L Amplifier_Operational:LM358 U3
U 2 1 62562FCF
P 4750 7100
F 0 "U3" H 4650 7100 50  0000 C CNN
F 1 "LM358" H 4850 7250 50  0000 C CNN
F 2 "LM358AP:DIP794W45P254L959H508Q8" H 4750 7100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 4750 7100 50  0001 C CNN
	2    4750 7100
	1    0    0    1   
$EndComp
Wire Wire Line
	8250 4900 8250 5450
Wire Wire Line
	7800 4700 7800 4750
Wire Wire Line
	7800 4700 7800 4650
Connection ~ 7800 4700
Wire Wire Line
	7800 4700 8250 4700
Wire Wire Line
	4450 7000 4400 7000
Connection ~ 4400 7000
Wire Wire Line
	4400 7200 4450 7200
Wire Wire Line
	5050 7100 5150 7100
Connection ~ 5150 7100
$Comp
L Diode:1N4148 D7
U 1 1 6268F20C
P 2950 3350
F 0 "D7" H 2950 3250 50  0000 C CNN
F 1 "1N749A 4.3V Zener" H 2950 3450 50  0000 C CNN
F 2 "Diodes_ThroughHole:D_DO-35_SOD27_P7.62mm_Horizontal" H 2950 3175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2950 3350 50  0001 C CNN
	1    2950 3350
	-1   0    0    1   
$EndComp
Wire Wire Line
	2500 3350 2800 3350
Wire Wire Line
	3300 3200 3300 3350
Wire Wire Line
	3300 3350 3100 3350
$EndSCHEMATC
