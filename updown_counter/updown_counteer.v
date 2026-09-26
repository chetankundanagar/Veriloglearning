`timescale 1ns / 1ps

module updown_counter(
    input [4:0] in,
    input load,
    input up,
    input down,
    input clk,
    output reg [4:0] counter,
    output reg high,
    output reg low
    );
    
    
    always @(posedge clk)
    begin
    
    if(load)
    begin
       counter = in;
    end
    else if(down && !low)
    begin
       counter = counter - 5'b1;
    end
    else if(up &&  !high)
    begin
       counter = counter + 5'b1;
    end
    else begin
       counter = counter;
    end
    end
    
    always @(*)
    begin
    if(counter == 5'b0)
       low = 1'b1;
    else
       low = 1'b0;
    end
    
    always @(*)
    begin
    if(counter == 5'b11111)
       high = 1'b1;
    else
       high = 1'b0;
    end
    
endmodule
