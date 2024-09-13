module CPU_pipeline (
    input           clk,
    input           reset,
    input           select_out,
    output [31:0]   out_data
);

    // Señales de la etapa IF
    wire [31:0]     if_instruccion;
    wire [30:0]     if_address;
    wire [31:0]     if_branch_address;
    wire            if_select;
    wire            if_PCSrc;

    // Señales del pipeline IF/ID
    reg [31:0]      ifid_instruccion;
    reg [31:0]      ifid_address;

    // Señales de la etapa ID
    wire [31:0]     id_register1;
    wire [31:0]     id_register2;
    wire [31:0]     id_constante;
    wire [4:0]      id_WriteReg;
    wire            id_RegWrite;
    wire            id_ALUSrc;
    wire            id_MemWrite;
    wire            id_MemRead;
    wire            id_Branch;
    wire            id_MemToReg;
    wire [2:0]      id_ALUControl;
    wire [1:0]      id_BranchOp;
    wire            id_SLTc;

    // Señales del pipeline ID/EX
    reg [31:0]      idex_PC;
    reg [31:0]      idex_register1;
    reg [31:0]      idex_register2;
    reg [31:0]      idex_constante;
    reg             idex_ALUSrc;
    reg [2:0]       idex_ALUControl;
    reg             idex_MemWrite;
    reg             idex_MemRead;
    reg             idex_Branch;
    reg             idex_MemToReg;
    reg             idex_RegWrite;
    reg [1:0]       idex_BranchOp;
    reg             idex_SLTc;
    reg [4:0]       idex_WriteReg;

    // Señales de la etapa EX
    wire [31:0]     ex_ALUResult;
    wire [31:0]     ex_PCBranch;
    wire            ex_zero;
    wire            ex_negative;

    // Señales del pipeline EX/MEM
    reg [31:0]      exmem_ALUResult;
    reg [31:0]      exmem_register2;
    reg [31:0]      exmem_PCBranch;
    reg             exmem_zero;
    reg             exmem_negative;
    reg             exmem_MemWrite;
    reg             exmem_MemRead;
    reg             exmem_Branch;
    reg             exmem_MemToReg;
    reg             exmem_RegWrite;
    reg [1:0]       exmem_BranchOp;
    reg             exmem_SLTc;
    reg [4:0]       exmem_WriteReg;

    // Señales de la etapa MEM
    wire            mem_PCSrc;
    wire [31:0]     mem_ReadData;
    wire [31:0]     mem_Mux;

    // Señales del pipeline MEM/WB
    reg [31:0]      memwb_ALUResult;
    reg [31:0]      memwb_ReadData;
    reg             memwb_MemToReg;
    reg             memwb_RegWrite;
    reg [4:0]       memwb_WriteReg;

    // Señales de la etapa WB
    wire [31:0]     wb_WriteData;

    // Asignaciones a las salidas
    // assign pc = ifid_address;
    // assign alu_result = exmem_ALUResult;

    // VIO e ILA
        // Salidas de VIO
    wire reset_from_vio;
    wire select_out_from_vio;
    wire sel_mux;

        // Señales internas
    wire reset_a;
    wire select_out_a;

    // Etapa IF
    IF if_stage (
        .o_address(if_address),
        .o_instruccion(if_instruccion),
        .i_branch_address(exmem_PCBranch),
        .i_reset(reset_a),
        .i_select(mem_PCSrc),
        .i_clock(clk)
    );

    // Pipeline IF/ID
    always @(posedge clk or posedge reset_a) begin
        if (reset_a) begin
            ifid_instruccion <= 32'b0;
            ifid_address <= 32'b0;
        end else begin
            ifid_instruccion <= if_instruccion;
            ifid_address <= if_address;
        end
    end

    // Etapa ID
    ID id_stage (
        .i_clk(clk),
        .i_reset(reset_a),
        .i_instruccion(ifid_instruccion),
        .i_WriteData(wb_WriteData),
        .i_RegWrite(memwb_RegWrite),
        .i_WriteReg(memwb_WriteReg),
        .o_register1(id_register1),
        .o_register2(id_register2),
        .o_constante(id_constante),
        .o_WriteReg(id_WriteReg),
        .o_RegWrite(id_RegWrite),
        .o_ALUSrc(id_ALUSrc),
        .o_MemWrite(id_MemWrite),
        .o_MemRead(id_MemRead),
        .o_Branch(id_Branch),
        .o_MemToReg(id_MemToReg),
        .o_SLTc(id_SLTc),
        .o_ALUControl(id_ALUControl),
        .o_BranchOp(id_BranchOp)
    );

    // Pipeline ID/EX
    always @(posedge clk or posedge reset_a) begin
        if (reset_a) begin
            idex_PC <= 32'b0;
            idex_register1 <= 32'b0;
            idex_register2 <= 32'b0;
            idex_constante <= 32'b0;
            idex_ALUSrc <= 1'b0;
            idex_ALUControl <= 3'b0;
            idex_MemWrite <= 1'b0;
            idex_MemRead <= 1'b0;
            idex_Branch <= 1'b0;
            idex_MemToReg <= 1'b0;
            idex_RegWrite <= 1'b0;
            idex_BranchOp <= 2'b0;
            idex_SLTc <= 1'b0;
            idex_WriteReg <= 5'b0;
        end else begin
            idex_PC <= ifid_address;
            idex_register1 <= id_register1;
            idex_register2 <= id_register2;
            idex_constante <= id_constante;
            idex_ALUSrc <= id_ALUSrc;
            idex_ALUControl <= id_ALUControl;
            idex_MemWrite <= id_MemWrite;
            idex_MemRead <= id_MemRead;
            idex_Branch <= id_Branch;
            idex_MemToReg <= id_MemToReg;
            idex_RegWrite <= id_RegWrite;
            idex_BranchOp <= id_BranchOp;
            idex_SLTc <= id_SLTc;
            idex_WriteReg <= id_WriteReg;
        end
    end

    // Etapa EX
    EX ex_stage (
        .i_PC(idex_PC),
        .i_register1(idex_register1),
        .i_register2(idex_register2),
        .i_constante(idex_constante),
        .i_ALUSrc(idex_ALUSrc),
        .i_ALUControl(idex_ALUControl),
        .o_ALUResult(ex_ALUResult),
        .o_PCBranch(ex_PCBranch),
        .o_zero(ex_zero),
        .o_negative(ex_negative)
    );

    // Pipeline EX/MEM
    always @(posedge clk or posedge reset_a) begin
        if (reset_a) begin
            exmem_ALUResult <= 32'b0;
            exmem_register2 <= 32'b0;
            exmem_PCBranch <= 32'b0;
            exmem_zero <= 1'b0;
            exmem_negative <= 1'b0;
            exmem_MemWrite <= 1'b0;
            exmem_MemRead <= 1'b0;
            exmem_Branch <= 1'b0;
            exmem_MemToReg <= 1'b0;
            exmem_RegWrite <= 1'b0;
            exmem_BranchOp <= 2'b0;
            exmem_SLTc <= 1'b0;
            exmem_WriteReg <= 5'b0;
        end else begin
            exmem_ALUResult <= ex_ALUResult;
            exmem_register2 <= idex_register2;
            exmem_PCBranch <= ex_PCBranch;
            exmem_zero <= ex_zero;
            exmem_negative <= ex_negative;
            exmem_MemWrite <= idex_MemWrite;
            exmem_MemRead <= idex_MemRead;
            exmem_Branch <= idex_Branch;
            exmem_MemToReg <= idex_MemToReg;
            exmem_RegWrite <= idex_RegWrite;
            exmem_BranchOp <= idex_BranchOp;
            exmem_SLTc <= idex_SLTc;
            exmem_WriteReg <= idex_WriteReg;
        end
    end

    // Etapa MEM
    MEM mem_stage (
        .i_clk(clk),
        .i_reset(reset_a),
        .i_Address(exmem_ALUResult),
        .i_WriteData(exmem_register2),
        .i_BranchOp(exmem_BranchOp),
        .i_negative(exmem_negative),
        .i_zero(exmem_zero),
        .i_branch(exmem_Branch),
        .i_MemWrite(exmem_MemWrite),
        .i_MemRead(exmem_MemRead),
        .i_SLTc(exmem_SLTc),
        .o_PCSrc(mem_PCSrc),
        .o_ReadData(mem_ReadData),
        .o_Mux(mem_Mux)
    );

    // Pipeline MEM/WB
    always @(posedge clk or posedge reset_a) begin
        if (reset_a) begin
            memwb_ALUResult <= 32'b0;
            memwb_ReadData <= 32'b0;
            memwb_MemToReg <= 1'b0;
            memwb_RegWrite <= 1'b0;
            memwb_WriteReg <= 5'b0;
        end else begin
            memwb_ALUResult <= exmem_ALUResult;
            memwb_ReadData <= mem_ReadData;
            memwb_MemToReg <= exmem_MemToReg;
            memwb_RegWrite <= exmem_RegWrite;
            memwb_WriteReg <= exmem_WriteReg;
        end
    end

    // Etapa WB
    MUX32 wb_mux (
        .A(memwb_ALUResult),
        .B(memwb_ReadData),
        .select(memwb_MemToReg),
        .C(wb_WriteData)
    );

    // Etapa Output
    MUX32 out_mux (
        .A(ifid_address),
        .B(exmem_ALUResult),
        .select(select_out_a),
        .C(out_data)
    );


    vio u_vio (
        .clk_0       (clk),
        .probe_in0_0 (out_data),
        .probe_out0_0(reset_from_vio),
        .probe_out1_0(select_out_from_vio),
        .probe_out2_0(sel_mux)
    );

    ila u_ila (
        .clk_0    (clk),
        .probe0_0 (reset_a),
        .probe1_0 (select_out_a),
        .probe2_0 (out_data)
    );

    // Mux para seleccionar entre VIO y entradas reales
    assign reset_a = (sel_mux) ? reset_from_vio : reset;
    assign select_out_a = (sel_mux) ? select_out_from_vio : select_out;

endmodule


