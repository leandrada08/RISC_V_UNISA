`timescale 1ns / 1ps

module tb_CPU_DSP;

    // Señales
    reg clk;
    reg reset;
    reg  [3:0]  select_out;
    wire [31:0] out_data;


    // Instancia de la CPU
    CPU_DSP uut (
        .clk(clk),
        .i_reset(reset),
        .i_select_out(select_out),
        .o_out_data(out_data)
    );

    // Generación de reloj
    initial begin
        //#250;
        clk = 0;
        forever #5 clk = ~clk; // Periodo del reloj de 10ns
    end

    // Inicialización y prueba de la CPU
    initial begin
        // Inicialización
        #10;
        reset = 1;  // Activar reset
        #10;
        reset = 0;  // Desactivar reset
        select_out = 4'b0000;
        #200;
        select_out = 4'b0001;
        #200;
        select_out = 4'b0010;
        #200;
        select_out = 4'b0011;
        #200;
        select_out = 4'b0100;
        #200;
        select_out = 4'b0101;
        #200;
        select_out = 4'b0110;
        #200;
        reset = 1;
        #20;
        reset = 0;
        select_out = 4'b0111;
        #200;
        select_out = 4'b1000;
        #200;
        select_out = 4'b1001;

        // Finalizar la simulación
        $finish;
    end

    // Monitoreo de las señales
    initial begin
        $monitor("Time: %0t | Reset: %0b | Select: %h | out_data: %h ", $time, reset, select_out, out_data);
    end

endmodule
