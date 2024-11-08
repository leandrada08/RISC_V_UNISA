//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Fri Sep 20 09:53:46 2024
//Host        : leandrada08 running 64-bit major release  (build 9200)
//Command     : generate_target vio_wrapper.bd
//Design      : vio_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module vio_wrapper
   (clk_0,
    probe_in0_0,
    probe_out0_0,
    probe_out1_0,
    probe_out2_0);
  input clk_0;
  input [31:0]probe_in0_0;
  output [0:0]probe_out0_0;
  output [3:0]probe_out1_0;
  output [0:0]probe_out2_0;

  wire clk_0;
  wire [31:0]probe_in0_0;
  wire [0:0]probe_out0_0;
  wire [3:0]probe_out1_0;
  wire [0:0]probe_out2_0;

  vio vio_i
       (.clk_0(clk_0),
        .probe_in0_0(probe_in0_0),
        .probe_out0_0(probe_out0_0),
        .probe_out1_0(probe_out1_0),
        .probe_out2_0(probe_out2_0));
endmodule
