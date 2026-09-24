`timescale 1ns / 1ps
//module instantiation
module down_counter_tb();
reg [3:0]in_tb;
reg latch_tb;
reg dec_tb;
reg clk_tb;
wire [3:0]counter_tb;
wire zero_tb;

//design instantiation
down_counter dut(.in(in_tb),.latch(latch_tb),.dec(dec_tb),.clk(clk_tb),.counter(counter_tb),.zero(zero_tb));

initial 
begin
   
     in_tb = 4'b1010;
     clk_tb = 1'b0;
     latch_tb = 1'b0;
     dec_tb = 1'b0;
     $display("Test case 1");
     #10
     latch_tb = 1'b1;
     #10
     if(counter_tb == 4'b1010)
       $display("Test case 1 passed with counter value = %0h at simulation time",counter_tb,$time);
     else
       $display("Test cae 1 failed with counter value = %0h at simulation time",counter_tb,$time);
     $display("Test case 2");
     latch_tb = 1'b1;
     dec_tb = 1'b0;
     if(counter_tb == 4'b1010)
        $display("Test case 2 passed with counter value = %0h at simulation time",counter_tb,$time);
     else
        $display("Test cae 2 failed with counter value = %0h at simulation time",counter_tb,$time);
     $display("Third case 3");
     latch_tb = 1'b0;
     #30
     if(counter_tb == 4'b1111)
        $display("Test case 3 passed with counter value = %0h at simulation time",counter_tb,$time);
     else
        $display("Test cae 3 failed with counter value = %0h at simulation time",counter_tb,$time);
     $display("Test case 4");
     latch_tb = 1'b0;
     #80
     if(counter_tb == 4'b0 && zero_tb == 1'b1)
       $display("test case 4 passed with counter value = %0h at simulation time",counter_tb,$time);
     else
       $display("test case 4 failed with counter value = %0h at simulation time",counter_tb,$time);
     #100
     $stop;
end
//clock generator
always #5 clk_tb = ~clk_tb;
//design instantiation


endmodule
