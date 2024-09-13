// Módulo DSP: Implementa una unidad de procesamiento digital con operaciones de suma, resta, multiplicación y filtrado FIR.
// Autor: Luis Elian Andrada

`timescale 1ns / 1ps


module DSP (
    input clk,
    input rst,
    input start,
    input [1:0] operation,
    input [31:0] A[7:0],  // Coeficientes del filtro FIR (h)
    input [31:0] B[7:0],  // Valores de la señal (x)
    output reg [31:0] result[7:0], // Salida con 8 valores intermedios de la convolución
    output reg done                // Señal de finalización de la operación
);

    reg [2:0] state, next_state;   // Estados actuales y siguientes del FSM
    reg [3:0] index, k;            // Contadores de índices
    reg [31:0] acc;                // Acumulador para la operación FIR
    reg [31:0] a_ext[11:0];        // Coeficientes extendidos
    reg [31:0] x_ext[11:0];        // Señal extendida
    reg [31:0] mult_reg_aux;    // Registro auxuiliar para dividir el camino critico en el filtrado   


    wire [31:0] sum, mult, diff; // Resultados intermedios de las operaciones
    wire [31:0] a_bus, b_bus;    // Buses para las entradas de las operaciones

 

    // Instanciación de los módulos independientes para suma, multiplicación y resta
    SUM sum_inst (.a(a_bus), .b(b_bus), .sum(sum));
    MULT mult_inst (.a(a_bus), .b(b_bus), .mult(mult));
    SUB sub_inst (.a(a_bus), .b(b_bus), .diff(diff));

    // Definición de los estados del FSM
    localparam IDLE        = 3'd0, // Estado de reposo
               LOAD        = 3'd1, // Estado de carga
               EXECUTE     = 3'd2, // Estado de ejecución
               DONE        = 3'd3; // Estado de finalización

    // Lógica de transición de estados
    always @(posedge clk or posedge rst) begin
        if (rst)
            state <= IDLE; // Reiniciar el estado a IDLE
        else
            state <= next_state; // Transición al siguiente estado
    end

    // Lógica de selección del próximo estado
    always @(*) begin
        case (state)
            IDLE: begin
                if (start)
                    next_state = LOAD; // Transición a LOAD si se recibe la señal de inicio
                else
                    next_state = IDLE; // Permanecer en IDLE
            end
            LOAD: begin
                next_state = EXECUTE; // Transición a EXECUTE
            end
            EXECUTE: begin
                if ((operation != 2'b10 && index == 4'd8) || (operation == 2'b10 && k == 4'd12 && index == 4'd8))
                    next_state = DONE; // Transición a DONE si se completan las operaciones
                else
                    next_state = EXECUTE; // Permanecer en EXECUTE
            end
            DONE: begin
                next_state = IDLE; // Transición a IDLE
            end
            default: next_state = IDLE; // Estado por defecto
        endcase
    end

    // Lógica combinacional para a_bus y b_bus
    assign a_bus = (operation == 2'b10) ? a_ext[index[2:0]] : A[index[2:0]]; // Selección de a_bus
    assign b_bus = (operation == 2'b10) ? x_ext[k - index] : B[index[2:0]]; // Selección de b_bus

    // Lógica de control de operaciones
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            // Reinicio de los registros
            index <= 4'd0;
            k <= 4'd0;
            acc <= 32'd0;
            done <= 1'b0;
            a_ext[0] <= 32'd0;
            a_ext[1] <= 32'd0;
            a_ext[2] <= 32'd0;
            a_ext[3] <= 32'd0;
            a_ext[4] <= 32'd0;
            a_ext[5] <= 32'd0;
            a_ext[6] <= 32'd0;
            a_ext[7] <= 32'd0;
            a_ext[8] <= 32'd0;
            a_ext[9] <= 32'd0;
            a_ext[10] <= 32'd0;
            a_ext[11] <= 32'd0;
            x_ext[0] <= 32'd0;
            x_ext[1] <= 32'd0;
            x_ext[2] <= 32'd0;
            x_ext[3] <= 32'd0;
            x_ext[4] <= 32'd0;
            x_ext[5] <= 32'd0;
            x_ext[6] <= 32'd0;
            x_ext[7] <= 32'd0;
            x_ext[8] <= 32'd0;
            x_ext[9] <= 32'd0;
            x_ext[10] <= 32'd0;
            x_ext[11] <= 32'd0;
            mult_reg_aux <= 32'b0;
        end else begin
            case (state)
                // IDLE: begin
                //     // Reinicio de los contadores y señales
                //     index <= 4'd0;
                //     acc <= 32'd0;
                //     done <= 1'b0;
                //     k <= 4'd4;
                // end
                LOAD: begin
                    // Cargar los coeficientes en los coeficientes extendidos
                    a_ext[0] <= A[0];
                    a_ext[1] <= A[1];
                    a_ext[2] <= A[2];
                    a_ext[3] <= A[3];
                    a_ext[4] <= A[4];
                    a_ext[5] <= A[5];
                    a_ext[6] <= A[6];
                    a_ext[7] <= A[7];

                    // Cargar la señal en la señal extendida
                    x_ext[0] <= B[0];
                    x_ext[1] <= B[1];
                    x_ext[2] <= B[2];
                    x_ext[3] <= B[3];
                    x_ext[4] <= B[4];
                    x_ext[5] <= B[5];
                    x_ext[6] <= B[6];
                    x_ext[7] <= B[7];
                end
                EXECUTE: begin
                    // Ejecución de las operaciones seleccionadas
                    case (operation)
                        2'b00: begin // Suma
                            result[index[2:0]] <= sum;
                            index <= index + 1;
                        end
                        2'b01: begin // Multiplicación
                            result[index[2:0]] <= mult;
                            index <= index + 1;
                        end
                        2'b11: begin // Resta
                            result[index[2:0]] <= diff;
                            index <= index + 1;
                        end
                        2'b10: begin // Filtrado FIR
                            if (index + 1 <= k) begin
                                mult_reg_aux <= mult;
                                acc <= acc + mult_reg_aux;
                                index <= index + 1;
                            end else begin
                                // Guardar solo los valores intermedios
                                if (k <= 11) begin
                                    result[k - 4] <= acc;
                                end
                                k <= k + 1;
                                index <= 4'd0;
                                acc <= 32'd0;
                                //mult_reg_aux <= 32'b0;
                            end
                        end
                    endcase
                end
                DONE: begin
                    // Señalización de la finalización de la operación
                    done <= 1'b1;
                    index <= 4'd0;
                end
                default: begin
                    index <= 4'd0;
                    acc <= 32'd0;
                    done <= 1'b0;
                    k <= 4'd4;                
                end
            endcase
        end
    end
endmodule







