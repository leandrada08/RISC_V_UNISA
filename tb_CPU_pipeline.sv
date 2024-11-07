`timescale 1ns / 1ps

module tb_CPU_pipeline;

    // Señales
    reg clk;
    reg reset;
    wire [31:0] pc;
    wire [31:0] alu_result;
    wire        start_dsp;
    wire [1:0]  op_dsp;

    // Instancia de la CPU
    CPU_pipeline uut (
        .clk(clk),
        .reset(reset),
        .pc(pc),
        .alu_result(alu_result),
        .start_dsp(start_dsp),
        .op_dsp(op_dsp)
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

        // Simulación de la CPU por 1000ns
        #1000;

        // Finalizar la simulación
        $finish;
    end

    // Monitoreo de las señales
    initial begin
        $monitor("Time: %0t | Reset: %0b | PC: %h | ALU Result: %h", $time, reset, pc, alu_result);
    end

endmodule

