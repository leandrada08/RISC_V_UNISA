`timescale 1ns / 1ps

module tb_PC;

    // Señales
    reg clock;
    reg reset;           // Añadimos la señal de reset
    reg [31:0] next_address;
    wire [31:0] address;

    // Instanciación del módulo PC
    PC uut (
        .clock(clock),
        .reset(reset),   // Conectamos la señal de reset
        .next_address(next_address),
        .address(address)
    );

    // Generación de reloj
    initial begin
        clock = 0;
        forever #5 clock = ~clock; // Periodo de reloj de 10 ns
    end

    // Inicialización y pruebas
    initial begin
        // Inicializar las señales
        #500;
        next_address = 32'h00000000;
        reset = 1;  // Activamos el reset inicialmente

        // Esperamos unos ciclos para que el reset tenga efecto
        #10;
        reset = 0;  // Desactivamos el reset
        // Escenario 1: Verificar inicialización del PC con reset
        if (address !== 32'h400) begin
            $display("Test failed: PC no se inicializa correctamente con reset");
            $stop;
        end else begin
            $display("Test passed: PC se inicializa correctamente con reset");
        end

        // Escenario 2: Establecer una dirección válida y verificar actualización del PC
        next_address = 32'h00000404;
        #10;
        if (address !== 32'h00000404) begin
            $display("Test failed: PC no se actualiza correctamente con dirección válida");
            $stop;
        end else begin
            $display("Test passed: PC se actualiza correctamente con dirección válida");
        end

        // Escenario 4: Verificar el reset durante operación normal
        next_address = 32'h00000408;
        #10;
        reset = 1;  // Activamos el reset
        #10;
        reset = 0;  // Desactivamos el reset
        #2;
        if (address !== 32'h400) begin
            $display("Test failed: PC no se reinicia correctamente durante operación");
        end else begin
            $display("Test passed: PC se reinicia correctamente durante operación");
        end

        $finish;
    end

endmodule
