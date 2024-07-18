
module ADD4(
  input wire [31:0] current_address,
  output wire [31:0] next_address
  );

assign  next_address = current_address + 32'h00000001;

endmodule