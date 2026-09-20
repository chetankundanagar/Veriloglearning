`timescale 1ns / 1ps

module demux_2x1(
    input d,
    input s,
    output y0,
    output y1
    );
    assign y0 = d&(~s);
    assign y1 = d&s;
endmodule
