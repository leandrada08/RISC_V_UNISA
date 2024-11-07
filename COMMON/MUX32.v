

module MUX32 (
  input wire [31:0] A,
  input wire [31:0] B,
  input wire select,
  output wire [31:0] C
);


assign C = (select)? B : A;

  // always @ (*) begin
  //   if (select) begin
  //     C <= B;
  //   end else begin
  //     C <= A;
  //   end
  // end

endmodule
