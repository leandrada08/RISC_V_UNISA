

module BRANCH (
    input   wire        i_zero,
    input   wire        i_neg,
    input   wire        i_branch,
    input   wire [1 :0] i_BranchOp,
    output  wire        o_PCSrc,
    output  wire [31:0] o_slt_data
);

wire mayor;
wire menor;
wire igual;
wire PCSrc_aux;

assign igual = (i_zero==1'b1) ? 1'b1: 1'b0;

assign menor = (i_zero==1'b0 & i_neg==1'b1)? 1'b1:1'b0;

assign mayor = (i_zero==1'b0 & i_neg==1'b0)? 1'b1:1'b0;



assign PCSrc_aux =  (i_BranchOp==2'b00)?igual:
                    (i_BranchOp==2'b01)?~igual:
                    (i_BranchOp==2'b10)?menor:
                    (i_BranchOp==2'b11)?mayor | igual:
                                        1'b0;

assign o_PCSrc = (i_branch)? PCSrc_aux : 1'b0;

assign o_slt_data = (i_branch)? {31'h0000,PCSrc_aux} : 32'h0000;
    
endmodule