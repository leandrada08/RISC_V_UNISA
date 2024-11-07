//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Wed Sep 18 15:15:06 2024
//Host        : leandrada08 running 64-bit major release  (build 9200)
//Command     : generate_target clk_mmcm_wrapper.bd
//Design      : clk_mmcm_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module clk_mmcm_wrapper
   (clk_in1_0,
    clk_out1_0,
    locked_0,
    reset_0);
  input clk_in1_0;
  output clk_out1_0;
  output locked_0;
  input reset_0;

  wire clk_in1_0;
  wire clk_out1_0;
  wire locked_0;
  wire reset_0;

  clk_mmcm clk_mmcm_i
       (.clk_in1_0(clk_in1_0),
        .clk_out1_0(clk_out1_0),
        .locked_0(locked_0),
        .reset_0(reset_0));
endmodule
