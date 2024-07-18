
 module ID (
    input               i_clk,
    input               i_reset,  // Añadimos la señal de reset
    input [31:0]  i_instruccion,
    input [31:0]  i_WriteData,
    input               i_RegWrite,
    input [4:0]    i_WriteReg,

    output[31:0]  o_register1,
    output[31:0]  o_register2,
    output[31:0]  o_constante,
    output[4:0]    o_WriteReg,

    output              o_RegWrite,
    output              o_ALUSrc,
    output              o_MemWrite,
    output              o_MemRead,
    output              o_Branch,
    output              o_MemToReg,

    output              o_SLTc,

    output[2:0]         o_ALUControl,
    output[1:0]         o_BranchOp
);

    // Señales auxiliares de instrucción
    wire [4:0]    a_rs1;
    wire [4:0]    a_rs2;
    wire [6 : 0]       a_op_code;
    wire [1 : 0]       a_ALUOp;

    assign a_rs1 = i_instruccion[19:15];
    assign a_rs2 = i_instruccion[24:20];
    assign a_op_code = i_instruccion[6:0];

    GENERADOR_CONSTANTE u_GENERADOR_CONSTANTE (
        .instruccion(i_instruccion),
        .constante(o_constante)
    );

    REGISTERS u_REGISTERS (
        .clk(i_clk),
        .reset(i_reset),  // Añadimos la señal de reset
        .RA(a_rs1),
        .RB(a_rs2),
        .RW(i_WriteReg),
        .RegWrite(i_RegWrite),
        .busW(i_WriteData),
        .busA(o_register1),
        .busB(o_register2)
    );

    CONTROL u_CONTROL (
        .opcode(a_op_code),
        .RegWrite(o_RegWrite),
        .ALUSrc(o_ALUSrc),
        .MemWrite(o_MemWrite),
        .MemRead(o_MemRead),
        .Branch(o_Branch),
        .MemToReg(o_MemToReg),
        .ALUop(a_ALUOp)
    );

    ALU_CONTROL u_ALU_CONTROL (
        .ALUop(a_ALUOp),
        .funct3(i_instruccion[14:12]),
        .funct7(i_instruccion[31:25]),
        .ALUControl(o_ALUControl),
        .BranchOp(o_BranchOp),
        .SLTc(o_SLTc)
    );

    assign o_WriteReg = i_instruccion[11:7];

endmodule
