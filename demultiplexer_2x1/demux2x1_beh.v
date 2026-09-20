`timescale 1ns / 1ps

module demux2x1_beh(
    input d,
    input s,
    output reg y0,
    output reg y1
    );
    
    always@ (*)begin
    
    case(s)
       1'b0:y0=d;
       1'b1:y1=d;
    endcase
       
    end
 
endmodule
