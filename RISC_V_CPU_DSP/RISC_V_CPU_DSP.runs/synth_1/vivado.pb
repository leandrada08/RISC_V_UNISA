
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:192

00:00:202	
547.2662	
229.211Z17-268h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
G
"No user IP repositories specified
1154*coregenZ19-1704h px� 
j
"Loaded Vivado IP repository '%s'.
1332*coregen2!
C:/Xilinx/Vivado/2024.1/data/ipZ19-2313h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/leand/Desktop/RISC_V_UNISA/RISC_V_CPU_DSP/RISC_V_CPU_DSP.srcs/utils_1/imports/synth_1/CPU_DSP.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2l
jC:/Users/leand/Desktop/RISC_V_UNISA/RISC_V_CPU_DSP/RISC_V_CPU_DSP.srcs/utils_1/imports/synth_1/CPU_DSP.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
v
Command: %s
53*	vivadotcl2E
Csynth_design -top CPU_DSP -part xc7a35tcpg236-1 -global_retiming onZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7a35tZ17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7a35tZ17-349h px� 
D
Loading part %s157*device2
xc7a35tcpg236-1Z21-403h px� 
Z
$Part: %s does not have CEAM library.966*device2
xc7a35tcpg236-1Z21-9227h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
M
#Helper process launched with PID %s4824*oasys2
7548Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:14 ; elapsed = 00:00:14 . Memory (MB): peak = 1438.160 ; gain = 447.672
h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
reset2
wire22
.C:/Users/leand/Desktop/RISC_V_UNISA/CPU_DSP.sv2
648@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2

out_data2
wire22
.C:/Users/leand/Desktop/RISC_V_UNISA/CPU_DSP.sv2
998@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
locked2
wire22
.C:/Users/leand/Desktop/RISC_V_UNISA/CPU_DSP.sv2
1248@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2

select_out2
wire22
.C:/Users/leand/Desktop/RISC_V_UNISA/CPU_DSP.sv2
1318@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
sel_in2
wire22
.C:/Users/leand/Desktop/RISC_V_UNISA/CPU_DSP.sv2
1408@Z8-11241h px� 
�
synthesizing module '%s'%s4497*oasys2	
CPU_DSP2
 22
.C:/Users/leand/Desktop/RISC_V_UNISA/CPU_DSP.sv2
18@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
CPU_pipeline2
 26
2C:/Users/leand/Desktop/RISC_V_UNISA/CPU_pipeline.v2
18@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
IF2
 2/
+C:/Users/leand/Desktop/RISC_V_UNISA/IF/IF.v2
18@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
MUX322
 26
2C:/Users/leand/Desktop/RISC_V_UNISA/COMMON/MUX32.v2
38@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
MUX322
 2
02
126
2C:/Users/leand/Desktop/RISC_V_UNISA/COMMON/MUX32.v2
38@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ADD42
 21
-C:/Users/leand/Desktop/RISC_V_UNISA/IF/ADD4.v2
28@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ADD42
 2
02
121
-C:/Users/leand/Desktop/RISC_V_UNISA/IF/ADD4.v2
28@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
PC2
 2/
+C:/Users/leand/Desktop/RISC_V_UNISA/IF/PC.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
PC2
 2
02
12/
+C:/Users/leand/Desktop/RISC_V_UNISA/IF/PC.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

MEM_INST2
 25
1C:/Users/leand/Desktop/RISC_V_UNISA/IF/MEM_INST.v2
38@Z8-6157h px� 
�
,$readmem data file '%s' is read successfully3426*oasys2	
mem.mem25
1C:/Users/leand/Desktop/RISC_V_UNISA/IF/MEM_INST.v2
118@Z8-3876h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

MEM_INST2
 2
02
125
1C:/Users/leand/Desktop/RISC_V_UNISA/IF/MEM_INST.v2
38@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
IF2
 2
02
12/
+C:/Users/leand/Desktop/RISC_V_UNISA/IF/IF.v2
18@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
312
	o_address2
322
IF26
2C:/Users/leand/Desktop/RISC_V_UNISA/CPU_pipeline.v2
1188@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2
ID2
 2/
+C:/Users/leand/Desktop/RISC_V_UNISA/ID/ID.v2
28@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
GENERADOR_CONSTANTE2
 2@
<C:/Users/leand/Desktop/RISC_V_UNISA/ID/GENERADOR_CONSTANTE.v2
28@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
GENERADOR_CONSTANTE2
 2
02
12@
<C:/Users/leand/Desktop/RISC_V_UNISA/ID/GENERADOR_CONSTANTE.v2
28@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
	REGISTERS2
 26
2C:/Users/leand/Desktop/RISC_V_UNISA/ID/REGISTERS.v2
38@Z8-6157h px� 

default block is never used226*oasys26
2C:/Users/leand/Desktop/RISC_V_UNISA/ID/REGISTERS.v2
598@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	REGISTERS2
 2
02
126
2C:/Users/leand/Desktop/RISC_V_UNISA/ID/REGISTERS.v2
38@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2	
CONTROL2
 24
0C:/Users/leand/Desktop/RISC_V_UNISA/ID/CONTROL.v2
28@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
CONTROL2
 2
02
124
0C:/Users/leand/Desktop/RISC_V_UNISA/ID/CONTROL.v2
28@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ALU_CONTROL2
 28
4C:/Users/leand/Desktop/RISC_V_UNISA/ID/ALU_CONTROL.v2
38@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ALU_CONTROL2
 2
02
128
4C:/Users/leand/Desktop/RISC_V_UNISA/ID/ALU_CONTROL.v2
38@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ID2
 2
02
12/
+C:/Users/leand/Desktop/RISC_V_UNISA/ID/ID.v2
28@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
EX2
 2/
+C:/Users/leand/Desktop/RISC_V_UNISA/EX/EX.v2
28@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
ALU2
 21
-C:/Users/leand/Desktop/RISC_V_UNISA/EX/ALU.sv2
38@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ALU2
 2
02
121
-C:/Users/leand/Desktop/RISC_V_UNISA/EX/ALU.sv2
38@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ADD2
 20
,C:/Users/leand/Desktop/RISC_V_UNISA/EX/ADD.v2
38@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ADD2
 2
02
120
,C:/Users/leand/Desktop/RISC_V_UNISA/EX/ADD.v2
38@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
EX2
 2
02
12/
+C:/Users/leand/Desktop/RISC_V_UNISA/EX/EX.v2
28@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
MEM2
 21
-C:/Users/leand/Desktop/RISC_V_UNISA/MEM/MEM.v2
48@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
BRANCH2
 24
0C:/Users/leand/Desktop/RISC_V_UNISA/MEM/BRANCH.v2
38@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BRANCH2
 2
02
124
0C:/Users/leand/Desktop/RISC_V_UNISA/MEM/BRANCH.v2
38@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

MEM_DATA2
 26
2C:/Users/leand/Desktop/RISC_V_UNISA/MEM/MEM_DATA.v2
48@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

MEM_DATA2
 2
02
126
2C:/Users/leand/Desktop/RISC_V_UNISA/MEM/MEM_DATA.v2
48@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
MEM2
 2
02
121
-C:/Users/leand/Desktop/RISC_V_UNISA/MEM/MEM.v2
48@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
CPU_pipeline2
 2
02
126
2C:/Users/leand/Desktop/RISC_V_UNISA/CPU_pipeline.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
DSP2
 22
.C:/Users/leand/Desktop/RISC_V_UNISA/DSP/DSP.sv2
78@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
SUM2
 21
-C:/Users/leand/Desktop/RISC_V_UNISA/DSP/SUM.v2
38@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
SUM2
 2
02
121
-C:/Users/leand/Desktop/RISC_V_UNISA/DSP/SUM.v2
38@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
MULT2
 22
.C:/Users/leand/Desktop/RISC_V_UNISA/DSP/MULT.v2
38@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
MULT2
 2
02
122
.C:/Users/leand/Desktop/RISC_V_UNISA/DSP/MULT.v2
38@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
SUB2
 21
-C:/Users/leand/Desktop/RISC_V_UNISA/DSP/SUB.v2
38@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
SUB2
 2
02
121
-C:/Users/leand/Desktop/RISC_V_UNISA/DSP/SUB.v2
38@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
DSP2
 2
02
122
.C:/Users/leand/Desktop/RISC_V_UNISA/DSP/DSP.sv2
78@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2	
MEM_DSP2
 2:
6C:/Users/leand/Desktop/RISC_V_UNISA/CPU_DSP/MEM_DSP.sv2
28@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
MEM_DSP2
 2
02
12:
6C:/Users/leand/Desktop/RISC_V_UNISA/CPU_DSP/MEM_DSP.sv2
28@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

clk_mmcm2
 2p
lc:/Users/leand/Desktop/RISC_V_UNISA/RISC_V_CPU_DSP/RISC_V_CPU_DSP.gen/sources_1/bd/clk_mmcm/synth/clk_mmcm.v2
138@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
clk_mmcm_clk_wiz_0_02
 2�
�C:/Users/leand/Desktop/RISC_V_UNISA/RISC_V_CPU_DSP/RISC_V_CPU_DSP.runs/synth_1/.Xil/Vivado-2568-leandrada08/realtime/clk_mmcm_clk_wiz_0_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
clk_mmcm_clk_wiz_0_02
 2
02
12�
�C:/Users/leand/Desktop/RISC_V_UNISA/RISC_V_CPU_DSP/RISC_V_CPU_DSP.runs/synth_1/.Xil/Vivado-2568-leandrada08/realtime/clk_mmcm_clk_wiz_0_0_stub.v2
68@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

clk_mmcm2
 2
02
12p
lc:/Users/leand/Desktop/RISC_V_UNISA/RISC_V_CPU_DSP/RISC_V_CPU_DSP.gen/sources_1/bd/clk_mmcm/synth/clk_mmcm.v2
138@Z8-6155h px� 
�
Fall outputs are unconnected for this instance and logic may be removed3605*oasys22
.C:/Users/leand/Desktop/RISC_V_UNISA/CPU_DSP.sv2
1298@Z8-4446h px� 
�
synthesizing module '%s'%s4497*oasys2
ila2
 2f
bc:/Users/leand/Desktop/RISC_V_UNISA/RISC_V_CPU_DSP/RISC_V_CPU_DSP.gen/sources_1/bd/ila/synth/ila.v2
138@Z8-6157h px� 
�
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2f
bc:/Users/leand/Desktop/RISC_V_UNISA/RISC_V_CPU_DSP/RISC_V_CPU_DSP.gen/sources_1/bd/ila/synth/ila.v2
298@Z8-4446h px� 
�
synthesizing module '%s'%s4497*oasys2
ila_ila_0_02
 2�
�C:/Users/leand/Desktop/RISC_V_UNISA/RISC_V_CPU_DSP/RISC_V_CPU_DSP.runs/synth_1/.Xil/Vivado-2568-leandrada08/realtime/ila_ila_0_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ila_ila_0_02
 2
02
12�
�C:/Users/leand/Desktop/RISC_V_UNISA/RISC_V_CPU_DSP/RISC_V_CPU_DSP.runs/synth_1/.Xil/Vivado-2568-leandrada08/realtime/ila_ila_0_0_stub.v2
68@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ila2
 2
02
12f
bc:/Users/leand/Desktop/RISC_V_UNISA/RISC_V_CPU_DSP/RISC_V_CPU_DSP.gen/sources_1/bd/ila/synth/ila.v2
138@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
12

probe0_02
42
ila22
.C:/Users/leand/Desktop/RISC_V_UNISA/CPU_DSP.sv2
1318@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
12

probe1_02
322
ila22
.C:/Users/leand/Desktop/RISC_V_UNISA/CPU_DSP.sv2
1328@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2
vio2
 2f
bc:/Users/leand/Desktop/RISC_V_UNISA/RISC_V_CPU_DSP/RISC_V_CPU_DSP.gen/sources_1/bd/vio/synth/vio.v2
138@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
vio_vio_0_02
 2�
�C:/Users/leand/Desktop/RISC_V_UNISA/RISC_V_CPU_DSP/RISC_V_CPU_DSP.runs/synth_1/.Xil/Vivado-2568-leandrada08/realtime/vio_vio_0_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
vio_vio_0_02
 2
02
12�
�C:/Users/leand/Desktop/RISC_V_UNISA/RISC_V_CPU_DSP/RISC_V_CPU_DSP.runs/synth_1/.Xil/Vivado-2568-leandrada08/realtime/vio_vio_0_0_stub.v2
68@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
vio2
 2
02
12f
bc:/Users/leand/Desktop/RISC_V_UNISA/RISC_V_CPU_DSP/RISC_V_CPU_DSP.gen/sources_1/bd/vio/synth/vio.v2
138@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
12
probe_in0_02
322
vio22
.C:/Users/leand/Desktop/RISC_V_UNISA/CPU_DSP.sv2
1378@Z8-689h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
CPU_DSP2
 2
02
122
.C:/Users/leand/Desktop/RISC_V_UNISA/CPU_DSP.sv2
18@Z8-6155h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
data_reg[3327]2

MEM_DATA26
2C:/Users/leand/Desktop/RISC_V_UNISA/MEM/MEM_DATA.v2
228@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
operation_aux_reg2
DSP22
.C:/Users/leand/Desktop/RISC_V_UNISA/DSP/DSP.sv2
798@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
result_reg[7]2
DSP22
.C:/Users/leand/Desktop/RISC_V_UNISA/DSP/DSP.sv2
1518@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
result_reg[6]2
DSP22
.C:/Users/leand/Desktop/RISC_V_UNISA/DSP/DSP.sv2
1518@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
result_reg[5]2
DSP22
.C:/Users/leand/Desktop/RISC_V_UNISA/DSP/DSP.sv2
1518@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
result_reg[4]2
DSP22
.C:/Users/leand/Desktop/RISC_V_UNISA/DSP/DSP.sv2
1518@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
result_reg[3]2
DSP22
.C:/Users/leand/Desktop/RISC_V_UNISA/DSP/DSP.sv2
1518@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
result_reg[2]2
DSP22
.C:/Users/leand/Desktop/RISC_V_UNISA/DSP/DSP.sv2
1518@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
result_reg[1]2
DSP22
.C:/Users/leand/Desktop/RISC_V_UNISA/DSP/DSP.sv2
1518@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
result_reg[0]2
DSP22
.C:/Users/leand/Desktop/RISC_V_UNISA/DSP/DSP.sv2
1518@Z8-7137h px� 
�
fMark debug on the nets applies keep_hierarchy on instance '%s'. This will prevent further optimization4399*oasys2
ila_02f
bc:/Users/leand/Desktop/RISC_V_UNISA/RISC_V_CPU_DSP/RISC_V_CPU_DSP.gen/sources_1/bd/ila/synth/ila.v2
298@Z8-6071h px� 
�
fMark debug on the nets applies keep_hierarchy on instance '%s'. This will prevent further optimization4399*oasys2
vio_02f
bc:/Users/leand/Desktop/RISC_V_UNISA/RISC_V_CPU_DSP/RISC_V_CPU_DSP.gen/sources_1/bd/vio/synth/vio.v2
378@Z8-6071h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2

o_out_data2	
CPU_DSP22
.C:/Users/leand/Desktop/RISC_V_UNISA/CPU_DSP.sv2
58@Z8-3848h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
instruccion[19]2
GENERADOR_CONSTANTEZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
instruccion[18]2
GENERADOR_CONSTANTEZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
instruccion[17]2
GENERADOR_CONSTANTEZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
instruccion[16]2
GENERADOR_CONSTANTEZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
instruccion[15]2
GENERADOR_CONSTANTEZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[31]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[30]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[29]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[28]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[27]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[26]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[25]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[24]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[23]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[22]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[21]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[20]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[19]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[18]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[17]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[16]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[15]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[14]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[13]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[12]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[11]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[10]2	
CPU_DSPZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[9]2	
CPU_DSPZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[8]2	
CPU_DSPZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[7]2	
CPU_DSPZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[6]2	
CPU_DSPZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[5]2	
CPU_DSPZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[4]2	
CPU_DSPZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[3]2	
CPU_DSPZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[2]2	
CPU_DSPZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[1]2	
CPU_DSPZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[0]2	
CPU_DSPZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_select_out[3]2	
CPU_DSPZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_select_out[2]2	
CPU_DSPZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_select_out[1]2	
CPU_DSPZ8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 1608.289 ; gain = 617.801
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 1608.289 ; gain = 617.801
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 1608.289 ; gain = 617.801
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.4162

1608.2892
0.000Z17-268h px� 
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
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/leand/Desktop/RISC_V_UNISA/RISC_V_CPU_DSP/RISC_V_CPU_DSP.gen/sources_1/bd/vio/ip/vio_vio_0_0_1/vio_vio_0_0/vio_vio_0_0_in_context.xdc2
u_vio/vio_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/leand/Desktop/RISC_V_UNISA/RISC_V_CPU_DSP/RISC_V_CPU_DSP.gen/sources_1/bd/vio/ip/vio_vio_0_0_1/vio_vio_0_0/vio_vio_0_0_in_context.xdc2
u_vio/vio_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/leand/Desktop/RISC_V_UNISA/RISC_V_CPU_DSP/RISC_V_CPU_DSP.gen/sources_1/bd/ila/ip/ila_ila_0_0/ila_ila_0_0/ila_ila_0_0_in_context.xdc2
u_ila/ila_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/leand/Desktop/RISC_V_UNISA/RISC_V_CPU_DSP/RISC_V_CPU_DSP.gen/sources_1/bd/ila/ip/ila_ila_0_0/ila_ila_0_0/ila_ila_0_0_in_context.xdc2
u_ila/ila_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/leand/Desktop/RISC_V_UNISA/RISC_V_CPU_DSP/RISC_V_CPU_DSP.gen/sources_1/bd/clk_mmcm/ip/clk_mmcm_clk_wiz_0_0_3/clk_mmcm_clk_wiz_0_0/clk_mmcm_clk_wiz_0_0_in_context.xdc2
MMCM/clk_wiz_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/leand/Desktop/RISC_V_UNISA/RISC_V_CPU_DSP/RISC_V_CPU_DSP.gen/sources_1/bd/clk_mmcm/ip/clk_mmcm_clk_wiz_0_0_3/clk_mmcm_clk_wiz_0_0/clk_mmcm_clk_wiz_0_0_in_context.xdc2
MMCM/clk_wiz_0	8Z20-847h px� 
~
Parsing XDC File [%s]
179*designutils2=
9C:/Users/leand/Desktop/RISC_V_UNISA/Arty-A7-35-Master.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2=
9C:/Users/leand/Desktop/RISC_V_UNISA/Arty-A7-35-Master.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2;
9C:/Users/leand/Desktop/RISC_V_UNISA/Arty-A7-35-Master.xdc2
.Xil/CPU_DSP_propImpl.xdcZ1-236h px� 
�
Parsing XDC File [%s]
179*designutils2a
]C:/Users/leand/Desktop/RISC_V_UNISA/RISC_V_CPU_DSP/RISC_V_CPU_DSP.runs/synth_1/dont_touch.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2a
]C:/Users/leand/Desktop/RISC_V_UNISA/RISC_V_CPU_DSP/RISC_V_CPU_DSP.runs/synth_1/dont_touch.xdc8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0072

1710.5472
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.1722

1710.5472
0.000Z17-268h px� 
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
Finished Constraint Validation : Time (s): cpu = 00:00:50 ; elapsed = 00:00:51 . Memory (MB): peak = 1710.547 ; gain = 720.059
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
8
%s
*synth2 
Loading part: xc7a35tcpg236-1
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:50 ; elapsed = 00:00:51 . Memory (MB): peak = 1710.547 ; gain = 720.059
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:50 ; elapsed = 00:00:51 . Memory (MB): peak = 1710.547 ; gain = 720.059
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
g
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2
DSPZ8-802h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                    IDLE |                               00 |                              000
h p
x
� 
y
%s
*synth2a
_                    LOAD |                               01 |                              001
h p
x
� 
y
%s
*synth2a
_                 EXECUTE |                               10 |                              010
h p
x
� 
y
%s
*synth2a
_                    DONE |                               11 |                              011
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2

sequential2
DSPZ8-3354h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:01:00 ; elapsed = 00:01:04 . Memory (MB): peak = 1710.547 ; gain = 720.059
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
,	   2 Input   64 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   48 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   33 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   3 Input   33 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit       Adders := 4     
h p
x
� 
F
%s
*synth2.
,	   3 Input   32 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   3 Input    4 Bit       Adders := 1     
h p
x
� 
&
%s
*synth2
+---XORs : 
h p
x
� 
H
%s
*synth20
.	   2 Input     32 Bit         XORs := 1     
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
.	               32 Bit    Registers := 366   
h p
x
� 
H
%s
*synth20
.	                5 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                3 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 7     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 18    
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
,	   3 Input   48 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   48 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 37    
h p
x
� 
F
%s
*synth2.
,	  98 Input   32 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   3 Input   32 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   4 Input   32 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   4 Input    4 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit        Muxes := 9     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   5 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    2 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   5 Input    1 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 44    
h p
x
� 
F
%s
*synth2.
,	  32 Input    1 Bit        Muxes := 32    
h p
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 24    
h p
x
� 
F
%s
*synth2.
,	   8 Input    1 Bit        Muxes := 25    
h p
x
� 
F
%s
*synth2.
,	   7 Input    1 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   6 Input    1 Bit        Muxes := 1     
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
p
%s
*synth2X
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
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
W
%s
*synth2?
=DSP Report: Generating DSP mult_aux, operation Mode is: A*B.
h p
x
� 
W
%s
*synth2?
=DSP Report: operator mult_aux is absorbed into DSP mult_aux.
h p
x
� 
W
%s
*synth2?
=DSP Report: operator mult_aux is absorbed into DSP mult_aux.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP mult_aux, operation Mode is: (PCIN>>17)+A*B.
h p
x
� 
W
%s
*synth2?
=DSP Report: operator mult_aux is absorbed into DSP mult_aux.
h p
x
� 
W
%s
*synth2?
=DSP Report: operator mult_aux is absorbed into DSP mult_aux.
h p
x
� 
W
%s
*synth2?
=DSP Report: Generating DSP mult_aux, operation Mode is: A*B.
h p
x
� 
W
%s
*synth2?
=DSP Report: operator mult_aux is absorbed into DSP mult_aux.
h p
x
� 
W
%s
*synth2?
=DSP Report: operator mult_aux is absorbed into DSP mult_aux.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP mult_aux, operation Mode is: (PCIN>>17)+A*B.
h p
x
� 
W
%s
*synth2?
=DSP Report: operator mult_aux is absorbed into DSP mult_aux.
h p
x
� 
W
%s
*synth2?
=DSP Report: operator mult_aux is absorbed into DSP mult_aux.
h p
x
� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[31]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[30]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[29]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[28]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[27]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[26]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[25]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[24]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[23]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[22]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[21]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[20]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[19]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[18]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[17]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[16]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[15]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[14]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[13]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[12]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[11]2	
CPU_DSPZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[10]2	
CPU_DSPZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[9]2	
CPU_DSPZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[8]2	
CPU_DSPZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[7]2	
CPU_DSPZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[6]2	
CPU_DSPZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[5]2	
CPU_DSPZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[4]2	
CPU_DSPZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[3]2	
CPU_DSPZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[2]2	
CPU_DSPZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[1]2	
CPU_DSPZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_out_data[0]2	
CPU_DSPZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_select_out[3]2	
CPU_DSPZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_select_out[2]2	
CPU_DSPZ8-7129h px� 
y
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_select_out[1]2	
CPU_DSPZ8-7129h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:02:05 ; elapsed = 00:02:13 . Memory (MB): peak = 1710.547 ; gain = 720.059
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
b
%s
*synth2J
H Sort Area is CPU_DSP__GC0 mult_aux_0 : 0 0 : 2701 4861 : Used 1 time 0
h p
x
� 
b
%s
*synth2J
H Sort Area is CPU_DSP__GC0 mult_aux_0 : 0 1 : 2160 4861 : Used 1 time 0
h p
x
� 
b
%s
*synth2J
H Sort Area is CPU_DSP__GC0 mult_aux_3 : 0 0 : 2158 3958 : Used 1 time 0
h p
x
� 
b
%s
*synth2J
H Sort Area is CPU_DSP__GC0 mult_aux_3 : 0 1 : 1800 3958 : Used 1 time 0
h p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
v
%s*synth2^
\
DSP: Preliminary Mapping Report (see note below. The ' indicates corresponding REG is set)
h px� 
�
%s*synth2�
+------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h px� 
�
%s*synth2�
�|Module Name | DSP Mapping    | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
h px� 
�
%s*synth2�
+------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h px� 
�
%s*synth2�
�|MULT        | A*B            | 18     | 15     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|MULT        | (PCIN>>17)+A*B | 15     | 15     | -      | -      | 30     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|MULT        | A*B            | 18     | 18     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|MULT        | (PCIN>>17)+A*B | 18     | 15     | -      | -      | 47     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�+------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

h px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:02:40 ; elapsed = 00:02:50 . Memory (MB): peak = 1710.547 ; gain = 720.059
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
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:02:50 ; elapsed = 00:03:00 . Memory (MB): peak = 1710.547 ; gain = 720.059
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
x
Retiming module %s4230*oasys2B
@`clk_mmcm`
	Numbers of forward move = 0, and backward move = 0

Z8-5816h px� 
I
Retiming module %s4230*oasys2
`clk_mmcm' done

Z8-5816h px� 
s
Retiming module %s4230*oasys2=
;`ila`
	Numbers of forward move = 0, and backward move = 0

Z8-5816h px� 
D
Retiming module %s4230*oasys2
`ila' done

Z8-5816h px� 
s
Retiming module %s4230*oasys2=
;`vio`
	Numbers of forward move = 0, and backward move = 0

Z8-5816h px� 
D
Retiming module %s4230*oasys2
`vio' done

Z8-5816h px� 
�
Retiming module %s4230*oasys2�
�`CPU_DSP`
  9094 registers are not movable due to multiple clocks detected on the clock pin of these registers
	Numbers of forward move = 0, and backward move = 0

Z8-5816h px� 
H
Retiming module %s4230*oasys2
`CPU_DSP' done

Z8-5816h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:03:20 ; elapsed = 00:03:30 . Memory (MB): peak = 1916.453 ; gain = 925.965
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
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2&
$dsp_core/FSM_sequential_state_reg[1]2	
CPU_DSPZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(dsp_core/FSM_sequential_state_reg[0]_inv2	
CPU_DSPZ8-3332h px� 
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
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:03:32 ; elapsed = 00:03:43 . Memory (MB): peak = 1916.453 ; gain = 925.965
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:03:32 ; elapsed = 00:03:43 . Memory (MB): peak = 1916.453 ; gain = 925.965
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:03:35 ; elapsed = 00:03:46 . Memory (MB): peak = 1916.453 ; gain = 925.965
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:03:35 ; elapsed = 00:03:46 . Memory (MB): peak = 1916.453 ; gain = 925.965
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:03:35 ; elapsed = 00:03:46 . Memory (MB): peak = 1916.453 ; gain = 925.965
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:03:35 ; elapsed = 00:03:46 . Memory (MB): peak = 1916.453 ; gain = 925.965
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
D
%s
*synth2,
*+------+---------------------+----------+
h p
x
� 
D
%s
*synth2,
*|      |BlackBox name        |Instances |
h p
x
� 
D
%s
*synth2,
*+------+---------------------+----------+
h p
x
� 
D
%s
*synth2,
*|1     |clk_mmcm_clk_wiz_0_0 |         1|
h p
x
� 
D
%s
*synth2,
*|2     |ila_ila_0_0          |         1|
h p
x
� 
D
%s
*synth2,
*|3     |vio_vio_0_0          |         1|
h p
x
� 
D
%s
*synth2,
*+------+---------------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
>
%s*synth2&
$+------+-------------------+------+
h px� 
>
%s*synth2&
$|      |Cell               |Count |
h px� 
>
%s*synth2&
$+------+-------------------+------+
h px� 
>
%s*synth2&
$|1     |clk_mmcm_clk_wiz_0 |     1|
h px� 
>
%s*synth2&
$|2     |ila_ila_0          |     1|
h px� 
>
%s*synth2&
$|3     |vio_vio_0          |     1|
h px� 
>
%s*synth2&
$|4     |CARRY4             |    32|
h px� 
>
%s*synth2&
$|5     |LUT1               |    31|
h px� 
>
%s*synth2&
$|6     |LUT2               |    52|
h px� 
>
%s*synth2&
$|7     |LUT3               |   102|
h px� 
>
%s*synth2&
$|8     |LUT4               |   101|
h px� 
>
%s*synth2&
$|9     |LUT5               |   214|
h px� 
>
%s*synth2&
$|10    |LUT6               |  2956|
h px� 
>
%s*synth2&
$|11    |MUXF7              |  1156|
h px� 
>
%s*synth2&
$|12    |MUXF8              |   544|
h px� 
>
%s*synth2&
$|13    |FDCE               |  8658|
h px� 
>
%s*synth2&
$|14    |FDRE               |   575|
h px� 
>
%s*synth2&
$|15    |FDSE               |     1|
h px� 
>
%s*synth2&
$|16    |IBUF               |     2|
h px� 
>
%s*synth2&
$|17    |OBUFT              |    32|
h px� 
>
%s*synth2&
$+------+-------------------+------+
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:03:36 ; elapsed = 00:03:46 . Memory (MB): peak = 1916.453 ; gain = 925.965
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
a
%s
*synth2I
GSynthesis finished with 0 errors, 0 critical warnings and 38 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:03:01 ; elapsed = 00:03:33 . Memory (MB): peak = 1916.453 ; gain = 823.707
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:03:36 ; elapsed = 00:03:47 . Memory (MB): peak = 1916.453 ; gain = 925.965
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:012
00:00:00.2672

1916.4532
0.000Z17-268h px� 
V
-Analyzing %s Unisim elements for replacement
17*netlist2
1732Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
�
�Netlist '%s' is not ideal for floorplanning, since the cellview '%s' contains a large number of primitives.  Please consider enabling hierarchy in synthesis if you want to do floorplanning.
310*netlist2	
CPU_DSP2

MEM_DATAZ29-101h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
U
1Inserted %s IBUFs to IO ports without IO buffers.100*opt2
1Z31-140h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0092

1916.4532
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

3fb24325Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1032
962
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:04:022

00:04:172

1916.4532

1318.406Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:012
00:00:00.1242

1916.4532
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2\
ZC:/Users/leand/Desktop/RISC_V_UNISA/RISC_V_CPU_DSP/RISC_V_CPU_DSP.runs/synth_1/CPU_DSP.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2Y
Wreport_utilization -file CPU_DSP_utilization_synth.rpt -pb CPU_DSP_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Mon Sep 23 15:37:40 2024Z17-206h px� 


End Record