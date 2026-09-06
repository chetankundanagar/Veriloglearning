`timescale 1ns / 1ps

module down_counter(
    input [3:0] in,
    input latch,
    input dec,
    input clk,
    output reg [3:0] counter,
    output zero
    );
    always @(posedge clk)
    begin
         if(latch)
         begin
              counter <= in;
         end
         else if(dec && !zero)
         begin
              counter <= counter - 4'b0001;
         end
         else
         begin
              counter <= counter;
         end
     
    end
    
    assign zero = (counter == 4'b0);
    
    
endmodule
