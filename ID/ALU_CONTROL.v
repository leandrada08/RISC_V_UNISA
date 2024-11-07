

module ALU_CONTROL(
    input  [2:0] ALUop,
    input  [2:0] funct3,
    input  [6:0] funct7,
    output [2:0] ALUControl,
    output [1:0] BranchOp,
    output       SLTc,
    output [1:0] op_dsp
);

// Asignaciones para determinar ALUControl
assign ALUControl =
    (funct3 == 3'b000 && funct7[5] == 1'b1 && ALUop[1:0] == 2'b10 ) ? 3'b001:
    (funct3 == 3'b000 && ALUop[1] == 1'b1) ? 3'b000 : // ADD o SUB
    (funct3 == 3'b001 && ALUop[1] == 1'b1) ? 3'b010 : // SLL
    (funct3 == 3'b010 && ALUop[1] == 1'b1) ? 3'b001 : // SLT
    (funct3 == 3'b011 && ALUop[1] == 1'b1) ? 3'b011 : // SLTU
    (funct3 == 3'b100 && ALUop[1] == 1'b1) ? 3'b101 : // XOR
    (funct3 == 3'b101 && ALUop[1] == 1'b1) ? 3'b100 : // SRA o SRL
    (funct3 == 3'b110 && ALUop[1] == 1'b1) ? 3'b110 : // OR
    (funct3 == 3'b111 && ALUop[1] == 1'b1) ? 3'b111 : // AND // Default
    (ALUop[1:0] == 2'b00) ? 3'b000 :
    //(funct3 == 3'b000 && ALUop[1:0] == 2'b01) ? 3'b001 : // ADD
    //(funct3 == 3'b001 && ALUop[1:0] == 2'b01) ? 3'b001 : // SUB
    //(funct3[2] == 1'b1 && funct3[0] == 1'b0 && ALUop[1:0] == 2'b01) ? 3'b011 : // XOR
    (funct3[2] == 1'b1 && funct3[1] == 1'b1 && ALUop[1:0] == 2'b01) ? 3'b011 : 3'b001; // OR // Default

// Asignaciones para determinar BranchOp
assign BranchOp = 
    (ALUop[1] == 1'b1 && funct3[2] ==1'b0 && funct3[1] ==1'b1) ? 2'b10 : // SLT y SLTU
    (ALUop[1:0] == 2'b01 && funct3[2] == 1'b1 && funct3[0] == 1'b0) ? 2'b10 : // ADD, SUB, XOR, OR
    (ALUop[1:0] == 2'b01 && funct3[2] == 1'b1 && funct3[0] == 1'b1) ? 2'b11 :
    (ALUop[1:0] == 2'b01 && (funct3 == 3'b001)) ? 2'b01 : // SLL
    2'b00; // Default

// Asignaciones para determinar SLTc
assign SLTc = 
    (ALUop[1] == 1'b1 && funct3[2] ==1'b0 && funct3[1] ==1'b1) ? 1'b1 : // SLT y SLTU
    1'b0; // Resto de las instrucciones

assign op_dsp =
    // Dentro de las instrucciones vectoriales, las operaciones dependen de funct7 y funct3
    (ALUop[2] == 1'b1 && funct3 == 3'b000 && funct7 == 7'b0000100) ? 2'b11 : // vsub
    (ALUop[2] == 1'b1 && funct3 == 3'b001 && funct7 == 7'b1000000) ? 2'b01 : // vmul
    (ALUop[2] == 1'b1 && funct3 == 3'b011 && funct7 == 7'b1000011) ? 2'b10 : // vfmadd
    2'b00;  // Default a suma si no se reconoce la instrucción específica

endmodule
