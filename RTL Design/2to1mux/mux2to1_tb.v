`timescale 1ns / 1ps

module mux2to1_tb();
reg s;
reg i0,i1;
wire y;

mux2to1_beh uut(i0,i1,s,y);

initial begin
      i0=1;i1=0;s=0;
  #10 s=1;
  #10 $finish;
end

endmodule
