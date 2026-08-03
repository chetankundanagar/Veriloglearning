`timescale 1ns / 1ps

module half_addbeh(
    input a,b,
    output reg sum,carry
    );
    always @(*) begin
       sum = a^b;
       carry = a&b;
    end
endmodule
