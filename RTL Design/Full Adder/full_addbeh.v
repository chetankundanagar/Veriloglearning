`timescale 1ns / 1ps

module full_addbeh(
    input a,b,cin,
    output reg sum,carry
    );
    
    always @(*) begin
        sum = a^b^cin;
        carry = cin&(a^b)|(a&b);
        
    end
endmodule
