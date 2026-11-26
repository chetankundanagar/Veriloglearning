16-Bit ALU Design Using Verilog

Overview:
This project implements a 16-bit Arithmetic Logic Unit (ALU) using Verilog HDL. It performs arithmetic, logical, comparison, and shift-related operations based on a 4-bit function select input (ALU_FUN).

Features:
- 16-bit input operands (A and B).
- 4-bit ALU function selector.
- Arithmetic operations.
- Logical operations.
- Comparison operations.
- Shift-related operations.
- Status flag generation.

ALU Operations:
0000 - Addition
0001 - Subtraction
0010 - Multiplication
0011 - Division
0100 - AND
0101 - OR
0110 - NAND
0111 - NOR
1000 - XOR
1001 - XNOR
1010 - Equal Comparison
1011 - Greater Than Comparison
1100 - Less Than Comparison
1101 - Right Shift Check
1110 - Left Shift Check
1111 - Default Operation

Inputs:
A        - 16-bit first operand.
B        - 16-bit second operand.
ALU_FUN  - 4-bit operation selector.
clk      - Clock input (currently unused).

Outputs:
ALU_out    - 16-bit ALU result.
carry_flag - Carry status flag.
arith_flag - Arithmetic operation flag.
logic_flag - Logical operation flag.
CMP_flag   - Comparison operation flag.
shift_flag - Shift operation flag.

Tools Used:
- Verilog HDL
- Xilinx Vivado
- Icarus Verilog
- Visual Studio Code

Implementation:
The ALU is implemented using a combinational always @(*) block and a case statement to select the required operation based on ALU_FUN.

Future Improvements:
- Add a testbench for verification.
- Improve shift operation implementation.
- Handle division-by-zero conditions.
- Verify carry and borrow conditions.

Author:
Chetan Kundanagar
ECE Student | Aspiring RTL/VLSI Engineer
