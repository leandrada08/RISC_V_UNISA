`timescale 1ns / 1ps
module tb_DSP();
    reg clk;                      // Señal de reloj
    reg rst;                      // Señal de reinicio
    reg start;                    // Señal de inicio de la operación
    reg [1:0] operation;          // Selección de la operación
    reg [31:0] A[7:0];            // Coeficientes del filtro FIR (h)
    reg [31:0] B[7:0];            // Valores de la señal (x)
    wire [31:0] result[7:0];      // Resultado de la operación
    wire done;                    // Señal de finalización de la operación

    // Instancia del módulo DSP
    DSP uut (
        .clk(clk),
        .rst(rst),
        .start(start),
        .operation(operation),
        .A(A),
        .B(B),
        .result(result),
        .done(done)
    );

    // Generación del reloj
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Prueba de la funcionalidad del DSP
    initial begin
        // Inicialización
        #100;
        rst = 1;
        start = 0;
        operation = 2'b00;
        #10;
        rst = 0;

        // Definición de vectores de prueba
        A[0] = 32'd1; B[0] = 32'd2;
        A[1] = 32'd3; B[1] = 32'd4;
        A[2] = 32'd5; B[2] = 32'd6;
        A[3] = 32'd7; B[3] = 32'd8;
        A[4] = 32'd9; B[4] = 32'd10;
        A[5] = 32'd11; B[5] = 32'd12;
        A[6] = 32'd13; B[6] = 32'd14;
        A[7] = 32'd15; B[7] = 32'd16;

        // Caso de prueba para suma
        operation = 2'b00;
        start = 1;
        #10 start = 0;
        wait (done);
        assert(result[0] == 32'd3) else $fatal("Suma fallo en result[0]");
        assert(result[1] == 32'd7) else $fatal("Suma fallo en result[1]");
        assert(result[2] == 32'd11) else $fatal("Suma fallo en result[2]");
        assert(result[3] == 32'd15) else $fatal("Suma fallo en result[3]");
        assert(result[4] == 32'd19) else $fatal("Suma fallo en result[4]");
        assert(result[5] == 32'd23) else $fatal("Suma fallo en result[5]");
        assert(result[6] == 32'd27) else $fatal("Suma fallo en result[6]");
        assert(result[7] == 32'd31) else $fatal("Suma fallo en result[7]");
        
        #40;
        // Caso de prueba para multiplicación
        operation = 2'b01;
        start = 1;
        #10 start = 0;
        wait (done);
        assert(result[0] == 32'd2) else $fatal("Multiplicacion fallo en result[0]");
        assert(result[1] == 32'd12) else $fatal("Multiplicacion fallo en result[1]");
        assert(result[2] == 32'd30) else $fatal("Multiplicacion fallo en result[2]");
        assert(result[3] == 32'd56) else $fatal("Multiplicacion fallo en result[3]");
        assert(result[4] == 32'd90) else $fatal("Multiplicacion fallo en result[4]");
        assert(result[5] == 32'd132) else $fatal("Multiplicacion fallo en result[5]");
        assert(result[6] == 32'd182) else $fatal("Multiplicacion fallo en result[6]");
        assert(result[7] == 32'd240) else $fatal("Multiplicacion fallo en result[7]");
        

        B[0] = 32'd1; A[0] = 32'd2;
        B[1] = 32'd3; A[1] = 32'd4;
        B[2] = 32'd5; A[2] = 32'd6;
        B[3] = 32'd7; A[3] = 32'd8;
        B[4] = 32'd9; A[4] = 32'd10;
        B[5] = 32'd11;A[5] = 32'd12;
        B[6] = 32'd13;A[6] = 32'd14;
        B[7] = 32'd15;A[7] = 32'd16;    
        #40;
        // Caso de prueba para resta
        operation = 2'b11;
        start = 1;
        #10 start = 0;
        wait (done);
        assert(result[0] == 32'd1) else $fatal("Resta fallo en result[0]");
        assert(result[1] == 32'd1) else $fatal("Resta fallo en result[1]");
        assert(result[2] == 32'd1) else $fatal("Resta fallo en result[2]");
        assert(result[3] == 32'd1) else $fatal("Resta fallo en result[3]");
        assert(result[4] == 32'd1) else $fatal("Resta fallo en result[4]");
        assert(result[5] == 32'd1) else $fatal("Resta fallo en result[5]");
        assert(result[6] == 32'd1) else $fatal("Resta fallo en result[6]");
        assert(result[7] == 32'd1) else $fatal("Resta fallo en result[7]");


        A[0] = 32'd1; B[0] = 32'd2;
        A[1] = 32'd3; B[1] = 32'd4;
        A[2] = 32'd5; B[2] = 32'd6;
        A[3] = 32'd7; B[3] = 32'd8;
        A[4] = 32'd9; B[4] = 32'd10;
        A[5] = 32'd11; B[5] = 32'd12;
        A[6] = 32'd13; B[6] = 32'd14;
        A[7] = 32'd15; B[7] = 32'd16;
        #40;
        // Caso de prueba para filtrado FIR
        operation = 2'b10;
        start = 1;
        #10 start = 0;
        wait (done);
        // Verificación del resultado FIR
        assert(result[0] == (A[0] * B[4] + A[1] * B[3] + A[2] * B[2] + A[3] * B[1] + A[4] * B[0])) else $fatal("FIR fallo en result[0]");
        assert(result[1] == (A[0] * B[5] + A[1] * B[4] + A[2] * B[3] + A[3] * B[2] + A[4] * B[1] + A[5] * B[0])) else $fatal("FIR fallo en result[1]");
        assert(result[2] == (A[0] * B[6] + A[1] * B[5] + A[2] * B[4] + A[3] * B[3] + A[4] * B[2] + A[5] * B[1] + A[6] * B[0])) else $fatal("FIR fallo en result[2]");
        assert(result[3] == (A[0] * B[7] + A[1] * B[6] + A[2] * B[5] + A[3] * B[4] + A[4] * B[3] + A[5] * B[2] + A[6] * B[1] + A[7] * B[0])) else $fatal("FIR fallo en result[3]");
        assert(result[4] == (A[0] * 32'd0 + A[1] * B[7] + A[2] * B[6] + A[3] * B[5] + A[4] * B[4] + A[5] * B[3] + A[6] * B[2] + A[7] * B[1])) else $fatal("FIR fallo en result[4]");
        assert(result[5] == (A[0] * 32'd0 + A[1] * 32'd0 + A[2] * B[7] + A[3] * B[6] + A[4] * B[5] + A[5] * B[4] + A[6] * B[3] + A[7] * B[2])) else $fatal("FIR fallo en result[5]");
        assert(result[6] == (A[0] * 32'd0 + A[1] * 32'd0 + A[2] * 32'd0 + A[3] * B[7] + A[4] * B[6] + A[5] * B[5] + A[6] * B[4] + A[7] * B[3])) else $fatal("FIR fallo en result[6]");
        assert(result[7] == (A[0] * 32'd0 + A[1] * 32'd0 + A[2] * 32'd0 + A[3] * 32'd0 + A[4] * B[7] + A[5] * B[6] + A[6] * B[5] + A[7] * B[4])) else $fatal("FIR fallo en result[7]");

        // Fin de la simulación
        $display("Todas las pruebas pasaron exitosamente.");
        $finish;
    end
endmodule



