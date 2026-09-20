# 1×2 Demultiplexer

## Overview

A **Demultiplexer (DEMUX)** is a combinational digital circuit that takes **one data input** and routes it to **one of multiple outputs** based on the select line.

This project implements a **1×2 Demultiplexer** using Verilog HDL in two different modeling styles:

* Dataflow Modeling
* Behavioral Modeling

## Circuit Specifications

| Parameter     | Value      |
| ------------- | ---------- |
| Data Inputs   | 1          |
| Select Inputs | 1          |
| Outputs       | 2          |
| Select Line   | `s`        |
| Data Input    | `d`        |
| Outputs       | `y0`, `y1` |

## Truth Table

| Select (`s`) | Data (`d`) | `y0` | `y1` |
| ------------ | ---------: | ---: | ---: |
| 0            |          0 |    0 |    0 |
| 0            |          1 |    1 |    0 |
| 1            |          0 |    0 |    0 |
| 1            |          1 |    0 |    1 |

### Working

* When `s = 0`, the input `d` is routed to `y0`.
* When `s = 1`, the input `d` is routed to `y1`.

## Boolean Expressions

```text
y0 = d · s'
y1 = d · s
```

## Verilog Implementations

### 1. Dataflow Modeling

The Dataflow implementation uses continuous `assign` statements to describe the Boolean equations.

```verilog
module demux_2x1(
    input d,
    input s,
    output y0,
    output y1
);

assign y0 = d & (~s);
assign y1 = d & s;

endmodule
```

### 2. Behavioral Modeling

The Behavioral implementation uses an `always` block and `case` statement to describe the behavior of the DEMUX.

```verilog
module demux2x1_beh(
    input d,
    input s,
    output reg y0,
    output reg y1
);

always @(*) begin

    case(s)
        1'b0: y0 = d;
        1'b1: y1 = d;
    endcase

end

endmodule
```

## Modeling Styles Compared

| Feature        | Dataflow                  | Behavioral                  |
| -------------- | ------------------------- | --------------------------- |
| Main construct | `assign`                  | `always` + `case`           |
| Description    | Boolean equations         | Circuit behavior            |
| Complexity     | Simple                    | More flexible               |
| Best for       | Basic combinational logic | Complex combinational logic |

## Tools Used

* **Verilog HDL**
* **AMD Vivado**
* **RTL Simulation**
* **Waveform Analysis**

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
1x2-Demultiplexer/
│
├── demux_1x2_dataflow.v
├── demux_1x2_behavioral.v
└── README.md
```

## Key Concept

**DEMUX: One input → Multiple outputs**

For a DEMUX with `n` select lines:

```text
Number of outputs = 2ⁿ
```

For a 1×2 DEMUX:

```text
1 Data Input
1 Select Line
2 Outputs
```

---

### Author

**Chetan Kundangar**

ECE Student | Aspiring RTL/VLSI Engineer | Software & AI Enthusiast

