`timescale 1ns / 1ps

module tb_MEM_INST;

    // Señales
    reg [31:0] i_pc;
    wire [31:0] o_instruccion;

    // Instanciación del módulo MEM_INST
    MEM_INST uut (
        .i_pc(i_pc),
        .o_instruccion(o_instruccion)
    );

    // Inicialización y pruebas
    initial begin
        // Inicializar las señales
        i_pc = 32'h00000000;

        // Escenario 1: Verificar la lectura de instrucciones en una dirección válida
        #10;
        i_pc = 32'h00000400;
        #10;
        if (o_instruccion !== 32'h00000433) begin
            $display("Test failed: Instrucción no leída correctamente desde la dirección 0x400");
        end else begin
            $display("Test passed: Instrucción leída correctamente desde la dirección 0x400");
        end

        // Escenario 2: Verificar la lectura de instrucciones en otra dirección válida
        i_pc = 32'h00000404;
        #10;
        if (o_instruccion !== 32'h000004b3) begin
            $display("Test failed: Instrucción no leída correctamente desde la dirección 0x404");
        end else begin
            $display("Test passed: Instrucción leída correctamente desde la dirección 0x404");
        end

        // Escenario 3: Verificar la lectura de instrucciones en una dirección fuera de rango
        i_pc = 32'h00001000;
        #10;
        if (o_instruccion !== 32'hx) begin
            $display("Test failed: Instrucción no debería ser válida para la dirección 0x1000");
        end else begin
            $display("Test passed: Instrucción no válida para la dirección 0x1000");
        end

        $finish;
    end

endmodule
