`timescale 1ns / 1ps
   
module mux4to1_beh(
    input i0,i1,i2,i3,
    input s,
    output reg y
    );
    
    always @(*) begin 
         case(s)
           2'b00:y=i0;
           2'b01:y=i1;
           2'b10:y=i2;
           2'b11:y=i3;
         endcase
    end
endmodule
