`timescale 1ns / 1ps

module SUB (
    input signed [31:0] a,  // Entrada signed
    input signed [31:0] b,  // Entrada signed
    output signed [31:0] diff   // Salida signed con saturación
);

    localparam NB_DATA      =   32;
    localparam NBF_DATA     =   16;
    localparam NBI_DATA     =   NB_DATA - NBF_DATA - 1;

    localparam NB_RESULT    =   33;
    localparam NBF_RESULT   =   16;
    localparam NBI_RESULT   =   NB_RESULT - NBF_RESULT - 1;

    localparam NB_SAT       =   NBI_RESULT - NBI_DATA;
    localparam NB_TRUC      =   NBF_RESULT - NBF_DATA;

    wire signed [32:0] diff_aux;

    assign diff_aux = a - b;

    assign diff =    ( ~|diff_aux[NB_RESULT-1 -: NB_SAT+1] || &diff_aux[NB_RESULT-1 -: NB_SAT+1]) ? diff_aux[NB_RESULT- NB_SAT - 1 -: NB_DATA] :
                    (diff_aux[NB_RESULT-1]) ? {{1'b1},{NB_DATA-1{1'b0}}} : {{1'b0},{NB_DATA-1{1'b1}}};
endmodule

