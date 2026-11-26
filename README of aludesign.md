# 16-Bit ALU Design in Verilog

## Overview

This project implements a 16-bit Arithmetic Logic Unit (ALU) using
Verilog HDL. The ALU performs arithmetic, logical, comparison, and
shift-related operations based on a 4-bit function select input
(`ALU_FUN`).

## Features

-   16-bit input operands: `A` and `B`
-   4-bit operation selector: `ALU_FUN`
-   16-bit result output: `ALU_out`
-   Status flags:
    -   `carry_flag`
    -   `arith_flag`
    -   `logic_flag`
    -   `CMP_flag`
    -   `shift_flag`

## Operation Table

  -----------------------------------------------------------------------
  `ALU_FUN`               Operation               Description
  ----------------------- ----------------------- -----------------------
  `0000`                  Addition                `A + B`

  `0001`                  Subtraction             `A - B`

  `0010`                  Multiplication          `A * B` (16-bit result)

  `0011`                  Division                `A / B`

  `0100`                  AND                     `A & B`

  `0101`                  OR                      `A \| B`

  `0110`                  NAND                    `~(A & B)`

  `0111`                  NOR                     `~(A \| B)`

  `1000`                  XOR                     `A ^ B`

  `1001`                  XNOR                    `~(A ^ B)`

  `1010`                  Equal comparison        Output is `1` when
                                                  `A == B`, otherwise `0`

  `1011`                  Greater-than comparison Output is `1` when
                                                  `A > B`, otherwise `0`

  `1100`                  Less-than comparison    Output is `1` when
                                                  `A < B`, otherwise `0`

  `1101`                  Right-shift-related     Tests the result of
                          check                   `A >> 1` and outputs
                                                  `1` if it is nonzero

  `1110`                  Left-shift-related      Tests the result of
                          check                   `A << 1` and outputs
                                                  `1` if it is nonzero

  `1111`                  Default                 Output and flags are
                                                  cleared
  -----------------------------------------------------------------------

## Module Interface

  ------------------------------------------------------------------------------
  Signal           Direction                        Width Description
  ---------------- ---------------- --------------------- ----------------------
  `A`              Input                          16 bits First operand

  `B`              Input                          16 bits Second operand

  `ALU_FUN`        Input                           4 bits Selects the ALU
                                                          operation

  `clk`            Input                            1 bit Clock input (currently
                                                          unused in the RTL)

  `ALU_out`        Output                         16 bits ALU result

  `carry_flag`     Output                           1 bit Carry output for
                                                          addition/subtraction
                                                          assignments

  `arith_flag`     Output                           1 bit Indicates an
                                                          arithmetic operation

  `logic_flag`     Output                           1 bit Indicates a logical
                                                          operation

  `CMP_flag`       Output                           1 bit Indicates a comparison
                                                          operation

  `shift_flag`     Output                           1 bit Indicates a
                                                          shift-related
                                                          operation
  ------------------------------------------------------------------------------

## Implementation Details

-   The module is named `ALU_16bit`.
-   The ALU uses a combinational `always @(*)` block and a `case`
    statement to select operations.
-   All result and status outputs are assigned default values at the
    beginning of the block.
-   The arithmetic, logical, comparison, and shift-related status flags
    are asserted according to the selected operation.

## Important Notes

-   The `clk` input is declared but is not used; the current design is
    combinational.
-   The multiplication result is assigned to a 16-bit output, so any
    higher-order bits are discarded.
-   Division by zero is not handled in the current implementation.
-   The shift cases currently test whether the shifted value is nonzero
    and return `1` or `0`; they do not place the shifted 16-bit value on
    `ALU_out`.

## File Structure

``` text
.
└── ALU_16bit.v
```

## How to Use

1.  Clone or download this repository.
2.  Add `ALU_16bit.v` to your Verilog project.
3.  Instantiate the `ALU_16bit` module in your top-level design or
    testbench.
4.  Apply values to `A`, `B`, and `ALU_FUN`.
5.  Simulate the design and observe `ALU_out` and the status flags.

## Tools

This project is written in **Verilog HDL**. It can be simulated using a
Verilog simulator such as Icarus Verilog or the simulation tools
available in Xilinx Vivado.

## Future Improvements

-   Implement actual left- and right-shift result operations.
-   Add explicit handling for division by zero.
-   Review and define the intended carry/borrow behavior for
    subtraction.
-   Add a testbench covering every ALU operation.
