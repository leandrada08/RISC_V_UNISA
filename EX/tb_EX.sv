`timescale 1ns / 1ps

module tb_EX();

    // Declaración de señales
    reg [31:0]   i_PC;
    reg [31:0]   i_register1;
    reg [31:0]   i_register2;
    reg [31:0]   i_constante;
    reg          i_ALUSrc;
    reg [2:0]    i_ALUControl;

    wire [31:0]  o_ALUResult;
    wire [31:0]  o_PCBranch;
    wire         o_zero;
    wire         o_negative;

    // Instancia del módulo EX
    EX u_EX (
        .i_PC(i_PC),
        .i_register1(i_register1),
        .i_register2(i_register2),
        .i_constante(i_constante),
        .i_ALUSrc(i_ALUSrc),
        .i_ALUControl(i_ALUControl),
        .o_ALUResult(o_ALUResult),
        .o_PCBranch(o_PCBranch),
        .o_zero(o_zero),
        .o_negative(o_negative)
    );

    // Inicialización de señales y pruebas
    initial begin
        // Inicialización
        i_PC = 32'h00000000;
        i_register1 = 32'h00000000;
        i_register2 = 32'h00000000;
        i_constante = 32'h00000000;
        i_ALUSrc = 0;
        i_ALUControl = 3'b000;
        #10;

        // Test: ADD (ALUControl = 000)
        i_register1 = 32'h00000003;
        i_register2 = 32'h00000001;
        i_constante = 32'h00000002;
        i_ALUSrc = 1;
        i_ALUControl = 3'b000; // Suma
        #10;
        assert(o_ALUResult == 32'h00000005) else $fatal("Fallo en ADD: o_ALUResult");
        assert(o_zero == 1'b0) else $fatal("Fallo en ADD: o_zero");
        assert(o_negative == 1'b0) else $fatal("Fallo en ADD: o_negative");

        // Test: SUB (ALUControl = 001)
        i_ALUControl = 3'b001; // Resta
        #10;
        assert(o_ALUResult == 32'h00000001) else $fatal("Fallo en SUB: o_ALUResult");
        assert(o_zero == 1'b0) else $fatal("Fallo en SUB: o_zero");
        assert(o_negative == 1'b0) else $fatal("Fallo en SUB: o_negative");

        // Test: Shift Left Logico (ALUControl = 010)
        i_ALUControl = 3'b010; // Desplazamiento a la izquierda
        #10;
        assert(o_ALUResult == 32'h0000000C) else $fatal("Fallo en SLL: o_ALUResult");
        assert(o_zero == 1'b0) else $fatal("Fallo en SLL: o_zero");
        assert(o_negative == 1'b0) else $fatal("Fallo en SLL: o_negative");

        // Test: Shift Right Logico (ALUControl = 100)
        i_ALUControl = 3'b100; // Desplazamiento lógico a la derecha
        #10;
        assert(o_ALUResult == 32'h00000000) else $fatal("Fallo en SRL: o_ALUResult");
        assert(o_zero == 1'b1) else $fatal("Fallo en SRL: o_zero");
        assert(o_negative == 1'b0) else $fatal("Fallo en SRL: o_negative");

        // Test: Shift Right Aritmetico (ALUControl = 100)
        i_constante = 32'h80000002;
        i_register1 = 32'h80000000; // Número negativo en formato de complemento a 2
        i_ALUControl = 3'b100; // Desplazamiento aritmético a la derecha
        #10;
        assert(o_ALUResult == 32'hE0000000) else $fatal("Fallo en SRA: o_ALUResult"); // El bit de signo debe mantenerse
        assert(o_zero == 1'b0) else $fatal("Fallo en SRA: o_zero");
        assert(o_negative == 1'b1) else $fatal("Fallo en SRA: o_negative");

        // Test: XOR (ALUControl = 101)
        i_register1 = 32'hAAAAAAAA;
        i_register2 = 32'h55555555;
        i_ALUSrc = 0;
        i_ALUControl = 3'b101; // XOR
        #10;
        assert(o_ALUResult == 32'hFFFFFFFF) else $fatal("Fallo en XOR: o_ALUResult");
        assert(o_zero == 1'b0) else $fatal("Fallo en XOR: o_zero");
        assert(o_negative == 1'b1) else $fatal("Fallo en XOR: o_negative");

        // Test: OR (ALUControl = 110)
        i_register1 = 32'h0000FFFF;
        i_register2 = 32'hFFFF0000;
        i_ALUControl = 3'b110; // OR
        #10;
        assert(o_ALUResult == 32'hFFFFFFFF) else $fatal("Fallo en OR: o_ALUResult");
        assert(o_zero == 1'b0) else $fatal("Fallo en OR: o_zero");
        assert(o_negative == 1'b1) else $fatal("Fallo en OR: o_negative");

        // Test: AND (ALUControl = 111)
        i_register1 = 32'hFFFFFFFF;
        i_register2 = 32'h0F0F0F0F;
        i_ALUControl = 3'b111; // AND
        #10;
        assert(o_ALUResult == 32'h0F0F0F0F) else $fatal("Fallo en AND: o_ALUResult");
        assert(o_zero == 1'b0) else $fatal("Fallo en AND: o_zero");
        assert(o_negative == 1'b0) else $fatal("Fallo en AND: o_negative");

        $display("All tests completed successfully");
        $finish;
    end

endmodule
