


module MEM_DATA(
    input  wire          i_clk,        // Señal de reloj
    input  wire          i_reset,      // Señal de reset
    input  wire          i_memwrite,   // Señal de control de escritura en memoria
    input  wire          i_memread,    // Señal de control de lectura en memoria
    input  wire [31:0]   i_address,    // Dirección de memoria para leer/escribir
    input  wire [31:0]   i_write_data, // Datos a escribir en la memoria
    output wire [31:0] o_read_data // Datos leídos de la memoria
);

    // Declaración de una memoria de 256 palabras (direcciones desde 0xC00 a 0xCFF)
    reg [31:0] data [32'hcff:32'hc00];
    integer index;

    // Bloque always para la inicialización y lectura/escritura de la memoria
    always @(posedge i_clk or posedge i_reset) begin
        if (i_reset) begin
            for (index = 32'hc00; index < 32'hcff; index = index + 1) begin
                data[index] <= 0;
            end
        end else begin
            if (i_memwrite) begin
                data[i_address] <= i_write_data; // Usamos solo los 8 bits menos significativos
            end
        end
    end

    assign o_read_data = (i_memread) ? data[i_address]: 32'h00000000;

endmodule
