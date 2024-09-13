## Constraints para el m�dulo MEM en la placa Arty A7-35

## Clock signal
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { i_clk }]; #IO_L12P_T1_MRCC_35 Sch=gclk[100]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { i_clk }];

# ## Se�ales de Entrada
# set_property -dict { PACKAGE_PIN A8    IOSTANDARD LVCMOS33 } [get_ports { i_Address[0] }]; #IO_L12N_T1_MRCC_16 Sch=sw[0]
# set_property -dict { PACKAGE_PIN C11   IOSTANDARD LVCMOS33 } [get_ports { i_Address[1] }]; #IO_L13P_T2_MRCC_16 Sch=sw[1]
# set_property -dict { PACKAGE_PIN C10   IOSTANDARD LVCMOS33 } [get_ports { i_Address[2] }]; #IO_L13N_T2_MRCC_16 Sch=sw[2]
# set_property -dict { PACKAGE_PIN A10   IOSTANDARD LVCMOS33 } [get_ports { i_Address[3] }]; #IO_L14P_T2_SRCC_16 Sch=sw[3]
# set_property -dict { PACKAGE_PIN A9    IOSTANDARD LVCMOS33 } [get_ports { i_WriteData[0] }]; #IO_L14N_T2_SRCC_16 Sch=sw[4]
# set_property -dict { PACKAGE_PIN B9    IOSTANDARD LVCMOS33 } [get_ports { i_WriteData[1] }]; #IO_L11N_T1_SRCC_16 Sch=sw[5]
# set_property -dict { PACKAGE_PIN C9    IOSTANDARD LVCMOS33 } [get_ports { i_WriteData[2] }]; #IO_L11P_T1_SRCC_16 Sch=sw[6]
# set_property -dict { PACKAGE_PIN D9    IOSTANDARD LVCMOS33 } [get_ports { i_WriteData[3] }]; #IO_L6N_T0_VREF_16 Sch=sw[7]
# set_property -dict { PACKAGE_PIN E9    IOSTANDARD LVCMOS33 } [get_ports { i_BranchOp[0] }]; #IO_L7N_T1_AD6N_35 Sch=sw[8]
# set_property -dict { PACKAGE_PIN F9    IOSTANDARD LVCMOS33 } [get_ports { i_BranchOp[1] }]; #IO_L7P_T1_AD6P_35 Sch=sw[9]
# set_property -dict { PACKAGE_PIN G9    IOSTANDARD LVCMOS33 } [get_ports { i_negative }]; #IO_L7P_T1_AD6P_35 Sch=sw[10]
# set_property -dict { PACKAGE_PIN H9    IOSTANDARD LVCMOS33 } [get_ports { i_zero }]; #IO_L7P_T1_AD6P_35 Sch=sw[11]
# set_property -dict { PACKAGE_PIN J9    IOSTANDARD LVCMOS33 } [get_ports { i_branch }]; #IO_L7P_T1_AD6P_35 Sch=sw[12]
# set_property -dict { PACKAGE_PIN K9    IOSTANDARD LVCMOS33 } [get_ports { i_MemWrite }]; #IO_L7P_T1_AD6P_35 Sch=sw[13]
# set_property -dict { PACKAGE_PIN L9    IOSTANDARD LVCMOS33 } [get_ports { i_MemRead }]; #IO_L7P_T1_AD6P_35 Sch=sw[14]
# set_property -dict { PACKAGE_PIN M9    IOSTANDARD LVCMOS33 } [get_ports { i_SLTc }]; #IO_L7P_T1_AD6P_35 Sch=sw[15]

# ## Se�ales de Salida
# set_property -dict { PACKAGE_PIN T9    IOSTANDARD LVCMOS33 } [get_ports { o_PCSrc }]; #IO_L24P_T3_A01_D17_14 Sch=led[0]
# set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { o_ReadData[0] }]; #IO_L24N_T3_A00_D16_14 Sch=led[1]
# set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { o_ReadData[1] }]; #IO_L24N_T3_A00_D16_14 Sch=led[2]
# set_property -dict { PACKAGE_PIN T12   IOSTANDARD LVCMOS33 } [get_ports { o_ReadData[2] }]; #IO_L24N_T3_A00_D16_14 Sch=led[3]
# set_property -dict { PACKAGE_PIN T13   IOSTANDARD LVCMOS33 } [get_ports { o_ReadData[3] }]; #IO_L24N_T3_A00_D16_14 Sch=led[4]
# set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports { o_Mux[0] }]; #IO_L24N_T3_A00_D16_14 Sch=led[5]
# set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33 } [get_ports { o_Mux[1] }]; #IO_L24N_T3_A00_D16_14 Sch=led[6]
# set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { o_Mux[2] }]; #IO_L24N_T3_A00_D16_14 Sch=led[7]
# set_property -dict { PACKAGE_PIN T17   IOSTANDARD LVCMOS33 } [get_ports { o_Mux[3] }]; #IO_L24N_T3_A00_D16_14 Sch=led[8]

## Reset
set_property -dict { PACKAGE_PIN C2    IOSTANDARD LVCMOS33 } [get_ports { i_reset }]; #IO_L16P_T2_35 Sch=ck_rst
