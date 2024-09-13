module PISO (
    input               i_clk,
    input               i_enable,
    input [31:0]        i_parallel1,
    input [31:0]        i_parallel2,
    input [31:0]        i_parallel3,
    output reg [31:0]   o_parallel
);
    reg [1:0] state;
    reg [31:0] piso1;
    reg [31:0] piso2;
    reg [31:0] piso3;


    always @(posedge i_clk) begin
        if (i_enable) begin
            state <= 2'b00;
            piso1 <= i_parallel1;
            piso2 <= i_parallel2;
            piso3 <= i_parallel3;
        end else begin
            case (state)
                2'b00: begin
                    state <= 2'b01;
                end
                2'b01: begin
                    state <= 2'b10;
                end
                2'b10: begin
                    state <= 2'b00;
                end
            endcase
        end
    end

    assign o_parallel = (state==2'b00)? piso1:
                        (state==2'b01)? piso2:
                        piso3;
endmodule

