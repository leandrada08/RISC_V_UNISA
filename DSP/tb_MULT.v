`timescale 1ns / 1ps

module tb_MULT;

    reg signed [31:0] a, b;
    wire signed [31:0] mult;

    // Instanciar el módulo MULT
    MULT uut (
        .a(a),
        .b(b),
        .mult(mult)
    );

    initial begin
        // Estímulos
        a = 32'h0001;   // Prueba con números positivos
        b = 32'h0002;
        #10;            // Esperar 10 unidades de tiempo

        a = 32'h0004;  // Prueba con un número negativo
        b = 32'h0003;
        #10;


        $stop;
    end

endmodule