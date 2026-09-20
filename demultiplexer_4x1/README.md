# Demultiplexer 4x1

## Overview

A **Demultiplexer (DEMUX)** is a combinational digital circuit that takes **one data input** and routes it to **one of multiple outputs** based on the select lines.

This project implements a **1×4 Demultiplexer** using Verilog HDL in two different modeling styles:

* Dataflow Modeling
* Behavioral Modeling

## Circuit Specifications

| **Parameter** | **Value**              |
| ------------- | ---------------------- |
| Data Inputs   | 1                      |
| Select Inputs | 2                      |
| Outputs       | 4                      |
| Select Lines  | `s0`, `s1`             |
| Data Input    | `d`                    |
| Outputs       | `y0`, `y1`, `y2`, `y3` |

## Truth Table

| **Select (`s1`)** | **Select (`s0`)** | **Data (`d`)** | **`y0`** | **`y1`** | **`y2`** | **`y3`** |
| ----------------- | ----------------- | -------------- | -------- | -------- | -------- | -------- |
| 0                 | 0                 | 0              | 0        | 0        | 0        | 0        |
| 0                 | 0                 | 1              | 1        | 0        | 0        | 0        |
| 0                 | 1                 | 0              | 0        | 0        | 0        | 0        |
| 0                 | 1                 | 1              | 0        | 1        | 0        | 0        |
| 1                 | 0                 | 0              | 0        | 0        | 0        | 0        |
| 1                 | 0                 | 1              | 0        | 0        | 1        | 0        |
| 1                 | 1                 | 0              | 0        | 0        | 0        | 0        |
| 1                 | 1                 | 1              | 0        | 0        | 0        | 1        |

### Working

* When `s1s0 = 00`, the input `d` is routed to `y0`.
* When `s1s0 = 01`, the input `d` is routed to `y1`.
* When `s1s0 = 10`, the input `d` is routed to `y2`.
* When `s1s0 = 11`, the input `d` is routed to `y3`.

## Boolean Expressions

```text
y0 = d · s1' · s0'
y1 = d · s1' · s0
y2 = d · s1 · s0'
y3 = d · s1 · s0
```

## Modeling Styles Compared

| **Feature**    | **Dataflow**              | **Behavioral**              |
| -------------- | ------------------------- | --------------------------- |
| Main construct | `assign`                  | `always` + `case`           |
| Description    | Boolean equations         | Circuit behavior            |
| Complexity     | Simple                    | More flexible               |
| Best for       | Basic combinational logic | Complex combinational logic |

## Tools Used

* **Verilog HDL**
* **AMD Vivado**

## Learning Outcomes

Through this implementation, I practiced:

* Understanding DEMUX operation
* Select-line based data routing
* Boolean expressions
* Dataflow modeling in Verilog
* Behavioral modeling in Verilog
* `always @(*)` blocks
* `case` statements
* RTL simulation and verification

## Project Structure

```text
1x4-Demultiplexer/
│
├── demux_4x1.v
├── demux4x1_beh.v
└── README.md
```

## Key Concept

**DEMUX: One input → Multiple outputs**

For a DEMUX with `n` select lines:

```text
Number of outputs = 2ⁿ
```

For a 1×4 DEMUX:

```text
1 Data Input
2 Select Lines
4 Outputs
```

---

### Author

**Chetan Kundangar**

ECE Student | Aspiring RTL/VLSI Engineer | Software & AI Enthusiast

