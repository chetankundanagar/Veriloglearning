# 4-to-1 Multiplexer (4:1 MUX) - Verilog

## Overview
This repository contains the Verilog implementation of a **4-to-1 Multiplexer (4:1 MUX)** using two different modeling styles:

- Dataflow Modeling
- Behavioral Modeling

A 4-to-1 multiplexer selects one of four input signals and forwards it to the output based on the values of two select lines.

## Truth Table

| S1 | S0 | Output (Y) |
|----|----|------------|
| 0  | 0  | i0 |
| 0  | 1  | i1 |
| 1  | 0  | i2 |
| 1  | 1  | i3 |

## Files

- mux4to1_dataflow.v – Dataflow model using continuous assignment (assign).
- mux4to1_beh.v – Behavioral model using "always" block.
- mux4to1_tb.v – Testbench for simulation.
- simulationdiagram.png - 4to1mux waveform

## Simulation

The testbench verifies the functionality by applying different combinations of:

- Input signals (i0, i1, i2, i3)
- Select lines (s1, s0)

The output is compared with the expected truth table.

## Tools Used

- Verilog HDL
- Xilinx Vivado (Simulation & Synthesis)

## Author

**Chetan Kundangar**
ECE Student | Learning VLSI Design | Verilog HDL
