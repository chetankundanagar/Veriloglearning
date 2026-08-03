`timescale 1ns / 1ps

module full_addergate(
    input a,b,cin,
    output sum,carry
    );
    wire w1,w2,w3;
    xor(w1,a,b);
    xor(sum,w1,cin);
    
    and(w2,w1,cin);
    and(w3,a,b);
    
    or(carry,w2,w3);
    
    
    
endmodule
