module PC (
    input clock,
    input reset,       
    input [31:0] next_address,
    output reg [31:0] address  // Cambiado a reg para evitar problemas de síntesis
);

always @(posedge clock) begin
    if (reset) begin
        address <= 32'h00000400;  // Reiniciar el PC al valor inicial
    end else begin
        address <= next_address;
    end
end

endmodule
