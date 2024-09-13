`timescale 1ns / 1ps

module tb_CPU_pipeline;

    // Señales
    reg clk;
    reg reset;
    reg select_out;
    wire [31:0] out_data;


    // Instancia de la CPU
    CPU_pipeline uut (
        .clk(clk),
        .reset(reset),
        .select_out(select_out),
        .out_data(out_data)
    );

    // Generación de reloj
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Periodo del reloj de 10ns
    end

    // Inicialización y prueba de la CPU
    initial begin
        // Inicialización
        #150;
        reset = 1;  // Activar reset
        #10;
        reset = 0;  // Desactivar reset
        select_out = 0;
        #200;
        select_out = 1;
        #200;
        select_out = 0;
        #200;
        select_out = 1;
        #200;
        select_out = 0;
        #200;
        select_out = 1;
        #200;
        select_out = 0;

        // Finalizar la simulación
        $finish;
    end

    // Monitoreo de las señales
    initial begin
        $monitor("Time: %0t | Reset: %0b | Select: %0b | out_data: %h ", $time, reset, select_out, out_data);
    end

endmodule
