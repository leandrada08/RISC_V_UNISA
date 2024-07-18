`include "RISCV.sv"

module REGISTERS (
    input                   clk,
    input                   reset,  // Añadimos la señal de reset
    input   [4:0]      RA,
    input   [4:0]      RB,
    input   [4:0]      RW,
    input                   RegWrite,
    input   [31:0]    busW,
    output  [31:0]    busA,
    output  [31:0]    busB
);


    // Divento i 32 registers
reg [31:0] registers [0:31];
wire a_RegWrite;

assign a_RegWrite = (^busW === 1'bx)? 1'b0: RegWrite;

always @(posedge clk) begin
    if(reset) begin
        registers[0]  <=  32'h00000000;
        registers[1]  <=  32'h00000000;
        registers[2]  <=  32'h00000000;
        registers[3]  <=  32'h00000000;
        registers[4]  <=  32'h00000000;
        registers[5]  <=  32'h00000000;
        registers[6]  <=  32'h00000000;
        registers[7]  <=  32'h00000000;
        registers[8]  <=  32'h00000000;
        registers[9]  <=  32'h00000000;
        registers[10]  <=  32'h00000000;
        registers[11]  <=  32'h00000000;
        registers[12]  <=  32'h00000000;
        registers[13]  <=  32'h00000000;
        registers[14]  <=  32'h00000000;
        registers[15]  <=  32'h00000000;
        registers[16]  <=  32'h00000000;
        registers[17]  <=  32'h00000000;
        registers[18]  <=  32'h00000000;
        registers[19]  <=  32'h00000000;
        registers[20]  <=  32'h00000000;
        registers[21]  <=  32'h00000000;
        registers[22]  <=  32'h00000000;
        registers[23]  <=  32'h00000000;
        registers[24]  <=  32'h00000000;
        registers[25]  <=  32'h00000000;
        registers[26]  <=  32'h00000000;
        registers[27]  <=  32'h00000000;
        registers[28]  <=  32'h00000000;
        registers[29]  <=  32'h00000000;
        registers[30]  <=  32'h00000000;
        registers[31]  <=  32'h00000000;
    end else begin
        if (a_RegWrite) begin
        // Escribir en el registro seleccionado
            case (RW)
                5'b00000: registers[0]  <=  busW;
                5'b00001: registers[1]  <=  busW;
                5'b00010: registers[2]  <=  busW;
                5'b00011: registers[3]  <=  busW;
                5'b00100: registers[4]  <=  busW;
                5'b00101: registers[5]  <=  busW;
                5'b00110: registers[6]  <=  busW;
                5'b00111: registers[7]  <=  busW;
                5'b01000: registers[8]  <=  busW;
                5'b01001: registers[9]  <=  busW;
                5'b01010: registers[10]  <=  busW;
                5'b01011: registers[11]  <=  busW;
                5'b01100: registers[12]  <=  busW;
                5'b01101: registers[13]  <=  busW;
                5'b01110: registers[14]  <=  busW;
                5'b01111: registers[15]  <=  busW;
                5'b10000: registers[16]  <=  busW;
                5'b10001: registers[17]  <=  busW;
                5'b10010: registers[18]  <=  busW;
                5'b10011: registers[19]  <=  busW;
                5'b10100: registers[20]  <=  busW;
                5'b10101: registers[21]  <=  busW;
                5'b10110: registers[22]  <=  busW;
                5'b10111: registers[23]  <=  busW;
                5'b11000: registers[24]  <=  busW;
                5'b11001: registers[25]  <=  busW;
                5'b11010: registers[26]  <=  busW;
                5'b11011: registers[27]  <=  busW;
                5'b11100: registers[28]  <=  busW;
                5'b11101: registers[29]  <=  busW;
                5'b11110: registers[30]  <=  busW;
                5'b11111: registers[31]  <=  busW;
                default: registers[0] <= busW;
            endcase
        /* No lo puedo hacer asi?
        
        registers[RW] <= busW;?
        
        */
        end
    end
end
assign busA = registers[RA];
assign busB = registers[RB];


// task printAll;
//     integer print_index;
//     begin
//     print_index = 0;
//     while (print_index < 32)
//         begin
//           $display("%s: %h   %s: %h  %s: %h   %s: %h", rname(print_index), registers[print_index], rname(print_index + 1), registers[print_index + 1], rname(print_index + 2), registers[print_index + 2], rname(print_index + 3), registers[print_index + 3]);
//           print_index = print_index + 4;
//         end
//     end
// endtask


// function [31:0] rname(input[4:0] r);
//     reg [31:0] name;
//     begin
//     case(r)
//         0: name = "zero";
//         1: name = "ra";
//         2: name = "sp";
//         3: name = "gp";
//         4: name = "tp";
//         5,6,7: $sformat(name, "t%1d", r-5);
//         8,9: $sformat(name, "s%1d", r-8);
//         10,11,12,13,14,15,16,17: $sformat(name, "a%1d", r-10);
//         18,19,20,21,22,23,24,25,26,27: $sformat(name, "s%1d", r-16);
//         28,29,30,31: $sformat(name, "t%1d", r-25);
//         default: name = "xxxx";
//     endcase
//     $sformat(name, "%4s", name);
//     rname = name;
//     end
// endfunction


endmodule




