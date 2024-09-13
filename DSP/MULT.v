`timescale 1ns / 1ps

module MULT (
    input signed [31:0] a,  // Entrada signed
    input signed [31:0] b,  // Entrada signed
    output signed [31:0] mult   // Salida signed con saturación
);

    localparam NB_DATA      =   32;
    localparam NBF_DATA     =   16;
    localparam NBI_DATA     =   NB_DATA - NBF_DATA - 1;

    localparam NB_RESULT    =   64;
    localparam NBF_RESULT   =   32;
    localparam NBI_RESULT   =   NB_RESULT - NBF_RESULT - 1;

    localparam NB_SAT       =   NBI_RESULT - NBI_DATA;
    localparam NB_TRUC      =   NBF_RESULT - NBF_DATA;

    wire signed [63:0] mult_aux;
    wire signed [NB_RESULT-NB_SAT-1:0] mult_aux_sat;
    wire signed [NB_RESULT-NB_SAT-1:0] mult_aux_truc;

    assign mult_aux = a * b;

    assign mult_aux_sat =   ( ~|mult_aux[NB_RESULT-1 -: NB_SAT+1] || &mult_aux[NB_RESULT-1 -: NB_SAT+1]) ? mult_aux[NB_RESULT- NB_SAT - 1 : 0] :
                            (mult_aux[NB_RESULT-1]) ? {{1'b1},{NB_RESULT-NB_SAT-1{1'b0}}} : {{1'b0},{NB_RESULT-NB_SAT-1{1'b1}}};


    assign mult_aux_truc=(~|mult_aux_sat[NB_TRUC-1:0])?mult_aux_sat:
    (mult_aux_sat[NB_RESULT-NB_SAT-1])?mult_aux_sat-(1 << (NB_TRUC - 1)):mult_aux_sat+(1 << (NB_TRUC - 1));
  

    assign mult = mult_aux_truc[NB_RESULT-NB_SAT-1:NB_TRUC];


endmodule
