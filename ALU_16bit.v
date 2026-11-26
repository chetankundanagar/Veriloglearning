`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.11.2026 12:29:10
// Design Name: 
// Module Name: ALU_16bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU_16bit(
    input [15:0] A,B,
    input [3:0] ALU_FUN,
    input clk,
    output reg [15:0]ALU_out,
    output reg carry_flag,
    output reg arith_flag,
    output reg logic_flag,
    output reg CMP_flag,
    output reg shift_flag
    );
    
    always @(*) begin
    ALU_out = 1'b0;
    carry_flag = 1'b0;
    arith_flag = 1'b0;
    logic_flag = 1'b0;
    CMP_flag = 1'b0;
    shift_flag = 1'b0;
    
    case(ALU_FUN)
    4'b0000: begin
            {carry_flag,ALU_out} = A+B;
            arith_flag = 1'b1;
             end
    4'b0001: begin
             {carry_flag,ALU_out} = A-B;
             arith_flag = 1'b1;
             end
    4'b0010: begin
             ALU_out = A*B;
             arith_flag = 1'b1;
             end
    4'b0011: begin
             ALU_out = A/B;
             arith_flag = 1'b1;
             end
    4'b0100: begin
             ALU_out = A&B;
             logic_flag = 1'b1;
             end
    4'b0101: begin
             ALU_out = A|B;
             logic_flag = 1'b1;
             end
    4'b0110: begin
             ALU_out = ~(A&B);
             logic_flag = 1'b1;
             end
    4'b0111: begin
             ALU_out = ~(A|B);
             logic_flag = 1'b1;
             end
    4'b1000: begin
             ALU_out = A^B;
             logic_flag = 1'b1;
             end
    4'b1001: begin
             ALU_out = ~(A^B);
             logic_flag = 1'b1;
             end
    4'b1010: begin
             CMP_flag = 1'b1;
             if(A==B)
              ALU_out = 16'b1;
              else
              ALU_out = 16'b0;
             end
    4'b1011: begin
             CMP_flag = 1'b1;
             if(A>B)
             ALU_out = 16'b1;
             else
             ALU_out = 16'b0;
             end
    4'b1100: begin
             CMP_flag = 1'b1;
             if(A<B)
             ALU_out = 16'b1;
             else
             ALU_out = 16'b0;
             end
    4'b1101: begin
             shift_flag = 1'b1;
             if(A>>1)
             ALU_out = 16'b1;
             else
             ALU_out = 16'b0;
             end
    4'b1110: begin
             shift_flag = 1'b1;
             if(A<<1)
             ALU_out = 16'b1;
             else
             ALU_out = 16'b0;
             end
    default: begin
             ALU_out = 16'b0;
             carry_flag = 1'b0;
             arith_flag = 1'b0;
             logic_flag = 1'b0;
             CMP_flag = 1'b0;
             shift_flag = 1'b0;
             end
    endcase
    end
endmodule
