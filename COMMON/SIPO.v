module SIPO (
    input             i_clk,
    input             i_reset,
    input             i_enable,
    input  [31:0]     i_parallel,
    output reg [31:0] o_parallel1,
    output reg [31:0] o_parallel2,
    output reg [31:0] o_parallel3
);
    reg [31:0] shift_reg1;
    reg [31:0] shift_reg2;
    reg [31:0] shift_reg3;

    always @(posedge i_clk or posedge i_reset) begin
        if (i_reset) begin
            shift_reg1 <= 32'b0;
            shift_reg2 <= 32'b0;
            shift_reg3 <= 32'b0;
        end else if (i_enable) begin
            shift_reg1 <= i_parallel;
            shift_reg2 <= shift_reg1;
            shift_reg3 <= shift_reg2;
        end
    end

    assign o_parallel1 = shift_reg1;
    assign o_parallel2 = shift_reg2;
    assign o_parallel3 = shift_reg3;
endmodule
