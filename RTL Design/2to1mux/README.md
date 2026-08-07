# 2-to-1 Multiplexer (MUX) using Verilog

## Overview

This repository contains the implementation of a **2-to-1 Multiplexer (MUX)** in Verilog using two different modeling styles:

* Dataflow Modeling
* Behavioral Modeling

## Truth Table

| Select (S) | Output (Y) |
| ---------- | ---------- |
| 0          | I0         |
| 1          | I1         |

## Files

text
2to1-MUX/
├── mux2to1.v
├── mux2to1_beh.v
└── README.md


## Modeling Styles
## Dataflow Modeling

* Implemented using continuous assignment ("assign") statements.
* Describes the logic using Boolean expressions.

### Behavioral Modeling

* Implemented using an "always" block with procedural statements (case).
* Describes the circuit behavior based on the select input.

## Tools Used

* Verilog HDL
* Vivado

## Author

**Chetan Kundangar**
Electronics and Communication Engineering (ECE) Student

