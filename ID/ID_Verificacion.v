`include "RISCV.sv"

module ID_verificacion (
    input               i_clk,
    input               i_reset,
    input               i_enable_sipo,
    input               i_enable_piso,
    input               i_RegWrite,
    input  [`WIDTH-1:0]       i_parallel_in,
    output [`WIDTH-1:0]       o_parallel_out,

    output [`REGADDR] o_WriteReg,
    output              o_RegWrite,
    output              o_ALUSrc,
    output              o_MemWrite,
    output              o_MemRead,
    output              o_Branch,
    output              o_MemToReg,

    output              o_SLTc,

    output [2:0]        o_ALUControl,
    output [1:0]        o_BranchOp
);

    // Señales internas para las conexiones paralelas
    wire [`WIDTH-1:0]  sipo_instruccion;
    wire [`WIDTH-1:0]  sipo_WriteData;
    wire [`WIDTH-1:0]  sipo_WriteReg;
    wire [`WIDTH-1:0]  piso_register1;
    wire [`WIDTH-1:0]  piso_register2;
    wire [`WIDTH-1:0]  piso_constante;

    wire [`REGADDR] WriteReg_in;

    assign WriteReg_in = sipo_WriteReg[`REGADDR];

    // Instancia del registro SIPO para la instrucción, WriteData y WriteReg
    SIPO sipo (
        .i_clk(i_clk),
        .i_reset(i_reset),
        .i_enable(i_enable_sipo),
        .i_parallel(i_parallel_in),
        .o_parallel1(sipo_instruccion),
        .o_parallel2(sipo_WriteData),
        .o_parallel3(sipo_WriteReg)
    );

    // Instancias de los registros PISO para las salidas
    PISO piso (
        .i_clk(i_clk),
        .i_enable(i_enable_piso),
        .i_parallel1(piso_register1),
        .i_parallel2(piso_register2),
        .i_parallel3(piso_constante),
        .o_parallel(o_parallel_out)
    );

    // Instancia del módulo ID
    ID id_u (
        .i_clk(i_clk),
        .i_reset(i_reset),
        .i_instruccion(sipo_instruccion),
        .i_WriteData(sipo_WriteData),
        .i_RegWrite(i_RegWrite),
        .i_WriteReg(WriteReg_in),
        .o_register1(piso_register1),
        .o_register2(piso_register2),
        .o_constante(piso_constante),
        .o_WriteReg(o_WriteReg),
        .o_RegWrite(o_RegWrite),
        .o_ALUSrc(o_ALUSrc),
        .o_MemWrite(o_MemWrite),
        .o_MemRead(o_MemRead),
        .o_Branch(o_Branch),
        .o_MemToReg(o_MemToReg),
        .o_SLTc(o_SLTc),
        .o_ALUControl(o_ALUControl),
        .o_BranchOp(o_BranchOp)
    );

endmodule

