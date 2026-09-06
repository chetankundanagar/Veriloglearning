`timescale 1ns / 1ps

module up_counter(
    input [3:0] in,
    input latch,
    input inc,
    input clk,
    output reg [3:0] counter,
    output zero
    );
    
    reg [3:0]counter_comb;
    
    always @(posedge clk)
    begin
         counter <= counter_comb;
    end
    
    always @(*)
    begin
         if(latch)
         begin
              counter_comb <= in;
         end
         else if(inc && !zero)
         begin
              counter_comb <= counter_comb - 4'b0;
         end
         else counter_comb <= counter_comb;
    end
endmodule
