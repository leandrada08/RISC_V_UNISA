## Clock signal
set_property -dict { PACKAGE_PIN L17    IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L12P_T1_MRCC_35 Sch=gclk[100]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { clk }];

## Reset input
set_property -dict { PACKAGE_PIN A18    IOSTANDARD LVCMOS33 } [get_ports { i_reset }]; #IO_L6N_T0_VREF_16 Sch=btn[0]

## Input select lines
set_property -dict { PACKAGE_PIN V4    IOSTANDARD LVCMOS33 } [get_ports { i_select_out[0] }]; #IO_L12N_T1_MRCC_16 Sch=sw[0]
set_property -dict { PACKAGE_PIN U4   IOSTANDARD LVCMOS33 } [get_ports { i_select_out[1] }]; #IO_L13P_T2_MRCC_16 Sch=sw[1]
set_property -dict { PACKAGE_PIN V5   IOSTANDARD LVCMOS33 } [get_ports { i_select_out[2] }]; #IO_L13N_T2_MRCC_16 Sch=sw[2]
set_property -dict { PACKAGE_PIN W4   IOSTANDARD LVCMOS33 } [get_ports { i_select_out[3] }]; #IO_L14P_T2_SRCC_16 Sch=sw[3]

## Output data (o_out_data[31:0]) mapped to PMOD headers JA, JB, JC, and JD

## PMOD Header JA
set_property -dict { PACKAGE_PIN M3   IOSTANDARD LVCMOS33 } [get_ports { o_out_data[0] }]; 
set_property -dict { PACKAGE_PIN L3   IOSTANDARD LVCMOS33 } [get_ports { o_out_data[1] }]; 
set_property -dict { PACKAGE_PIN A16   IOSTANDARD LVCMOS33 } [get_ports { o_out_data[2] }]; 
set_property -dict { PACKAGE_PIN K3   IOSTANDARD LVCMOS33 } [get_ports { o_out_data[3] }]; 
set_property -dict { PACKAGE_PIN C15   IOSTANDARD LVCMOS33 } [get_ports { o_out_data[4] }]; 
set_property -dict { PACKAGE_PIN H1   IOSTANDARD LVCMOS33 } [get_ports { o_out_data[5] }]; 
set_property -dict { PACKAGE_PIN A15   IOSTANDARD LVCMOS33 } [get_ports { o_out_data[6] }]; 
set_property -dict { PACKAGE_PIN B15   IOSTANDARD LVCMOS33 } [get_ports { o_out_data[7] }]; 
set_property -dict { PACKAGE_PIN A14   IOSTANDARD LVCMOS33 } [get_ports { o_out_data[8] }]; 
set_property -dict { PACKAGE_PIN J3   IOSTANDARD LVCMOS33 } [get_ports { o_out_data[9] }]; 
set_property -dict { PACKAGE_PIN J1   IOSTANDARD LVCMOS33 } [get_ports { o_out_data[10] }];
set_property -dict { PACKAGE_PIN K2   IOSTANDARD LVCMOS33 } [get_ports { o_out_data[11] }];
set_property -dict { PACKAGE_PIN L1   IOSTANDARD LVCMOS33 } [get_ports { o_out_data[12] }];
set_property -dict { PACKAGE_PIN L2   IOSTANDARD LVCMOS33 } [get_ports { o_out_data[13] }];
set_property -dict { PACKAGE_PIN M1   IOSTANDARD LVCMOS33 } [get_ports { o_out_data[14] }];
set_property -dict { PACKAGE_PIN N3   IOSTANDARD LVCMOS33 } [get_ports { o_out_data[15] }];
set_property -dict { PACKAGE_PIN P3   IOSTANDARD LVCMOS33 } [get_ports { o_out_data[16] }];
set_property -dict { PACKAGE_PIN M2   IOSTANDARD LVCMOS33 } [get_ports { o_out_data[17] }];
set_property -dict { PACKAGE_PIN N1   IOSTANDARD LVCMOS33 } [get_ports { o_out_data[18] }];
set_property -dict { PACKAGE_PIN N2   IOSTANDARD LVCMOS33 } [get_ports { o_out_data[19] }];
set_property -dict { PACKAGE_PIN P1   IOSTANDARD LVCMOS33 } [get_ports { o_out_data[20] }];
set_property -dict { PACKAGE_PIN R3   IOSTANDARD LVCMOS33 } [get_ports { o_out_data[21] }];
set_property -dict { PACKAGE_PIN T3   IOSTANDARD LVCMOS33 } [get_ports { o_out_data[22] }];
set_property -dict { PACKAGE_PIN R2   IOSTANDARD LVCMOS33 } [get_ports { o_out_data[23] }];
set_property -dict { PACKAGE_PIN T1   IOSTANDARD LVCMOS33 } [get_ports { o_out_data[24] }];
set_property -dict { PACKAGE_PIN T2   IOSTANDARD LVCMOS33 } [get_ports { o_out_data[25] }];
set_property -dict { PACKAGE_PIN U1   IOSTANDARD LVCMOS33 } [get_ports { o_out_data[26] }];
set_property -dict { PACKAGE_PIN W2   IOSTANDARD LVCMOS33 } [get_ports { o_out_data[27] }];
set_property -dict { PACKAGE_PIN V2   IOSTANDARD LVCMOS33 } [get_ports { o_out_data[28] }];
set_property -dict { PACKAGE_PIN W3   IOSTANDARD LVCMOS33 } [get_ports { o_out_data[29] }];
set_property -dict { PACKAGE_PIN V3   IOSTANDARD LVCMOS33 } [get_ports { o_out_data[30] }];
set_property -dict { PACKAGE_PIN W5   IOSTANDARD LVCMOS33 } [get_ports { o_out_data[31] }];