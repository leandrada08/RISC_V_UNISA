`timescale 1ns / 1ps
`include "RISCV.sv"

module tb_ID();

    // Declaración de señales
    reg i_clk;
    reg i_reset;  // Añadimos la señal de reset
    reg [`WIDTH-1:0] i_instruccion;
    reg [`WIDTH-1:0] i_WriteData;
    reg i_RegWrite;
    reg [`REGADDR] i_WriteReg;

    wire [`WIDTH-1:0] o_register1;
    wire [`WIDTH-1:0] o_register2;
    wire [`WIDTH-1:0] o_constante;
    wire [`REGADDR] o_WriteReg;
    wire o_RegWrite;
    wire o_ALUSrc;
    wire o_MemWrite;
    wire o_MemRead;
    wire o_Branch;
    wire o_MemToReg;
    wire o_SLTc;
    wire [2:0] o_ALUControl;
    wire [1:0] o_BranchOp;

    // Instancia del módulo ID
    ID u_ID (
        .i_clk(i_clk),
        .i_reset(i_reset),  // Conectamos la señal de reset
        .i_instruccion(i_instruccion),
        .i_WriteData(i_WriteData),
        .i_RegWrite(i_RegWrite),
        .i_WriteReg(i_WriteReg),
        .o_register1(o_register1),
        .o_register2(o_register2),
        .o_constante(o_constante),
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

    // Generación del reloj
    initial begin
        i_clk = 0;
        forever #5 i_clk = ~i_clk;
    end

    // Inicialización de señales
    initial begin
        i_instruccion = 32'b0;
        i_WriteData = 32'b0;
        i_RegWrite = 1'b0;
        i_WriteReg = 5'b0;
        i_reset = 1;  // Activamos el reset inicialmente
        #10;
        i_reset = 0;  // Desactivamos el reset

        // Escenario 1: Verificar inicialización de registros con reset
        #10;
        if (o_register1 !== 32'h00000000 || o_register2 !== 32'h00000000) begin
            $display("Test failed: Registros no se inicializan correctamente con reset");
            $stop;
        end else begin
            $display("Test passed: Registros se inicializan correctamente con reset");
        end

        // Escenario 2: Escribir en un registro y leerlo
        i_WriteData = 32'h12345678;
        i_WriteReg = 5'b00000;
        i_RegWrite = 1'b1;
        #20;
        i_RegWrite = 1'b0;
        #10;
        if (o_register1 !== 32'h12345678) begin
            $display("Test failed: Escritura y lectura de registros fallida");
            $stop;
        end else begin
            $display("Test passed: Escritura y lectura de registros exitosa");
        end

        // Escenario 3: Verificar reset durante operación
        i_reset = 1;
        #10;
        if (o_register1 !== 32'h00000000 || o_register2 !== 32'h00000000) begin
            $display("Test failed: Registros no se reinician correctamente durante operación");
            $stop;
        end else begin
            $display("Test passed: Registros se reinician correctamente durante operación");
        end

        // Resto de las pruebas iniciales
        #10;
        i_reset = 0;  // Aseguramos que el reset está desactivado para las siguientes pruebas


        // Test: ADD x1, x0, x0 (Tipo R)
        #10;
        i_instruccion = 32'b00000000000000000000000010110011; // ADD x1, x0, x0
        #10;
        $display("Start Simulation");
        assert(o_register1 == 32'b0) else $fatal("Fallo en ADD x1, x0, x0: o_register1");
        assert(o_register2 == 32'b0) else $fatal("Fallo en ADD x1, x0, x0: o_register2");
        assert(o_WriteReg == 5'b00001) else $fatal("Fallo en ADD x1, x0, x0: WriteReg");
        assert(o_RegWrite == 1'b1) else $fatal("Fallo en ADD x1, x0, x0: RegWrite");
        assert(o_ALUSrc == 1'b0) else $fatal("Fallo en ADD x1, x0, x0: AluSRC");
        assert(o_MemWrite == 1'b0) else $fatal("Fallo en ADD x1, x0, x0: MemWrite");
        assert(o_MemRead == 1'b0) else $fatal("Fallo en ADD x1, x0, x0: MemRead");
        assert(o_Branch == 1'b0) else $fatal("Fallo en ADD x1, x0, x0: Branch");
        assert(o_MemToReg == 1'b0) else $fatal("Fallo en ADD x1, x0, x0: MemToReg");
        assert(o_ALUControl == 3'b000) else $fatal("Fallo en ADD x1, x0, x0: ALUControl");
        assert(o_BranchOp == 2'b00) else $fatal("Fallo en ADD x1, x0, x0: BranchOp");
        assert(o_SLTc == 1'b0) else $fatal("Fallo en ADD x1, x0, x0: SLTc");
        assert(o_constante == 32'b0) else $fatal("Fallo en ADD x1, x0, x0: Constante");

        #10;
        i_RegWrite = 1'b1;
        i_WriteReg = 5'b00001;
        i_WriteData = 32'h12345678;
        #10;
        i_WriteReg = 5'b00010;
        i_WriteData = 32'h87654321;
        // Test: SUB x2, x0, x1 (Tipo R)
        #10;
        i_instruccion = 32'b01000000000100000000000100110011; // SUB x2, x0, x1
        i_RegWrite = 1'b0;
        #10;
        assert(o_register1 == 32'b0) else $fatal("Fallo en SUB x2, x0, x1: o_register1");
        assert(o_register2 == 32'h12345678) else $fatal("Fallo en SUB x2, x0, x1: o_register2");
        assert(o_WriteReg == 5'b00010) else $fatal("Fallo en SUB x2, x0, x1: WriteReg");
        assert(o_RegWrite == 1'b1) else $fatal("Fallo en SUB x2, x0, x1: RegWrite");
        assert(o_ALUSrc == 1'b0) else $fatal("Fallo en SUB x2, x0, x1: ALUSrc");
        assert(o_MemWrite == 1'b0) else $fatal("Fallo en SUB x2, x0, x1: MemWrite");
        assert(o_MemRead == 1'b0) else $fatal("Fallo en SUB x2, x0, x1: MemRead");
        assert(o_Branch == 1'b0) else $fatal("Fallo en SUB x2, x0, x1: Branch");
        assert(o_MemToReg == 1'b0) else $fatal("Fallo en SUB x2, x0, x1: MemToReg");
        assert(o_ALUControl == 3'b001) else $fatal("Fallo en SUB x2, x0, x1: ALUControl");
        assert(o_BranchOp == 2'b00) else $fatal("Fallo en SUB x2, x0, x1: BranchOp");
        assert(o_SLTc == 1'b0) else $fatal("Fallo en SUB x2, x0, x1: SLTc");
        assert(o_constante == 32'b0) else $fatal("Fallo en ADD x1, x0, x0: Constante");

        // Test: LOAD x3, 0(x0) (Tipo I)
        #10;
        i_instruccion = 32'b00000000000000000010000110000011; // LOAD x3, 0(x0)
        i_RegWrite = 1'b1;
        i_WriteReg = 5'b00011;
        i_WriteData = 32'hdeadbeef;
        #10;
        assert(o_register1 == 32'b0) else $fatal("Fallo en LOAD x3, 0(x0): o_register1");
        assert(o_register2 == 32'b0) else $fatal("Fallo en LOAD x3, 0(x0): o_register2");
        assert(o_WriteReg == 5'b00011) else $fatal("Fallo en LOAD x3, 0(x0): WriteReg");
        assert(o_RegWrite == 1'b1) else $fatal("Fallo en LOAD x3, 0(x0): RegWrite");
        assert(o_ALUSrc == 1'b1) else $fatal("Fallo en LOAD x3, 0(x0): ALUSrc");
        assert(o_MemWrite == 1'b0) else $fatal("Fallo en LOAD x3, 0(x0): MemWrite");
        assert(o_MemRead == 1'b1) else $fatal("Fallo en LOAD x3, 0(x0): MemRead");
        assert(o_Branch == 1'b0) else $fatal("Fallo en LOAD x3, 0(x0): Branch");
        assert(o_MemToReg == 1'b1) else $fatal("Fallo en LOAD x3, 0(x0): MemToReg");
        assert(o_ALUControl == 3'b000) else $fatal("Fallo en LOAD x3, 0(x0): ALUControl");
        assert(o_BranchOp == 2'b00) else $fatal("Fallo en LOAD x3, 0(x0): BranchOp");
        assert(o_SLTc == 1'b0) else $fatal("Fallo en LOAD x3, 0(x0): SLTc");
        assert(o_constante == {{20{1'b0}}, 12'b000000000000}) else $fatal("Fallo en LOAD x3, 0(x0): Constante");

        // Test: STORE x4, 0(x1) (Tipo S)
        #10;
        i_instruccion = 32'b00000000000100000010001000100011; // STORE x4, 0(x1)
        i_RegWrite = 1'b1;
        i_WriteReg = 5'b00100;
        i_WriteData = 32'hcafebabe;
        #10;
        assert(o_register1 == 32'b0) else $fatal("Fallo en STORE x4, 0(x1): o_register1");
        assert(o_register2 == 32'h12345678) else $fatal("Fallo en STORE x4, 0(x1): o_register2");
        assert(o_WriteReg == 5'b00100) else $fatal("Fallo en STORE x4, 0(x1): WriteReg");
        assert(o_RegWrite == 1'b0) else $fatal("Fallo en STORE x4, 0(x1): RegWrite");
        assert(o_ALUSrc == 1'b1) else $fatal("Fallo en STORE x4, 0(x1): ALUSrc");
        assert(o_MemWrite == 1'b1) else $fatal("Fallo en STORE x4, 0(x1): MemWrite");
        assert(o_MemRead == 1'b0) else $fatal("Fallo en STORE x4, 0(x1): MemRead");
        assert(o_Branch == 1'b0) else $fatal("Fallo en STORE x4, 0(x1): Branch");
        assert(o_MemToReg == 1'b0) else $fatal("Fallo en STORE x4, 0(x1): MemToReg");
        assert(o_ALUControl == 3'b000) else $fatal("Fallo en STORE x4, 0(x1): ALUControl");
        assert(o_BranchOp == 2'b00) else $fatal("Fallo en STORE x4, 0(x1): BranchOp");
        assert(o_SLTc == 1'b0) else $fatal("Fallo en STORE x4, 0(x1): SLTc");
        assert(o_constante == {{20{1'b0}}, 12'b000000000100}) else $fatal("Fallo en STORE x4, 0(x1): Constante");

                // Instrucción errónea
        #10;
        i_instruccion = 32'b11111111111111111111111111111111;
        #10;
        // Dependiendo de tu diseño, define cómo debería comportarse al recibir una instrucción no válida
        // Aquí solo ejemplo de chequeo general:
        assert(o_RegWrite == 1'b0) else $fatal("Fallo en instrucción inválida 1: RegWrite");
        assert(o_MemWrite == 1'b0) else $fatal("Fallo en instrucción inválida 1: MemWrite");


        // Instrucción errónea
        #10;
        i_instruccion = 32'b00000000000000000000000000000000;
        #10;
        // Chequeo de instrucción inválida
        assert(o_RegWrite == 1'b0) else $fatal("Fallo en instrucción inválida 2: RegWrite");
        assert(o_MemWrite == 1'b0) else $fatal("Fallo en instrucción inválida 2: MemWrite");

        // Instrucción errónea
        #10;
        i_instruccion = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        #10;
        // Chequeo de instrucción inválida
        assert(o_RegWrite == 1'b0) else $fatal("Fallo en instrucción inválida 3: RegWrite");
        assert(o_MemWrite == 1'b0) else $fatal("Fallo en instrucción inválida 3: MemWrite");

        // 3. SLL: 0000000 10001 10001 001 10001 0110011
        #10;
        i_instruccion = 32'b00000001000110001001100100110011;
        #10;
        assert(o_WriteReg == 5'b10010) else $fatal("Fallo en SLL: WriteReg");
        assert(o_RegWrite == 1'b1) else $fatal("Fallo en SLL: RegWrite");
        assert(o_ALUSrc == 1'b0) else $fatal("Fallo en SLL: ALUSrc");
        assert(o_MemWrite == 1'b0) else $fatal("Fallo en SLL: MemWrite");
        assert(o_MemRead == 1'b0) else $fatal("Fallo en SLL: MemRead");
        assert(o_Branch == 1'b0) else $fatal("Fallo en SLL: Branch");
        assert(o_MemToReg == 1'b0) else $fatal("Fallo en SLL: MemToReg");
        assert(o_ALUControl == 3'b010) else $fatal("Fallo en SLL: ALUControl");
        assert(o_BranchOp == 2'b00) else $fatal("Fallo en SLL: BranchOp");
        assert(o_SLTc == 1'b0) else $fatal("Fallo en SLL: SLTc");
        assert(o_constante == 32'b0) else $fatal("Fallo en SLL: Constante");

        
        #10;
        i_instruccion = 32'hFE41CAE3;
        #10;
        //assert(o_WriteReg == 5'b10010) else $fatal("Fallo en BLT: WriteReg");
        assert(o_RegWrite == 1'b0) else $fatal("Fallo en BLT: RegWrite");
        assert(o_ALUSrc == 1'b0) else $fatal("Fallo en BLT: ALUSrc");
        assert(o_MemWrite == 1'b0) else $fatal("Fallo en BLT: MemWrite");
        assert(o_MemRead == 1'b0) else $fatal("Fallo en BLT: MemRead");
        assert(o_Branch == 1'b1) else $fatal("Fallo en BLT: Branch");
        assert(o_MemToReg == 1'b0) else $fatal("Fallo en BLT: MemToReg");
        assert(o_ALUControl == 3'b001) else $fatal("Fallo en BLT: ALUControl");
        assert(o_BranchOp == 2'b10) else $fatal("Fallo en BLT: BranchOp");
        assert(o_SLTc == 1'b0) else $fatal("Fallo en BLT: SLTc");
        assert(o_constante == 32'b11111111111111111111111111110100) else $fatal("Fallo en BLT: Constante");

        // 4. SLT: 0000000 10001 10001 010 10001 0110011
        #10;
        i_instruccion = 32'b00000001000110001010101000110011;
        #10;
        assert(o_WriteReg == 5'b10100) else $fatal("Fallo en SLT: WriteReg");
        assert(o_RegWrite == 1'b1) else $fatal("Fallo en SLT: RegWrite");
        assert(o_ALUSrc == 1'b0) else $fatal("Fallo en SLT: ALUSrc");
        assert(o_MemWrite == 1'b0) else $fatal("Fallo en SLT: MemWrite");
        assert(o_MemRead == 1'b0) else $fatal("Fallo en SLT: MemRead");
        assert(o_Branch == 1'b0) else $fatal("Fallo en SLT: Branch");
        assert(o_MemToReg == 1'b0) else $fatal("Fallo en SLT: MemToReg");
        assert(o_ALUControl == 3'b001) else $fatal("Fallo en SLT: ALUControl");
        assert(o_BranchOp == 2'b10) else $fatal("Fallo en SLT: BranchOp");
        assert(o_SLTc == 1'b1) else $fatal("Fallo en SLT: SLTc");
        assert(o_constante == 32'b0) else $fatal("Fallo en SLT: Constante");

        // 5. SLTU: 0000000 10001 10001 011 10001 0110011
        #10;
        i_instruccion = 32'b00000001000110001011101100110011;
        #10;
        assert(o_WriteReg == 5'b10110) else $fatal("Fallo en SLTU: WriteReg");
        assert(o_RegWrite == 1'b1) else $fatal("Fallo en SLTU: RegWrite");
        assert(o_ALUSrc == 1'b0) else $fatal("Fallo en SLTU: ALUSrc");
        assert(o_MemWrite == 1'b0) else $fatal("Fallo en SLTU: MemWrite");
        assert(o_MemRead == 1'b0) else $fatal("Fallo en SLTU: MemRead");
        assert(o_Branch == 1'b0) else $fatal("Fallo en SLTU: Branch");
        assert(o_MemToReg == 1'b0) else $fatal("Fallo en SLTU: MemToReg");
        assert(o_ALUControl == 3'b011) else $fatal("Fallo en SLTU: ALUControl");
        assert(o_BranchOp == 2'b10) else $fatal("Fallo en SLTU: BranchOp");
        assert(o_SLTc == 1'b1) else $fatal("Fallo en SLTU: SLTc");
        assert(o_constante == 32'b0) else $fatal("Fallo en SLTU: Constante");

        // 6. XOR: 0000000 10001 10001 100 10001 0110011
        #10;
        i_instruccion = 32'b00000001000110001100110010110011;
        #10;
        assert(o_WriteReg == 5'b11001) else $fatal("Fallo en XOR: WriteReg");
        assert(o_RegWrite == 1'b1) else $fatal("Fallo en XOR: RegWrite");
        assert(o_ALUSrc == 1'b0) else $fatal("Fallo en XOR: ALUSrc");
        assert(o_MemWrite == 1'b0) else $fatal("Fallo en XOR: MemWrite");
        assert(o_MemRead == 1'b0) else $fatal("Fallo en XOR: MemRead");
        assert(o_Branch == 1'b0) else $fatal("Fallo en XOR: Branch");
        assert(o_MemToReg == 1'b0) else $fatal("Fallo en XOR: MemToReg");
        assert(o_ALUControl == 3'b101) else $fatal("Fallo en XOR: ALUControl");
        assert(o_BranchOp == 2'b00) else $fatal("Fallo en XOR: BranchOp");
        assert(o_SLTc == 1'b0) else $fatal("Fallo en XOR: SLTc");
        assert(o_constante == 32'b0) else $fatal("Fallo en XOR: Constante");

        // 7. SRL: 0000000 10001 10001 101 10001 0110011
        #10;
        i_instruccion = 32'b00000001000110001101110110110011;
        #10;
        assert(o_WriteReg == 5'b11011) else $fatal("Fallo en SRL: WriteReg");
        assert(o_RegWrite == 1'b1) else $fatal("Fallo en SRL: RegWrite");
        assert(o_ALUSrc == 1'b0) else $fatal("Fallo en SRL: ALUSrc");
        assert(o_MemWrite == 1'b0) else $fatal("Fallo en SRL: MemWrite");
        assert(o_MemRead == 1'b0) else $fatal("Fallo en SRL: MemRead");
        assert(o_Branch == 1'b0) else $fatal("Fallo en SRL: Branch");
        assert(o_MemToReg == 1'b0) else $fatal("Fallo en SRL: MemToReg");
        assert(o_ALUControl == 3'b100) else $fatal("Fallo en SRL: ALUControl");
        assert(o_BranchOp == 2'b00) else $fatal("Fallo en SRL: BranchOp");
        assert(o_SLTc == 1'b0) else $fatal("Fallo en SRL: SLTc");
        assert(o_constante == 32'b0) else $fatal("Fallo en SRL: Constante");

        // 8. SRA: 0100000 10001 10001 101 10001 0110011
        #10;
        i_instruccion = 32'b01000001000110001101110110110011;
        #10;
        assert(o_WriteReg == 5'b11011) else $fatal("Fallo en SRA: WriteReg");
        assert(o_RegWrite == 1'b1) else $fatal("Fallo en SRA: RegWrite");
        assert(o_ALUSrc == 1'b0) else $fatal("Fallo en SRA: ALUSrc");
        assert(o_MemWrite == 1'b0) else $fatal("Fallo en SRA: MemWrite");
        assert(o_MemRead == 1'b0) else $fatal("Fallo en SRA: MemRead");
        assert(o_Branch == 1'b0) else $fatal("Fallo en SRA: Branch");
        assert(o_MemToReg == 1'b0) else $fatal("Fallo en SRA: MemToReg");
        assert(o_ALUControl == 3'b100) else $fatal("Fallo en SRA: ALUControl");
        assert(o_BranchOp == 2'b00) else $fatal("Fallo en SRA: BranchOp");
        assert(o_SLTc == 1'b0) else $fatal("Fallo en SRA: SLTc");
        assert(o_constante == 32'b0) else $fatal("Fallo en SRA: Constante");

        // 9. OR: 0000000 10001 10001 110 10001 0110011
        #10;
        i_instruccion = 32'b00000001000110001110111010110011;
        #10;
        assert(o_WriteReg == 5'b11101) else $fatal("Fallo en OR: WriteReg");
        assert(o_RegWrite == 1'b1) else $fatal("Fallo en OR: RegWrite");
        assert(o_ALUSrc == 1'b0) else $fatal("Fallo en OR: ALUSrc");
        assert(o_MemWrite == 1'b0) else $fatal("Fallo en OR: MemWrite");
        assert(o_MemRead == 1'b0) else $fatal("Fallo en OR: MemRead");
        assert(o_Branch == 1'b0) else $fatal("Fallo en OR: Branch");
        assert(o_MemToReg == 1'b0) else $fatal("Fallo en OR: MemToReg");
        assert(o_ALUControl == 3'b110) else $fatal("Fallo en OR: ALUControl");
        assert(o_BranchOp == 2'b00) else $fatal("Fallo en OR: BranchOp");
        assert(o_SLTc == 1'b0) else $fatal("Fallo en OR: SLTc");
        assert(o_constante == 32'b0) else $fatal("Fallo en OR: Constante");

        // 10. AND: 0000000 10001 10001 111 10001 0110011
        #10;
        i_instruccion = 32'b00000001000110001111111110110011;
        #10;
        assert(o_WriteReg == 5'b11111) else $fatal("Fallo en AND: WriteReg");
        assert(o_RegWrite == 1'b1) else $fatal("Fallo en AND: RegWrite");
        assert(o_ALUSrc == 1'b0) else $fatal("Fallo en AND: ALUSrc");
        assert(o_MemWrite == 1'b0) else $fatal("Fallo en AND: MemWrite");
        assert(o_MemRead == 1'b0) else $fatal("Fallo en AND: MemRead");
        assert(o_Branch == 1'b0) else $fatal("Fallo en AND: Branch");
        assert(o_MemToReg == 1'b0) else $fatal("Fallo en AND: MemToReg");
        assert(o_ALUControl == 3'b111) else $fatal("Fallo en AND: ALUControl");
        assert(o_BranchOp == 2'b00) else $fatal("Fallo en AND: BranchOp");
        assert(o_SLTc == 1'b0) else $fatal("Fallo en AND: SLTc");
        assert(o_constante == 32'b0) else $fatal("Fallo en AND: Constante");


        // Escenario 2: Escribir en un registro y leerlo
        i_instruccion = 32'b0;
        i_WriteData = 32'h12345678;
        i_WriteReg = 5'b00000;
        i_RegWrite = 1'b1;
        #20;
        i_RegWrite = 1'b0;
        #10;
        if (o_register1 !== 32'h12345678) begin
            $display("Test failed: Escritura y lectura de registros fallida");
            $stop;
        end else begin
            $display("Test passed: Escritura y lectura de registros exitosa");
        end

        $display("End Simulation");

        #100;
        $stop;
    end

endmodule




