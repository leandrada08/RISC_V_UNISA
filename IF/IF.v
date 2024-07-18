module IF (
    output [31:0] o_address,
    output [31:0] o_instruccion,

    input  [31:0] i_branch_address,
    input         i_reset,
    input         i_select,
    input         i_clock
);

    // Declaro las variables
    wire [31 : 0] next_address;
    wire [31 : 0] address;
    wire [31 : 0] address_4;
    wire [31 : 0] instruccion;

    // Instancio las componentes 
    MUX32 u_MUX32 (
        .A(address_4),
        .B(i_branch_address),
        .select(i_select),
        .C(next_address)
    );

    ADD4 u_ADD4 (
        .current_address(address),
        .next_address(address_4)
    );

    PC u_PC (
        .next_address(next_address),
        .clock(i_clock),
        .reset(i_reset),
        .address(address)
    );

    MEM_INST u_MEM_INST (
        .i_pc(address),
        .o_instruccion(instruccion)
    );

    // Asigno las salidas
    assign o_address    = address;
    assign o_instruccion= instruccion;

endmodule
