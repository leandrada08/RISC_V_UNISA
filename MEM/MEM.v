


module MEM (
    input  wire        i_clk,
    input  wire        i_reset,     // Añadimos la señal de reset
    input  wire [31:0] i_Address,
    input  wire [31:0] i_WriteData,
    input  wire [1:0] i_BranchOp,
    input  wire i_negative,
    input  wire i_zero,
    input  wire i_branch,
    input  wire i_MemWrite,
    input  wire i_MemRead,
    input  wire i_SLTc,
    output wire  o_PCSrc,
    output wire  [31:0] o_ReadData,
    output wire  [31:0] o_Mux
);

    // Señales internas
    wire [31:0] a_slt_data;

    BRANCH u_BRANCH (
        .i_zero(i_zero),
        .i_neg(i_negative),
        .i_branch(i_branch),
        .i_BranchOp(i_BranchOp),
        .o_PCSrc(o_PCSrc),
        .o_slt_data(a_slt_data)
    );

    MEM_DATA u_MEM_DATA (
        .i_clk(i_clk),            // Añadimos la señal de reloj
        .i_reset(i_reset),        // Añadimos la señal de reset
        .i_memwrite(i_MemWrite),
        .i_memread(i_MemRead),
        .i_address(i_Address),
        .i_write_data(i_WriteData),
        .o_read_data(o_ReadData)
    );

    MUX32 u_MUX32 (
        .A(a_slt_data),
        .B(i_Address),
        .select(i_SLTc),
        .C(o_Mux)
    );

endmodule
