

module MEM_INST (
    input   wire [31:0]      i_pc,
    output  wire [31:0]      o_instruccion
    );

reg [31:0] inst  [32'h4ff:32'h400];

initial begin
    $readmemh("mem.mem", inst);
end

assign  o_instruccion = (i_pc >=32'h500)? 32'h00000013 : inst[i_pc];
endmodule