`timescale 1ns / 1ps

module half_adderg(
    input a,b,
    output sum,carry
    );
    
    xor(sum,a,b);
    and(carry,a,b);
    
    
endmodule
