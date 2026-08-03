`timescale 1ns / 1ps

module full_adderdata(
    input a,b,cin,
    output sum,carry
    );
    
    assign sum = a^b^cin;
    assign carry = cin&(a^b)|(a&b);
    
endmodule
