`timescale 1ns / 1ps

module demux_4x1(
    input d,
    input s0,s1,
    output y0,
    output y1,
    output y2,
    output y3
    );
    assign y0 = d&(~s0)&(~s1);
    assign y1 = d&s0&(~s1);
    assign y2 = d&(~s0)&s1;
    assign y3 = d&s0&s1;
endmodule
