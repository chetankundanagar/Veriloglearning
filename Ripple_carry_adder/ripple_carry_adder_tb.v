`timescale 1ns / 1ps

module ripple_carry_adder_tb();
reg [3:0]a;
reg [3:0]b;
reg cin;
wire [3:0]sum;
wire cout;

ripple_carry_adder dut(a,b,cin,sum,cout);
initial begin
        a = 4'b0011; b = 4'b0101; cin = 0;
   #10  a = 4'b1111; b = 4'b0001; cin = 0;
   #10  a = 4'b1010; b = 4'b0101; cin = 1;
   #10  $finish;   
end

endmodule
