`include "C:\Users\leand\Documentos\Codigos\DigitaliUNISA\Proggeti_Digitali_UNISA\ID\RISCV.sv"


module MUX32 (
  input wire [`WIDTH-1:0] A,
  input wire [`WIDTH-1:0] B,
  input wire select,
  output wire [`WIDTH-1:0] C
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
