## Archivo XDC general para la ARTY Rev. B

## Señal de reloj
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L12P_T1_MRCC_35 Sch=gclk[100]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { clk }];

## Señal de reset
set_property -dict { PACKAGE_PIN C2    IOSTANDARD LVCMOS33 } [get_ports { reset }]; #IO_L16P_T2_35 Sch=reset

## Salida del contador de programa (PC)

set_property -dict { PACKAGE_PIN H5    IOSTANDARD LVCMOS33 } [get_ports { pc[0] }];
set_property -dict { PACKAGE_PIN J5    IOSTANDARD LVCMOS33 } [get_ports { pc[1] }];
set_property -dict { PACKAGE_PIN T9    IOSTANDARD LVCMOS33 } [get_ports { pc[2] }];
set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { pc[3] }];
set_property -dict { PACKAGE_PIN H6    IOSTANDARD LVCMOS33 } [get_ports { pc[4] }];
set_property -dict { PACKAGE_PIN J6    IOSTANDARD LVCMOS33 } [get_ports { pc[5] }];
set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { pc[6] }];
set_property -dict { PACKAGE_PIN T12   IOSTANDARD LVCMOS33 } [get_ports { pc[7] }];
set_property -dict { PACKAGE_PIN H7    IOSTANDARD LVCMOS33 } [get_ports { pc[8] }];
set_property -dict { PACKAGE_PIN J7    IOSTANDARD LVCMOS33 } [get_ports { pc[9] }];
set_property -dict { PACKAGE_PIN T13   IOSTANDARD LVCMOS33 } [get_ports { pc[10] }];
set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports { pc[11] }];
set_property -dict { PACKAGE_PIN H8    IOSTANDARD LVCMOS33 } [get_ports { pc[12] }];
set_property -dict { PACKAGE_PIN J8    IOSTANDARD LVCMOS33 } [get_ports { pc[13] }];
set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33 } [get_ports { pc[14] }];
set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { pc[15] }];
set_property -dict { PACKAGE_PIN H9    IOSTANDARD LVCMOS33 } [get_ports { pc[16] }];
set_property -dict { PACKAGE_PIN J9    IOSTANDARD LVCMOS33 } [get_ports { pc[17] }];
set_property -dict { PACKAGE_PIN T17   IOSTANDARD LVCMOS33 } [get_ports { pc[18] }];
set_property -dict { PACKAGE_PIN T18   IOSTANDARD LVCMOS33 } [get_ports { pc[19] }];
set_property -dict { PACKAGE_PIN H10   IOSTANDARD LVCMOS33 } [get_ports { pc[20] }];
set_property -dict { PACKAGE_PIN J10   IOSTANDARD LVCMOS33 } [get_ports { pc[21] }];
set_property -dict { PACKAGE_PIN T19   IOSTANDARD LVCMOS33 } [get_ports { pc[22] }];
set_property -dict { PACKAGE_PIN T20   IOSTANDARD LVCMOS33 } [get_ports { pc[23] }];
set_property -dict { PACKAGE_PIN H11   IOSTANDARD LVCMOS33 } [get_ports { pc[24] }];
set_property -dict { PACKAGE_PIN J11   IOSTANDARD LVCMOS33 } [get_ports { pc[25] }];
set_property -dict { PACKAGE_PIN T21   IOSTANDARD LVCMOS33 } [get_ports { pc[26] }];
set_property -dict { PACKAGE_PIN T22   IOSTANDARD LVCMOS33 } [get_ports { pc[27] }];
set_property -dict { PACKAGE_PIN H12   IOSTANDARD LVCMOS33 } [get_ports { pc[28] }];
set_property -dict { PACKAGE_PIN J12   IOSTANDARD LVCMOS33 } [get_ports { pc[29] }];
set_property -dict { PACKAGE_PIN T23   IOSTANDARD LVCMOS33 } [get_ports { pc[30] }];
set_property -dict { PACKAGE_PIN T23   IOSTANDARD LVCMOS33 } [get_ports { pc[30] }];
set_property -dict { PACKAGE_PIN T24   IOSTANDARD LVCMOS33 } [get_ports { pc[30] }];

## Salida del resultado de la ALU

set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { alu_result[0] }];
set_property -dict { PACKAGE_PIN R15   IOSTANDARD LVCMOS33 } [get_ports { alu_result[1] }];
set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports { alu_result[2] }];
set_property -dict { PACKAGE_PIN P16   IOSTANDARD LVCMOS33 } [get_ports { alu_result[3] }];
set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS33 } [get_ports { alu_result[4] }];
set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports { alu_result[5] }];
set_property -dict { PACKAGE_PIN P17   IOSTANDARD LVCMOS33 } [get_ports { alu_result[6] }];
set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { alu_result[7] }];
set_property -dict { PACKAGE_PIN N17   IOSTANDARD LVCMOS33 } [get_ports { alu_result[8] }];
set_property -dict { PACKAGE_PIN P18   IOSTANDARD LVCMOS33 } [get_ports { alu_result[9] }];
set_property -dict { PACKAGE_PIN R18   IOSTANDARD LVCMOS33 } [get_ports { alu_result[10] }];
set_property -dict { PACKAGE_PIN N18   IOSTANDARD LVCMOS33 } [get_ports { alu_result[11] }];
set_property -dict { PACKAGE_PIN P19   IOSTANDARD LVCMOS33 } [get_ports { alu_result[12] }];
set_property -dict { PACKAGE_PIN R19   IOSTANDARD LVCMOS33 } [get_ports { alu_result[13] }];
set_property -dict { PACKAGE_PIN N19   IOSTANDARD LVCMOS33 } [get_ports { alu_result[14] }];
set_property -dict { PACKAGE_PIN P20   IOSTANDARD LVCMOS33 } [get_ports { alu_result[15] }];
set_property -dict { PACKAGE_PIN R20   IOSTANDARD LVCMOS33 } [get_ports { alu_result[16] }];
set_property -dict { PACKAGE_PIN N20   IOSTANDARD LVCMOS33 } [get_ports { alu_result[17] }];
set_property -dict { PACKAGE_PIN P21   IOSTANDARD LVCMOS33 } [get_ports { alu_result[18] }];
set_property -dict { PACKAGE_PIN R21   IOSTANDARD LVCMOS33 } [get_ports { alu_result[19] }];
set_property -dict { PACKAGE_PIN N21   IOSTANDARD LVCMOS33 } [get_ports { alu_result[20] }];
set_property -dict { PACKAGE_PIN P22   IOSTANDARD LVCMOS33 } [get_ports { alu_result[21] }];
set_property -dict { PACKAGE_PIN R22   IOSTANDARD LVCMOS33 } [get_ports { alu_result[22] }];
set_property -dict { PACKAGE_PIN N22   IOSTANDARD LVCMOS33 } [get_ports { alu_result[23] }];
set_property -dict { PACKAGE_PIN P23   IOSTANDARD LVCMOS33 } [get_ports { alu_result[24] }];
set_property -dict { PACKAGE_PIN R23   IOSTANDARD LVCMOS33 } [get_ports { alu_result[25] }];
set_property -dict { PACKAGE_PIN N23   IOSTANDARD LVCMOS33 } [get_ports { alu_result[26] }];
set_property -dict { PACKAGE_PIN P24   IOSTANDARD LVCMOS33 } [get_ports { alu_result[27] }];
set_property -dict { PACKAGE_PIN R24   IOSTANDARD LVCMOS33 } [get_ports { alu_result[28] }];
set_property -dict { PACKAGE_PIN N24   IOSTANDARD LVCMOS33 } [get_ports { alu_result[29] }];
set_property -dict { PACKAGE_PIN P25   IOSTANDARD LVCMOS33 } [get_ports { alu_result[30] }];
set_property -dict { PACKAGE_PIN R25   IOSTANDARD LVCMOS33 } [get_ports { alu_result[31] }];
