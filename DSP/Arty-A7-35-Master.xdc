## Clock signal
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L12P_T1_MRCC_35 Sch=gclk[100]
create_clock -add -name sys_clk_pin -period 20.00 -waveform {0 10} [get_ports { clk }];

## Reloj
set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33 } [get_ports { rst }]; #IO_L20P_T3_A08_D24_14 Sch=jc_p[1]


set_property BLOCK_SYNTH.RETIMING 1 [get_cells *];