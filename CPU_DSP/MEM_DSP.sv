
module MEM_DSP (
    input              clk,
    input              reset,        // Señal de reset
    input   [1:0]      RA,           // Dirección de memoria A (vectorial)
    input   [1:0]      RB,           // Dirección de memoria B (vectorial)
    input   [1:0]      RW,           // Dirección de memoria para escritura (vectorial)
    input              MemWrite,     // Señal de habilitación de escritura
    input   [31:0]     busW [7:0],   // Datos de entrada (vector de 8 elementos de 32 bits)
    output  [31:0]     busA [7:0],   // Salida de datos A (vector de 8 elementos de 32 bits)
    output  [31:0]     busB [7:0]    // Salida de datos B (vector de 8 elementos de 32 bits)
);

    // Memoria de 4 palabras, donde cada palabra es un vector de 8 elementos de 32 bits
    reg [31:0] memory [31:0];
    wire [4:0] a_RW,a_RB,a_RA;

    assign a_RW = {RW,3'b0};
    assign a_RA = {RA,3'b0};
    assign a_RB = {RB,3'b0};
    // Escritura de memoria
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            // Reset manual de cada elemento de la memoria sin usar 'for'
            memory[0] <= 32'h00010000;  memory[1] <= 32'h00030000;  memory[2] <= 32'h00050000;  memory[3] <= 32'h00070000;
            memory[4] <= 32'h00090000;  memory[5] <= 32'h000B0000;  memory[6] <= 32'h000D0000;  memory[7] <= 32'h000F0000;
            memory[8] <= 32'h00020000;  memory[9] <= 32'h00040000;  memory[10] <= 32'h00060000; memory[11] <= 32'h00080000;
            memory[12] <= 32'h000A0000; memory[13] <= 32'h000C0000; memory[14] <= 32'h000E0000; memory[15] <= 32'h00100000;
            memory[16] <= 32'h00000000; memory[17] <= 32'h00000000; memory[18] <= 32'h00000000; memory[19] <= 32'h00000000;
            memory[20] <= 32'h00000000; memory[21] <= 32'h00000000; memory[22] <= 32'h00000000; memory[23] <= 32'h00000000;
            memory[24] <= 32'h00000000; memory[25] <= 32'h00000000; memory[26] <= 32'h00000000; memory[27] <= 32'h00000000;
            memory[28] <= 32'h00000000; memory[29] <= 32'h00000000; memory[30] <= 32'h00000000; memory[31] <= 32'h00000000;

        end else if (MemWrite) begin
            // Escritura manual de cada elemento en la dirección RW sin usar 'for'
            memory[a_RW+0] <= busW[0];
            memory[a_RW+1] <= busW[1];
            memory[a_RW+2] <= busW[2];
            memory[a_RW+3] <= busW[3];
            memory[a_RW+4] <= busW[4];
            memory[a_RW+5] <= busW[5];
            memory[a_RW+6] <= busW[6];
            memory[a_RW+7] <= busW[7];
        end
    end

    // Lectura de memoria manual de cada vector de la dirección RA y RB
    assign busA[0] = memory[a_RA];
    assign busA[1] = memory[a_RA+1];
    assign busA[2] = memory[a_RA+2];
    assign busA[3] = memory[a_RA+3];
    assign busA[4] = memory[a_RA+4];
    assign busA[5] = memory[a_RA+5];
    assign busA[6] = memory[a_RA+6];
    assign busA[7] = memory[a_RA+7];
    assign busB[0] = memory[a_RB];
    assign busB[1] = memory[a_RB+1];
    assign busB[2] = memory[a_RB+2];
    assign busB[3] = memory[a_RB+3];
    assign busB[4] = memory[a_RB+4];
    assign busB[5] = memory[a_RB+5];
    assign busB[6] = memory[a_RB+6];
    assign busB[7] = memory[a_RB+7];

endmodule