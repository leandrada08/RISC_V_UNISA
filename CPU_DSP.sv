module CPU_DSP (
    input           clk,
    input           i_reset,
    input  [3:0]    i_select_out,
    output [31:0]   o_out_data // Salida de la CPU
);

    //! Signals CPU - Sis
    wire        dsp_start;            // Señal de inicio para el DSP
    wire [1:0]  dsp_operation;  // Operación que realizará el DSP
    wire [31:0] pc_out;
    wire [31:0] alu_result_out;

    //! Signals DSP-Memoria
    wire [31:0] dsp_A[7:0];    // Entrada A para el DSP
    wire [31:0] dsp_B[7:0];    // Entrada B para el DSP
    wire [31:0] dsp_result[7:0]; // Salida del DSP
    wire        dsp_done;             // Señal que indica que el DSP ha finalizado
    wire [4:0]  mem_addr_a;       // Dirección de memoria gestionada por la CPU
    wire [4:0]  mem_addr_b;       // Dirección de memoria gestionada por la CPU
    wire [4:0]  mem_addr_write;       // Dirección de memoria gestionada por la CPU

    //! Signals Sinc
    wire        clk_dsp;
    wire        dsp_start_sinc;
    reg  [2:0]  aux_star_sinc;
    reg  [1:0]  dsp_op_sinc;
    reg  [1:0]  addres_a_sinc;
    reg  [1:0]  addres_b_sinc;
    reg  [1:0]  addres_w_sinc; 

    //! Signals Vio
    wire        v_reset;
    wire  [3:0] v_select_out;


    //! Signals Vio-Sist
    wire        reset;
    wire [3:0]  select_out;      

    //Sistema para sincronizar las señales de la CPU con las de la DSP y memoria
// Genera el toggle en el dominio rápido (100 MHz)
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            dsp_op_sinc <= 2'b00;
            aux_star_sinc <= 2'b00;
            addres_a_sinc  <= 2'b00;
            addres_b_sinc  <= 2'b00;
            addres_w_sinc  <= 2'b00;
        end else begin
            aux_star_sinc <= {aux_star_sinc[1],aux_star_sinc[0], dsp_start};
            if (dsp_start) begin     
                dsp_op_sinc <= dsp_operation;  // Sincroniza la operación
                addres_a_sinc <= mem_addr_a;
                addres_b_sinc <= mem_addr_b;
                addres_w_sinc <= mem_addr_write;
            end 
        end
    end
    
    assign dsp_start_sinc = aux_star_sinc[2]|aux_star_sinc[1]|aux_star_sinc[1];




    // Instancia del bloque de CPU
    CPU_pipeline cpu_core (
        .clk(clk),
        .reset(reset),        // Seleccionamos salida de CPU o DSP
        .pc(pc_out),
        .alu_result(alu_result_out),
        .start_dsp(dsp_start),     // Señal de inicio hacia el DSP
        .op_dsp(dsp_operation),    // Operación a realizar por el DSP
        .RA(mem_addr_a),
        .RB(mem_addr_b),
        .RW(mem_addr_write)
    );

    // Instancia del bloque de DSP
    DSP dsp_core (
        .clk(clk_dsp),
        .rst(reset),
        .start(dsp_start_sinc),           // Comienza la operación del DSP
        .operation(dsp_op_sinc),   // Operación seleccionada
        .A(dsp_A),                   // Datos de entrada A
        .B(dsp_B),                   // Datos de entrada B
        .result(dsp_result),         // Resultado de la operación
        .done(dsp_done)              // Señal que indica el fin de la operación
    );

    // Instancia de la memoria
    MEM_DSP mem_core (
        .clk(clk_dsp),
        .reset(reset),
        .RA(addres_a_sinc),                 // Dirección de memoria desde la CPU
        .RB(addres_b_sinc),
        .RW(addres_w_sinc),
        .MemWrite(dsp_done),
        .busW(dsp_result),
        .busA(dsp_A),                  // Datos que se escriben en memoria
        .busB(dsp_B)
    );

    assign o_out_data =
            (select_out == 4'b0000) ? pc_out:
            (select_out == 4'b0001) ? alu_result_out:
            (select_out == 4'b0010) ? dsp_result[0]:
            (select_out == 4'b0011) ? dsp_result[1]:
            (select_out == 4'b0100) ? dsp_result[2]:
            (select_out == 4'b0101) ? dsp_result[3]:
            (select_out == 4'b0110) ? dsp_result[4]:
            (select_out == 4'b0111) ? dsp_result[5]:
            (select_out == 4'b1000) ? dsp_result[6]:
            (select_out == 4'b1001) ? dsp_result[7]:
            pc_out;

    // MMCME2_BASE #(
    //     .CLKIN1_PERIOD(10.0),   // Periodo del reloj de entrada de 100 MHz
    //     .CLKFBOUT_MULT_F(10.0), // Multiplica por 10
    //     .DIVCLK_DIVIDE(5)       // Divide por 5 para obtener 200 MHz
    // ) mmcm_inst (
    //     .CLKIN1(clk),        // Reloj de entrada de 100 MHz
    //     .CLKOUT0(clk_dsp)    // Salida del reloj de 200 MHz
    // );        

    clk_mmcm MMCM(
        .clk_in1_0(clk),
        .clk_out1_0(clk_dsp),
        .locked_0(locked),
        .reset_0(reset)
    );


    ila u_ila(
        .clk_0(clk),
        .probe0_0(select_out),
        .probe1_0(o_out_data)
    );

    vio u_vio(
        .clk_0(clk),
        .probe_in0_0(o_out_data),
        .probe_out0_0(v_reset),
        .probe_out1_0(v_select_out),
        .probe_out2_0(sel_in)
    );

    assign reset = (sel_in) ? v_reset : i_reset;
    assign select_out = (sel_in) ? v_select_out : i_select_out;

endmodule