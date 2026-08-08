`timescale 1ns / 1ps

module mux8to1_data(
    input i0,i1,i2,i3,i4,i5,i6,i7,
    input s0,s1,s2,
    output y
    );
     assign y = (s2 == 1'b0 && s1 == 1'b0 && s0 == 1'b0)?i0:
                  (s2 == 1'b0 && s1 == 1'b0 && s0 == 1'b1)?i1:
                  (s2 == 1'b0 && s1 == 1'b1 && s0 == 1'b0)?i2:
                  (s2 == 1'b0 && s1 == 1'b1 && s0 == 1'b1)?i3:
                  (s2 == 1'b1 && s1 == 1'b0 && s0 == 1'b0)?i4:
                  (s2 == 1'b1 && s1 == 1'b0 && s0 == 1'b1)?i5:
                  (s2 == 1'b1 && s1 == 1'b1 && s0 == 1'b0)?i6:
                                                           i7;

endmodule
