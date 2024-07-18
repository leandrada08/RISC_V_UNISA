//`timescale 1ns / 1ps

module tb_ADD4();

    // Entradas
    reg [31:0] A;
    
    // Salidas
    wire [31:0] C;
    
    // Instancia del módulo bajo prueba (DUT)
    ADD4 u_AD4D(
        .current_address(A),
        .next_address(C)
    );
    


    // Estímulo
    initial begin
        // Inicialización de entradas
        A <= $random;

        # 10;
        if(C != A + 1) begin
            $error("Error: Output does not match expected value");
        end

        # 10;
        A <=$random;
        # 10;
        if(C != A + 1) begin
            $error("Error: Output does not match expected value");
        end

        #100 $finish;
    end
    
    
endmodule