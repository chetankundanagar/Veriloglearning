8to1 Multiplexer

## Description

An 8-to-1 Multiplexer is a combinational circuit that selects one input from eight input signals and sends it to the output based on three select lines.

## Inputs

* i0, i1, i2, i3, i4, i5, i6, i7 – 8 input signals
* s0, s1, s2 – Select lines

## Output

* y – Selected output

## Working

The three select lines determine which input is connected to the output.

| s2 | s1 | s0 | Output |
| -- | -- | -- | ------ |
| 0  | 0  | 0  | i0     |
| 0  | 0  | 1  | i1     |
| 0  | 1  | 0  | i2     |
| 0  | 1  | 1  | i3     |
| 1  | 0  | 0  | i4     |
| 1  | 0  | 1  | i5     |
| 1  | 1  | 0  | i6     |
| 1  | 1  | 1  | i7     |

## Verilog Implementation

The 8-to-1 MUX is implemented using **Dataflow Modeling** in Verilog.

## Tools Used

* Verilog HDL
* Xilinx Vivado

## Concepts Learned

* 8-to-1 Multiplexer
* Select lines
* Combinational logic
* Dataflow modeling
* Behavioral modeling
* Testbench and simulation

## Author
**Chetan Kundanagar**

Electronics and Communication Engineering Student

