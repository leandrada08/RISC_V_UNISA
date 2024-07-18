## Este archivo es un .xdc general para la Arty A7-35 Rev. D

## Se�al de reloj
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clock }];
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { clock }];

# ## Pines de entrada para las se�ales de control
# set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 } [get_ports { i_ALUSrc }];
# set_property -dict { PACKAGE_PIN U15   IOSTANDARD LVCMOS33 } [get_ports { i_ALUControl[2] }];
# set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports { i_ALUControl[1] }];
# set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { i_ALUControl[0] }];

# ## Pines de entrada para las se�ales de datos
# set_property -dict { PACKAGE_PIN V14   IOSTANDARD LVCMOS33 } [get_ports { i_PC[7] }];
# set_property -dict { PACKAGE_PIN T13   IOSTANDARD LVCMOS33 } [get_ports { i_PC[6] }];
# set_property -dict { PACKAGE_PIN R10   IOSTANDARD LVCMOS33 } [get_ports { i_PC[0] }];
# # Agregar m�s pines si es necesario, pero limitando la cantidad

# ## Pines de salida
# set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports { o_ALUResult[0] }];
# set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33 } [get_ports { o_PCBranch[0] }];
# set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { o_zero }];
# set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports { o_negative }];
# # Agregar m�s pines si es necesario, pero limitando la cantidad

# ## LEDs para visualizar el resultado
# set_property -dict { PACKAGE_PIN H5    IOSTANDARD LVCMOS33 } [get_ports { o_led[0] }];
# set_property -dict { PACKAGE_PIN J5    IOSTANDARD LVCMOS33 } [get_ports { o_led[1] }];
# set_property -dict { PACKAGE_PIN T9    IOSTANDARD LVCMOS33 } [get_ports { o_led[2] }];
# set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { o_led[3] }];

## Botones para reset
set_property -dict { PACKAGE_PIN C2    IOSTANDARD LVCMOS33 } [get_ports { i_reset }];

