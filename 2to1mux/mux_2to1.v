`timescale 1ns / 1ps

module mux_2to1(
    input i0,i1,
    input s,
    output y
    );
    assign y = (s == 1'b0)?i0:i1;
endmodule
