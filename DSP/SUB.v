module SUB (
    input [31:0] a,
    input [31:0] b,
    output [31:0] diff
);
    assign diff = a - b;
endmodule
