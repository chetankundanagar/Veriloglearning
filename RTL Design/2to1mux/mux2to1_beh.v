`timescale 1ns / 1ps

module mux2to1_beh(
    input i0,i1,
    input s,
    output reg y
    );
    
    always @(*) begin
        case(s)
          1'b0:y=i0;
          1'b1:y=i1;
        endcase
    end
    
    
endmodule
