

module ADD(
  input wire signed [31:0] A,
  input wire signed [31:0] B,
  output wire signed [31:0] C
  );


assign  C = A + B;

endmodule