
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental /home/martin/Documents/XilinxProjects/DEBac/DEBac.srcs/utils_1/imports/synth_1/top_level.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2^
\/home/martin/Documents/XilinxProjects/DEBac/DEBac.srcs/utils_1/imports/synth_1/top_level.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
e
Command: %s
53*	vivadotcl24
2synth_design -top top_level -part xc7a100tcsg324-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7a100tZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7a100tZ17-349h px� 
E
Loading part %s157*device2
xc7a100tcsg324-1Z21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
7Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
O
#Helper process launched with PID %s4824*oasys2
340888Z8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2150.285 ; gain = 430.801 ; free physical = 991 ; free virtual = 52762
h px� 
�
synthesizing module '%s'638*oasys2
	top_level2]
Y/home/martin/Documents/XilinxProjects/DEBac/DEBac.srcs/sources_1/new/projekt_toplevel.vhd2
328@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
RIA_R12S
Q/home/martin/Documents/XilinxProjects/RIA_R1/RIA_R1.srcs/sources_1/new/RIA_R1.vhd2
42
RIA12
RIA_R12]
Y/home/martin/Documents/XilinxProjects/DEBac/DEBac.srcs/sources_1/new/projekt_toplevel.vhd2
2218@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
RIA_R12U
Q/home/martin/Documents/XilinxProjects/RIA_R1/RIA_R1.srcs/sources_1/new/RIA_R1.vhd2
308@Z8-638h px� 
�
default block is never used226*oasys2U
Q/home/martin/Documents/XilinxProjects/RIA_R1/RIA_R1.srcs/sources_1/new/RIA_R1.vhd2
538@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
RIA_R12
02
12U
Q/home/martin/Documents/XilinxProjects/RIA_R1/RIA_R1.srcs/sources_1/new/RIA_R1.vhd2
308@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
TickGenerator2R
P/home/martin/Documents/XilinxProjects/DEBac/DEBac.srcs/sources_1/new/clkmssm.vhd2
52
CLK2
TickGenerator2]
Y/home/martin/Documents/XilinxProjects/DEBac/DEBac.srcs/sources_1/new/projekt_toplevel.vhd2
2438@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
TickGenerator2T
P/home/martin/Documents/XilinxProjects/DEBac/DEBac.srcs/sources_1/new/clkmssm.vhd2
158@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
TickGenerator2
02
12T
P/home/martin/Documents/XilinxProjects/DEBac/DEBac.srcs/sources_1/new/clkmssm.vhd2
158@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Hodiny2S
Q/home/martin/Documents/XilinxProjects/Hodiny/Hodiny.srcs/sources_1/new/Hodiny.vhd2
52
HOD2
Hodiny2]
Y/home/martin/Documents/XilinxProjects/DEBac/DEBac.srcs/sources_1/new/projekt_toplevel.vhd2
2528@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
Hodiny2U
Q/home/martin/Documents/XilinxProjects/Hodiny/Hodiny.srcs/sources_1/new/Hodiny.vhd2
198@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Hodiny2
02
12U
Q/home/martin/Documents/XilinxProjects/Hodiny/Hodiny.srcs/sources_1/new/Hodiny.vhd2
198@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Stopky2S
Q/home/martin/Documents/XilinxProjects/stopky/stopky.srcs/sources_1/new/stopky.vhd2
52	
STOPKYx2
Stopky2]
Y/home/martin/Documents/XilinxProjects/DEBac/DEBac.srcs/sources_1/new/projekt_toplevel.vhd2
2658@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
Stopky2U
Q/home/martin/Documents/XilinxProjects/stopky/stopky.srcs/sources_1/new/stopky.vhd2
188@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Stopky2
02
12U
Q/home/martin/Documents/XilinxProjects/stopky/stopky.srcs/sources_1/new/stopky.vhd2
188@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
alarm2P
N/home/martin/Documents/XilinxProjects/alarm/alarm.srcs/sources_1/new/alarm.vhd2
52
ALARMx2
alarm2]
Y/home/martin/Documents/XilinxProjects/DEBac/DEBac.srcs/sources_1/new/projekt_toplevel.vhd2
2778@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
alarm2R
N/home/martin/Documents/XilinxProjects/alarm/alarm.srcs/sources_1/new/alarm.vhd2
198@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
alarm2
02
12R
N/home/martin/Documents/XilinxProjects/alarm/alarm.srcs/sources_1/new/alarm.vhd2
198@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
RIA_R22S
Q/home/martin/Documents/XilinxProjects/RIA_R2/RIA_R2.srcs/sources_1/new/RIA_R2.vhd2
52
RIA22
RIA_R22]
Y/home/martin/Documents/XilinxProjects/DEBac/DEBac.srcs/sources_1/new/projekt_toplevel.vhd2
2918@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
RIA_R22U
Q/home/martin/Documents/XilinxProjects/RIA_R2/RIA_R2.srcs/sources_1/new/RIA_R2.vhd2
228@Z8-638h px� 
�
default block is never used226*oasys2U
Q/home/martin/Documents/XilinxProjects/RIA_R2/RIA_R2.srcs/sources_1/new/RIA_R2.vhd2
308@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
RIA_R22
02
12U
Q/home/martin/Documents/XilinxProjects/RIA_R2/RIA_R2.srcs/sources_1/new/RIA_R2.vhd2
228@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
delic2P
N/home/martin/Documents/XilinxProjects/delic/delic.srcs/sources_1/new/delic.vhd2
52
DELICx2
delic2]
Y/home/martin/Documents/XilinxProjects/DEBac/DEBac.srcs/sources_1/new/projekt_toplevel.vhd2
3078@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
delic2R
N/home/martin/Documents/XilinxProjects/delic/delic.srcs/sources_1/new/delic.vhd2
208@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
delic2
02
12R
N/home/martin/Documents/XilinxProjects/delic/delic.srcs/sources_1/new/delic.vhd2
208@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

selektor2Y
W/home/martin/Documents/XilinxProjects/selektor/selektor.srcs/sources_1/new/selektor.vhd2
52
	SELEKTORx2

selektor2]
Y/home/martin/Documents/XilinxProjects/DEBac/DEBac.srcs/sources_1/new/projekt_toplevel.vhd2
3208@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

selektor2[
W/home/martin/Documents/XilinxProjects/selektor/selektor.srcs/sources_1/new/selektor.vhd2
218@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

selektor2
02
12[
W/home/martin/Documents/XilinxProjects/selektor/selektor.srcs/sources_1/new/selektor.vhd2
218@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2	
bin2seg2P
N/home/martin/Documents/XilinxProjects/DEBac/DEBac.srcs/sources_1/new/b2seg.vhd2
42

BIN2SEGx2	
bin2seg2]
Y/home/martin/Documents/XilinxProjects/DEBac/DEBac.srcs/sources_1/new/projekt_toplevel.vhd2
3348@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2	
bin2seg2R
N/home/martin/Documents/XilinxProjects/DEBac/DEBac.srcs/sources_1/new/b2seg.vhd2
128@Z8-638h px� 
�
default block is never used226*oasys2R
N/home/martin/Documents/XilinxProjects/DEBac/DEBac.srcs/sources_1/new/b2seg.vhd2
208@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2	
bin2seg2
02
12R
N/home/martin/Documents/XilinxProjects/DEBac/DEBac.srcs/sources_1/new/b2seg.vhd2
128@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	debouncer2V
T/home/martin/Documents/XilinxProjects/DEBac/DEBac.srcs/sources_1/new/debouncekod.vhd2
42
DEB12
	debouncer2]
Y/home/martin/Documents/XilinxProjects/DEBac/DEBac.srcs/sources_1/new/projekt_toplevel.vhd2
3478@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
	debouncer2X
T/home/martin/Documents/XilinxProjects/DEBac/DEBac.srcs/sources_1/new/debouncekod.vhd2
118@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	debouncer2
02
12X
T/home/martin/Documents/XilinxProjects/DEBac/DEBac.srcs/sources_1/new/debouncekod.vhd2
118@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	debouncer2V
T/home/martin/Documents/XilinxProjects/DEBac/DEBac.srcs/sources_1/new/debouncekod.vhd2
42
DEB22
	debouncer2]
Y/home/martin/Documents/XilinxProjects/DEBac/DEBac.srcs/sources_1/new/projekt_toplevel.vhd2
3558@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	debouncer2V
T/home/martin/Documents/XilinxProjects/DEBac/DEBac.srcs/sources_1/new/debouncekod.vhd2
42
DEB32
	debouncer2]
Y/home/martin/Documents/XilinxProjects/DEBac/DEBac.srcs/sources_1/new/projekt_toplevel.vhd2
3638@Z8-3491h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	top_level2
02
12]
Y/home/martin/Documents/XilinxProjects/DEBac/DEBac.srcs/sources_1/new/projekt_toplevel.vhd2
328@Z8-256h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 2225.254 ; gain = 505.770 ; free physical = 904 ; free virtual = 52676
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 2237.129 ; gain = 517.645 ; free physical = 901 ; free virtual = 52674
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 2237.129 ; gain = 517.645 ; free physical = 901 ; free virtual = 52674
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2237.1292
0.0002
9012
52674Z17-722h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2V
R/home/martin/Documents/XilinxProjects/DEBac/DEBac.srcs/constrs_1/new/nexys4ddr.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2V
R/home/martin/Documents/XilinxProjects/DEBac/DEBac.srcs/constrs_1/new/nexys4ddr.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2T
R/home/martin/Documents/XilinxProjects/DEBac/DEBac.srcs/constrs_1/new/nexys4ddr.xdc2
.Xil/top_level_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2394.8792
0.0002
8292
52601Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
 Constraint Validation Runtime : 2

00:00:002

00:00:002

2394.8792
0.0002
8292
52601Z17-722h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 2394.879 ; gain = 675.395 ; free physical = 903 ; free virtual = 52676
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Loading part: xc7a100tcsg324-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 2402.883 ; gain = 683.398 ; free physical = 903 ; free virtual = 52676
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 2402.883 ; gain = 683.398 ; free physical = 903 ; free virtual = 52676
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 2402.883 ; gain = 683.398 ; free physical = 914 ; free virtual = 52688
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   27 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   17 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   10 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    6 Bit       Adders := 9     
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit       Adders := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               27 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               17 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               10 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                6 Bit    Registers := 8     
h p
x
� 
H
%s
*synth20
.	                5 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 6     
h p
x
� 
H
%s
*synth20
.	                3 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 28    
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   10 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   3 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   7 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   3 Input    6 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input    6 Bit        Muxes := 12    
h p
x
� 
F
%s
*synth2.
,	   3 Input    5 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 11    
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 23    
h p
x
� 
F
%s
*synth2.
,	   3 Input    1 Bit        Muxes := 2     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
q
%s
*synth2Y
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 2402.883 ; gain = 683.398 ; free physical = 964 ; free virtual = 52742
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:23 ; elapsed = 00:00:23 . Memory (MB): peak = 2419.883 ; gain = 700.398 ; free physical = 910 ; free virtual = 52688
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:24 ; elapsed = 00:00:24 . Memory (MB): peak = 2452.906 ; gain = 733.422 ; free physical = 879 ; free virtual = 52657
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:24 ; elapsed = 00:00:25 . Memory (MB): peak = 2468.922 ; gain = 749.438 ; free physical = 864 ; free virtual = 52641
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:28 ; elapsed = 00:00:28 . Memory (MB): peak = 2606.734 ; gain = 887.250 ; free physical = 773 ; free virtual = 52551
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:28 ; elapsed = 00:00:28 . Memory (MB): peak = 2606.734 ; gain = 887.250 ; free physical = 773 ; free virtual = 52551
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:28 ; elapsed = 00:00:28 . Memory (MB): peak = 2606.734 ; gain = 887.250 ; free physical = 773 ; free virtual = 52551
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:28 ; elapsed = 00:00:28 . Memory (MB): peak = 2606.734 ; gain = 887.250 ; free physical = 773 ; free virtual = 52551
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:28 ; elapsed = 00:00:28 . Memory (MB): peak = 2606.734 ; gain = 887.250 ; free physical = 773 ; free virtual = 52551
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:28 ; elapsed = 00:00:28 . Memory (MB): peak = 2606.734 ; gain = 887.250 ; free physical = 773 ; free virtual = 52551
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!

Static Shift Register Report:
h p
x
� 
�
%s
*synth2{
y+------------+-------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
h p
x
� 
�
%s
*synth2|
z|Module Name | RTL Name    | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
h p
x
� 
�
%s
*synth2{
y+------------+-------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
h p
x
� 
�
%s
*synth2|
z|top_level   | DEB1/q5_reg | 5      | 1     | NO           | YES                | YES               | 1      | 0       | 
h p
x
� 
�
%s
*synth2|
z|top_level   | DEB2/q5_reg | 5      | 1     | NO           | YES                | YES               | 1      | 0       | 
h p
x
� 
�
%s
*synth2|
z|top_level   | DEB3/q5_reg | 5      | 1     | NO           | YES                | YES               | 1      | 0       | 
h p
x
� 
�
%s
*synth2|
z+------------+-------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|      |Cell   |Count |
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|1     |BUFG   |     1|
h px� 
2
%s*synth2
|2     |CARRY4 |    11|
h px� 
2
%s*synth2
|3     |LUT1   |    11|
h px� 
2
%s*synth2
|4     |LUT2   |    28|
h px� 
2
%s*synth2
|5     |LUT3   |    15|
h px� 
2
%s*synth2
|6     |LUT4   |    60|
h px� 
2
%s*synth2
|7     |LUT5   |    48|
h px� 
2
%s*synth2
|8     |LUT6   |    76|
h px� 
2
%s*synth2
|9     |MUXF7  |     1|
h px� 
2
%s*synth2
|10    |SRL16E |     3|
h px� 
2
%s*synth2
|11    |FDRE   |   151|
h px� 
2
%s*synth2
|12    |IBUF   |     8|
h px� 
2
%s*synth2
|13    |OBUF   |    15|
h px� 
2
%s*synth2
+------+-------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:28 ; elapsed = 00:00:28 . Memory (MB): peak = 2606.734 ; gain = 887.250 ; free physical = 773 ; free virtual = 52551
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:26 ; elapsed = 00:00:27 . Memory (MB): peak = 2606.734 ; gain = 729.500 ; free physical = 772 ; free virtual = 52551
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:28 ; elapsed = 00:00:28 . Memory (MB): peak = 2606.742 ; gain = 887.250 ; free physical = 772 ; free virtual = 52551
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002
00:00:00.012

2606.7422
0.0002
7722
52550Z17-722h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
12Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2662.7622
0.0002
9142
52692Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
U
%Synth Design complete | Checksum: %s
562*	vivadotcl2	
13042feZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
~
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
582
12
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
synth_design: 2

00:00:362

00:00:342

2662.7622	
978.9342
9142
52692Z17-722h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2

Physical2
PSS2=
;(MB): overall = 1590.236; main = 1586.843; forked = 268.785Z17-2834h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2	
Virtual2
VSS2>
<(MB): overall = 3973.660; main = 2662.766; forked = 1570.773Z17-2834h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2
00:00:00.012

00:00:002

2686.7732
0.0002
9122
52690Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2N
L/home/martin/Documents/XilinxProjects/DEBac/DEBac.runs/synth_1/top_level.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2]
[report_utilization -file top_level_utilization_synth.rpt -pb top_level_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Thu May  8 23:07:43 2025Z17-206h px� 


End Record