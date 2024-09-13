`timescale 1ns / 1ps

module IF_tb;

    // Parameters
    parameter WIDTH = 32;

    // Signals
    reg [31:0] i_branch_address;
    reg i_select;
    reg i_clock;
    reg i_reset;  // Añadimos la señal de reset
    wire [30:0] o_address;
    wire [31:0] o_instruccion;

    // Instantiate the IF module
    IF uut (
        .o_address(o_address),
        .o_instruccion(o_instruccion),
        .i_branch_address(i_branch_address),
        .i_select(i_select),
        .i_clock(i_clock),
        .i_reset(i_reset)  // Conectamos la señal de reset
    );

    // Clock generation
    initial begin
        i_clock = 0;
        forever #5 i_clock = ~i_clock; // 10ns clock period
    end

    // Initial block to initialize the instruction memory
    initial begin
        // Initialize inputs
        #500;
        i_branch_address = 32'h00000400; // Set an initial branch address within range
        i_select = 0;
        i_reset = 1;  // Activamos el reset inicialmente

        // Escenario 1: Verificar inicialización del PC con reset
        #10;
        i_reset = 0;  // Desactivamos el reset
        if (o_address !== 32'h0000400) begin
            $display("Test failed: PC no se inicializa correctamente con reset");
            $stop;
        end else begin
            $display("Test passed: PC se inicializa correctamente con reset");
        end

        // Escenario 2: Verificar incremento del PC
        #10;
        if (o_address !== 32'h0000401) begin
            $display("Test failed: PC no se incrementa correctamente");
            $stop;
        end else begin
            $display("Test passed: PC se incrementa correctamente");
        end

        // Escenario 3: Verificar lectura de instrucciones
        #10;
        if (o_instruccion !== 32'h00400113) begin
            $display("Test failed: Instruccion no leida correctamente");
            $stop;
        end else begin
            $display("Test passed: Instruccion leida correctamente");
        end
        #100;
        // Escenario 4: Verificar salto de branch
        i_select = 1;
        i_branch_address = 32'h402;
        #10;
        if (o_address !== 32'h0000402) begin
            $display("Test failed: PC no realiza el branch correctamente");
            $stop;
        end else begin
            $display("Test passed: PC realiza el branch correctamente");
        end
        if (o_address !== 32'h00400113) begin
            $display("Test failed: PC no realiza el branch correctamente");
            $stop;
        end else begin
            $display("Test passed: PC realiza el branch correctamente");
        end

        // Escenario 5: Verificar el reset en operación normal
        #10;
        i_select = 0;
        #100;
        i_reset = 1;  // Activamos el reset
        #10;
        if (o_address !== 32'h0000400) begin
            $display("Test failed: PC no se reinicia correctamente durante operación");
            $stop;
        end else begin
            $display("Test passed: PC se reinicia correctamente durante operación");
        end

        $finish;
    end

endmodule


