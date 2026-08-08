`timescale 1ns / 1ps

module tb_mux8to1();
reg i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2;
wire y;

mux8to1_data dut(i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,y);

initial begin
     i0=1;i1=0;i2=1;i3=1;i4=0;i5=1;i6=0;i7=0;
     s0=1'b0;s1=1'b0;s2=1'b0;
 #10 s0=1'b0;s1=1'b0;s2=1'b0;
 #10 s0=1'b0;s1=1'b0;s2=1'b1;
 #10 s0=1'b0;s1=1'b1;s2=1'b0;
 #10 s0=1'b0;s1=1'b1;s2=1'b1;
 #10 s0=1'b1;s1=1'b0;s2=1'b0;
 #10 s0=1'b1;s1=1'b0;s2=1'b1;
 #10 s0=1'b1;s1=1'b1;s2=1'b0;
 #10 s0=1'b1;s1=1'b1;s2=1'b1;
 #10 $finish;
 
end

endmodule
