// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Sep 20 10:00:19 2024
// Host        : leandrada08 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/leand/Desktop/RISC_V_UNISA/RISC_V_CPU_DSP/RISC_V_CPU_DSP.gen/sources_1/bd/vio/ip/vio_vio_0_0_1/vio_vio_0_0_stub.v
// Design      : vio_vio_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2024.1" *)
module vio_vio_0_0(clk, probe_in0, probe_out0, probe_out1, 
  probe_out2)
/* synthesis syn_black_box black_box_pad_pin="probe_in0[31:0],probe_out0[0:0],probe_out1[3:0],probe_out2[0:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input [31:0]probe_in0;
  output [0:0]probe_out0;
  output [3:0]probe_out1;
  output [0:0]probe_out2;
endmodule