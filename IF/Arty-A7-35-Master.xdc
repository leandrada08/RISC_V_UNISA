## Clock signal
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { i_clock }];
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { i_clock }];

## Reset signal
set_property -dict { PACKAGE_PIN C2    IOSTANDARD LVCMOS33 } [get_ports { i_reset }];

## Select signal
set_property -dict { PACKAGE_PIN A8    IOSTANDARD LVCMOS33 } [get_ports { i_select }];

## Branch address input (32 bits)
set_property -dict { PACKAGE_PIN C11   IOSTANDARD LVCMOS33 } [get_ports { i_branch_address[0] }];
set_property -dict { PACKAGE_PIN C10   IOSTANDARD LVCMOS33 } [get_ports { i_branch_address[1] }];
set_property -dict { PACKAGE_PIN A10   IOSTANDARD LVCMOS33 } [get_ports { i_branch_address[2] }];
set_property -dict { PACKAGE_PIN B10   IOSTANDARD LVCMOS33 } [get_ports { i_branch_address[3] }];
set_property -dict { PACKAGE_PIN C9    IOSTANDARD LVCMOS33 } [get_ports { i_branch_address[4] }];
set_property -dict { PACKAGE_PIN B9    IOSTANDARD LVCMOS33 } [get_ports { i_branch_address[5] }];
set_property -dict { PACKAGE_PIN A9    IOSTANDARD LVCMOS33 } [get_ports { i_branch_address[6] }];
set_property -dict { PACKAGE_PIN B8    IOSTANDARD LVCMOS33 } [get_ports { i_branch_address[7] }];
set_property -dict { PACKAGE_PIN C8    IOSTANDARD LVCMOS33 } [get_ports { i_branch_address[8] }];
set_property -dict { PACKAGE_PIN B7    IOSTANDARD LVCMOS33 } [get_ports { i_branch_address[9] }];
set_property -dict { PACKAGE_PIN A7    IOSTANDARD LVCMOS33 } [get_ports { i_branch_address[10] }];
set_property -dict { PACKAGE_PIN B6    IOSTANDARD LVCMOS33 } [get_ports { i_branch_address[11] }];
set_property -dict { PACKAGE_PIN C7    IOSTANDARD LVCMOS33 } [get_ports { i_branch_address[12] }];
set_property -dict { PACKAGE_PIN B5    IOSTANDARD LVCMOS33 } [get_ports { i_branch_address[13] }];
set_property -dict { PACKAGE_PIN A5    IOSTANDARD LVCMOS33 } [get_ports { i_branch_address[14] }];
set_property -dict { PACKAGE_PIN B4    IOSTANDARD LVCMOS33 } [get_ports { i_branch_address[15] }];
set_property -dict { PACKAGE_PIN C4    IOSTANDARD LVCMOS33 } [get_ports { i_branch_address[16] }];
set_property -dict { PACKAGE_PIN B3    IOSTANDARD LVCMOS33 } [get_ports { i_branch_address[17] }];
set_property -dict { PACKAGE_PIN A3    IOSTANDARD LVCMOS33 } [get_ports { i_branch_address[18] }];
set_property -dict { PACKAGE_PIN B2    IOSTANDARD LVCMOS33 } [get_ports { i_branch_address[19] }];
set_property -dict { PACKAGE_PIN C3    IOSTANDARD LVCMOS33 } [get_ports { i_branch_address[20] }];
set_property -dict { PACKAGE_PIN B1    IOSTANDARD LVCMOS33 } [get_ports { i_branch_address[21] }];
set_property -dict { PACKAGE_PIN A2    IOSTANDARD LVCMOS33 } [get_ports { i_branch_address[22] }];
set_property -dict { PACKAGE_PIN B13   IOSTANDARD LVCMOS33 } [get_ports { i_branch_address[23] }];
set_property -dict { PACKAGE_PIN C13   IOSTANDARD LVCMOS33 } [get_ports { i_branch_address[24] }];
set_property -dict { PACKAGE_PIN B14   IOSTANDARD LVCMOS33 } [get_ports { i_branch_address[25] }];
set_property -dict { PACKAGE_PIN A14   IOSTANDARD LVCMOS33 } [get_ports { i_branch_address[26] }];
set_property -dict { PACKAGE_PIN B15   IOSTANDARD LVCMOS33 } [get_ports { i_branch_address[27] }];
set_property -dict { PACKAGE_PIN C15   IOSTANDARD LVCMOS33 } [get_ports { i_branch_address[28] }];
set_property -dict { PACKAGE_PIN B16   IOSTANDARD LVCMOS33 } [get_ports { i_branch_address[29] }];
set_property -dict { PACKAGE_PIN A16   IOSTANDARD LVCMOS33 } [get_ports { i_branch_address[30] }];
set_property -dict { PACKAGE_PIN B17   IOSTANDARD LVCMOS33 } [get_ports { i_branch_address[31] }];

## Output address (32 bits)
set_property -dict { PACKAGE_PIN H5    IOSTANDARD LVCMOS33 } [get_ports { o_address[0] }];
set_property -dict { PACKAGE_PIN J5    IOSTANDARD LVCMOS33 } [get_ports { o_address[1] }];
set_property -dict { PACKAGE_PIN T9    IOSTANDARD LVCMOS33 } [get_ports { o_address[2] }];
set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { o_address[3] }];
set_property -dict { PACKAGE_PIN H6    IOSTANDARD LVCMOS33 } [get_ports { o_address[4] }];
set_property -dict { PACKAGE_PIN J6    IOSTANDARD LVCMOS33 } [get_ports { o_address[5] }];
set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { o_address[6] }];
set_property -dict { PACKAGE_PIN T12   IOSTANDARD LVCMOS33 } [get_ports { o_address[7] }];
set_property -dict { PACKAGE_PIN H7    IOSTANDARD LVCMOS33 } [get_ports { o_address[8] }];
set_property -dict { PACKAGE_PIN J7    IOSTANDARD LVCMOS33 } [get_ports { o_address[9] }];
set_property -dict { PACKAGE_PIN T13   IOSTANDARD LVCMOS33 } [get_ports { o_address[10] }];
set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports { o_address[11] }];
set_property -dict { PACKAGE_PIN H8    IOSTANDARD LVCMOS33 } [get_ports { o_address[12] }];
set_property -dict { PACKAGE_PIN J8    IOSTANDARD LVCMOS33 } [get_ports { o_address[13] }];
set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33 } [get_ports { o_address[14] }];
set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { o_address[15] }];
set_property -dict { PACKAGE_PIN H9    IOSTANDARD LVCMOS33 } [get_ports { o_address[16] }];
set_property -dict { PACKAGE_PIN J9    IOSTANDARD LVCMOS33 } [get_ports { o_address[17] }];
set_property -dict { PACKAGE_PIN T17   IOSTANDARD LVCMOS33 } [get_ports { o_address[18] }];
set_property -dict { PACKAGE_PIN T18   IOSTANDARD LVCMOS33 } [get_ports { o_address[19] }];
set_property -dict { PACKAGE_PIN H10   IOSTANDARD LVCMOS33 } [get_ports { o_address[20] }];
set_property -dict { PACKAGE_PIN J10   IOSTANDARD LVCMOS33 } [get_ports { o_address[21] }];
set_property -dict { PACKAGE_PIN T19   IOSTANDARD LVCMOS33 } [get_ports { o_address[22] }];
set_property -dict { PACKAGE_PIN T20   IOSTANDARD LVCMOS33 } [get_ports { o_address[23] }];
set_property -dict { PACKAGE_PIN H11   IOSTANDARD LVCMOS33 } [get_ports { o_address[24] }];
set_property -dict { PACKAGE_PIN J11   IOSTANDARD LVCMOS33 } [get_ports { o_address[25] }];
set_property -dict { PACKAGE_PIN T21   IOSTANDARD LVCMOS33 } [get_ports { o_address[26] }];
set_property -dict { PACKAGE_PIN T22   IOSTANDARD LVCMOS33 } [get_ports { o_address[27] }];
set_property -dict { PACKAGE_PIN H12   IOSTANDARD LVCMOS33 } [get_ports { o_address[28] }];
set_property -dict { PACKAGE_PIN J12   IOSTANDARD LVCMOS33 } [get_ports { o_address[29] }];
set_property -dict { PACKAGE_PIN T23   IOSTANDARD LVCMOS33 } [get_ports { o_address[30] }];

## Output instruction (32 bits)
set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { o_instruccion[0] }];
set_property -dict { PACKAGE_PIN R15   IOSTANDARD LVCMOS33 } [get_ports { o_instruccion[1] }];
set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports { o_instruccion[2] }];
set_property -dict { PACKAGE_PIN P16   IOSTANDARD LVCMOS33 } [get_ports { o_instruccion[3] }];
set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS33 } [get_ports { o_instruccion[4] }];
set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports { o_instruccion[5] }];
set_property -dict { PACKAGE_PIN P17   IOSTANDARD LVCMOS33 } [get_ports { o_instruccion[6] }];
set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { o_instruccion[7] }];
set_property -dict { PACKAGE_PIN N17   IOSTANDARD LVCMOS33 } [get_ports { o_instruccion[8] }];
set_property -dict { PACKAGE_PIN P18   IOSTANDARD LVCMOS33 } [get_ports { o_instruccion[9] }];
set_property -dict { PACKAGE_PIN R18   IOSTANDARD LVCMOS33 } [get_ports { o_instruccion[10] }];
set_property -dict { PACKAGE_PIN N18   IOSTANDARD LVCMOS33 } [get_ports { o_instruccion[11] }];
set_property -dict { PACKAGE_PIN P19   IOSTANDARD LVCMOS33 } [get_ports { o_instruccion[12] }];
set_property -dict { PACKAGE_PIN R19   IOSTANDARD LVCMOS33 } [get_ports { o_instruccion[13] }];
set_property -dict { PACKAGE_PIN N19   IOSTANDARD LVCMOS33 } [get_ports { o_instruccion[14] }];
set_property -dict { PACKAGE_PIN P20   IOSTANDARD LVCMOS33 } [get_ports { o_instruccion[15] }];
set_property -dict { PACKAGE_PIN R20   IOSTANDARD LVCMOS33 } [get_ports { o_instruccion[16] }];
set_property -dict { PACKAGE_PIN N20   IOSTANDARD LVCMOS33 } [get_ports { o_instruccion[17] }];
set_property -dict { PACKAGE_PIN P21   IOSTANDARD LVCMOS33 } [get_ports { o_instruccion[18] }];
set_property -dict { PACKAGE_PIN R21   IOSTANDARD LVCMOS33 } [get_ports { o_instruccion[19] }];
set_property -dict { PACKAGE_PIN N21   IOSTANDARD LVCMOS33 } [get_ports { o_instruccion[20] }];
set_property -dict { PACKAGE_PIN P22   IOSTANDARD LVCMOS33 } [get_ports { o_instruccion[21] }];
set_property -dict { PACKAGE_PIN R22   IOSTANDARD LVCMOS33 } [get_ports { o_instruccion[22] }];
set_property -dict { PACKAGE_PIN N22   IOSTANDARD LVCMOS33 } [get_ports { o_instruccion[23] }];
set_property -dict { PACKAGE_PIN P23   IOSTANDARD LVCMOS33 } [get_ports { o_instruccion[24] }];
set_property -dict { PACKAGE_PIN R23   IOSTANDARD LVCMOS33 } [get_ports { o_instruccion[25] }];
set_property -dict { PACKAGE_PIN N23   IOSTANDARD LVCMOS33 } [get_ports { o_instruccion[26] }];
set_property -dict { PACKAGE_PIN P24   IOSTANDARD LVCMOS33 } [get_ports { o_instruccion[27] }];
set_property -dict { PACKAGE_PIN R24   IOSTANDARD LVCMOS33 } [get_ports { o_instruccion[28] }];
set_property -dict { PACKAGE_PIN N24   IOSTANDARD LVCMOS33 } [get_ports { o_instruccion[29] }];
set_property -dict { PACKAGE_PIN P25   IOSTANDARD LVCMOS33 } [get_ports { o_instruccion[30] }];
set_property -dict { PACKAGE_PIN R25   IOSTANDARD LVCMOS33 } [get_ports { o_instruccion[31] }];
