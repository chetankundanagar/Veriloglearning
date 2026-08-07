`timescale 1ns / 1ps

module mux4to1_tb();
reg i0,i1,i2,i3,s0,s1;
wire y;

mux4to1_dataflow uut(i0,i1,i2,i3,s0,s1,y);

initial begin
     i0=1;i1=0;i2=1;i3=0;
     s1=0;s0=0;
 #10 s1=0;s0=1;
 #10 s1=1;s0=0;
 #10 s1=1;s0=1;
 #10 $finish;
end
endmodule
