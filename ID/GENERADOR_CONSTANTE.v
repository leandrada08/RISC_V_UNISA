
module GENERADOR_CONSTANTE(
    input wire [31:0] instruccion, // Ingresso dell'istruzione
    output wire [31:0] constante // Uscita della costante immediata
);

    // Dichiarazione dei segnali interni
    wire [11:0] I_imm; // Costante immediata di tipo I
    wire [11:0] S_imm; // Costante immediata di tipo S
    wire [6:0] opcode; // Codice operativo dell'istruzione

    // Assegnazione dei segnali interni in base al formato dell'istruzione
    assign I_imm = instruccion[31:20]; // Bit [31:20] dell'istruzione
    assign S_imm = {instruccion[31:25], instruccion[11:7]}; // Bit [31:25] e [11:7] dell'istruzione
    assign opcode= instruccion[6:0];

    // Logica di selezione della costante immediata in base al tipo di istruzione
    assign constante =  (opcode == 7'b0010011 || (opcode == 7'b0000011 && instruccion[14:12] == 3'b010) ) ? { {20{I_imm[11]}}, I_imm } : // Tipo I sin load y con loads
                        (opcode == 7'b0100011) ? { {20{S_imm[11]}}, S_imm } :
                        (opcode == 7'b1100011) ? { {20{S_imm[11]}}, S_imm[0] ,S_imm[10:5], S_imm[4:1], 1'b0 } :
                        32'b0;
endmodule







