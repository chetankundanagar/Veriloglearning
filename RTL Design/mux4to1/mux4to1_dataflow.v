`timescale 1ns / 1ps

module mux4to1_dataflow(
    input i0,i1,i2,i3,
    input s0,s1,
    output y
    );
    
    assign y = (s0 == 1'b0 && s1 == 1'b0)?i0:
               (s0 == 1'b1 && s1 == 1'b0)?i1:
               (s0 == 1'b0 && s1 == 1'b1)?i2:
                                          i3;
endmodule
