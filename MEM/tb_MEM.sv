// `timescale 1ns/1ps

// module tb_MEM();

//     // Declaración de señales
//     reg i_clk;
//     reg [31:0] i_Address;
//     reg [31:0] i_WriteData;
//     reg [1:0] i_BranchOp;
//     reg i_negative;
//     reg i_zero;
//     reg i_branch;
//     reg i_MemWrite;
//     reg i_MemRead;
//     reg i_SLTc;

//     wire o_PCSrc;
//     wire [31:0] o_ReadData;
//     wire [31:0] o_Mux;

//     // Instancia del módulo MEM
//     MEM u_MEM (
//         .i_Address(i_Address),
//         .i_WriteData(i_WriteData),
//         .i_BranchOp(i_BranchOp),
//         .i_negative(i_negative),
//         .i_zero(i_zero),
//         .i_branch(i_branch),
//         .i_MemWrite(i_MemWrite),
//         .i_MemRead(i_MemRead),
//         .i_SLTc(i_SLTc),
//         .o_PCSrc(o_PCSrc),
//         .o_ReadData(o_ReadData),
//         .o_Mux(o_Mux)
//     );

//     // Generación del reloj
//     initial begin
//         i_clk = 0;
//         forever #5 i_clk = ~i_clk;
//     end

//     // Inicialización de señales y casos de prueba
//     initial begin
//         $dumpfile("tb_MEM.vcd");
//         $dumpvars(0, tb_MEM);

//         // Inicializar entradas
//         i_Address = 32'b0;
//         i_WriteData = 32'b0;
//         i_BranchOp = 2'b0;
//         i_negative = 1'b0;
//         i_zero = 1'b0;
//         i_branch = 1'b0;
//         i_MemWrite = 1'b0;
//         i_MemRead = 1'b0;
//         i_SLTc = 1'b0;

//         // Esperar a que el sistema se estabilice
//         #100;

//         // Caso de prueba 1: Escritura de datos
//         $display("Caso de prueba 1: Escritura de datos");
//         i_Address = 32'hC00;
//         i_WriteData = 32'hABCD1234;
//         i_MemWrite = 1;
//         #10;
//         i_MemWrite = 0;
//         #10;
//         assert(u_MEM.U_MEM_DATA.data[i_Address] === 32'hABCD1234) else $fatal("Error: Escritura de datos fallida");

//         // Caso de prueba 2: Lectura de datos
//         $display("Caso de prueba 2: Lectura de datos");
//         i_MemRead = 1;
//         #10;
//         i_MemRead = 0;
//         assert(o_ReadData === 32'hABCD1234) else $fatal("Error: Lectura de datos fallida");

//         // Caso de prueba 3: Branch si igual (i_zero=1)
//         $display("Caso de prueba 3: Branch si igual");
//         i_zero = 1;
//         i_branch = 1;
//         i_BranchOp = 2'b00; // BEQ
//         #10;
//         assert(o_PCSrc === 1) else $fatal("Error: Branch si igual fallido");
//         i_zero = 0;
//         i_branch = 0;

//         // Caso de prueba 4: Branch si no igual (i_zero=0)
//         $display("Caso de prueba 4: Branch si no igual");
//         i_zero = 0;
//         i_branch = 1;
//         i_BranchOp = 2'b01; // BNE
//         #10;
//         assert(o_PCSrc === 1) else $fatal("Error: Branch si no igual fallido");
//         i_branch = 0;

//         // Caso de prueba 5: SLT
//         $display("Caso de prueba 5: SLT");
//         i_SLTc = 1;
//         #10;
//         assert(o_Mux === i_Address) else $fatal("Error: SLT fallido");
//         i_SLTc = 0;

//         // Finalizar simulación
//         $display("Simulación terminada");
//         #100;
//         $finish;
//     end

// endmodule



`timescale 1ns/1ps

module tb_MEM();

    // Declaración de señales
    reg i_clk;
    reg i_reset;
    reg [31:0] i_Address;
    reg [31:0] i_WriteData;
    reg [1:0] i_BranchOp;
    reg i_negative;
    reg i_zero;
    reg i_branch;
    reg i_MemWrite;
    reg i_MemRead;
    reg i_SLTc;

    wire o_PCSrc;
    wire [31:0] o_ReadData;
    wire [31:0] o_Mux;

    // Instancia del módulo MEM
    MEM u_MEM (
        .i_clk(i_clk),
        .i_reset(i_reset),
        .i_Address(i_Address),
        .i_WriteData(i_WriteData),
        .i_BranchOp(i_BranchOp),
        .i_negative(i_negative),
        .i_zero(i_zero),
        .i_branch(i_branch),
        .i_MemWrite(i_MemWrite),
        .i_MemRead(i_MemRead),
        .i_SLTc(i_SLTc),
        .o_PCSrc(o_PCSrc),
        .o_ReadData(o_ReadData),
        .o_Mux(o_Mux)
    );

    // Generación del reloj
    initial begin
        i_clk = 0;
        forever #5 i_clk = ~i_clk;
    end

    // Inicialización de señales y casos de prueba
    initial begin


        // Inicializar entradas
        i_Address = 32'b0;
        i_WriteData = 32'b0;
        i_BranchOp = 2'b0;
        i_negative = 1'b0;
        i_zero = 1'b0;
        i_branch = 1'b0;
        i_MemWrite = 1'b0;
        i_MemRead = 1'b0;
        i_SLTc = 1'b0;

        // Resetear el sistema
        i_reset = 1;
        #10;
        i_reset = 0;

        // Esperar a que el sistema se estabilice
        #200;

        // Caso de prueba 1: Escritura de datos
        $display("Caso de prueba 1: Escritura de datos");
        i_Address = 32'hC00;
        i_WriteData = 32'hABCD1234;
        i_MemWrite = 1;
        #10;
        i_MemWrite = 0;
        #10;
        assert(u_MEM.u_MEM_DATA.data[i_Address] === 32'hABCD1234) else $fatal("Error: Escritura de datos fallida");

        // Caso de prueba 2: Lectura de datos
        $display("Caso de prueba 2: Lectura de datos");
        i_MemRead = 1;
        #10;
        assert(o_ReadData === 32'hABCD1234) else $fatal("Error: Lectura de datos fallida");
        i_MemRead = 0;

        // Caso de prueba 3: Branch si igual (i_zero=1)
        $display("Caso de prueba 3: Branch si igual");
        i_zero = 1;
        i_branch = 1;
        i_BranchOp = 2'b00; // BEQ
        #10;
        assert(o_PCSrc === 1) else $fatal("Error: Branch si igual fallido");
        i_zero = 0;
        i_branch = 0;

        // Caso de prueba 4: Branch si no igual (i_zero=0)
        $display("Caso de prueba 4: Branch si no igual");
        i_zero = 0;
        i_branch = 1;
        i_BranchOp = 2'b01; // BNE
        #10;
        assert(o_PCSrc === 1) else $fatal("Error: Branch si no igual fallido");
        i_branch = 0;

        // Caso de prueba 5: SLT
        $display("Caso de prueba 5: SLT");
        i_SLTc = 1;
        #10;
        assert(o_Mux === i_Address) else $fatal("Error: SLT fallido");
        i_SLTc = 0;

        // Finalizar simulación
        $display("Simulación terminada");
        #100;
        $finish;
    end

endmodule

