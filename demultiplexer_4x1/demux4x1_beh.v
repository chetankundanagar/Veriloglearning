`timescale 1ns / 1ps

module demux4x1_beh(
    input d,
    input [0:2]s,
    output reg y0,
    output reg y1,
    output reg y2,
    output reg y3
    );
    
    always@ (*)begin
    
    case(s)
      2'b00:y0=d;
      2'b01:y1=d;
      2'b10:y2=d;
      2'b11:y3=d;
          
    endcase
    end
endmodule
