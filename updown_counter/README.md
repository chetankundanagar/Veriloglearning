# 5-bit Up/Down Counter

## Overview

This project implements a **5-bit synchronous Up/Down Counter using Verilog HDL**. The design supports loading, incrementing, decrementing, and boundary status flags.

The design was implemented and simulated using **Xilinx Vivado**.

## Features

* 5-bit counter with a range of **0 to 31**
* Loads a value from the `IN` input when `LOAD` is high
* `LOAD` has the highest priority
* Increments by 1 when `UP` is high
* Decrements by 1 when `DOWN` is high
* `DOWN` has higher priority than `UP`
* Stops incrementing at **31**
* Stops decrementing at **0**
* `HIGH` flag is active when the counter is **31**
* `LOW` flag is active when the counter is **0**

## Signal Description

| Signal    | Description                   |
| --------- | ----------------------------- |
| `IN`      | 5-bit value to load           |
| `LOAD`    | Loads `IN` into the counter   |
| `UP`      | Increments the counter        |
| `DOWN`    | Decrements the counter        |
| `CLK`     | Positive-edge-triggered clock |
| `COUNTER` | Current 5-bit count value     |
| `HIGH`    | Active when count is 31       |
| `LOW`     | Active when count is 0        |

## Priority

The control priority is:

**LOAD → DOWN → UP → HOLD**

When both `UP` and `DOWN` are high, the counter performs the **DOWN operation**.

## Counter Operation

* **Load:** Loads the value from `IN`.
* **Up:** Increases the count by 1 until 31.
* **Down:** Decreases the count by 1 until 0.
* **Hold:** Maintains the current count when no operation is active.

## Simulation

The design was **simulated and verified using Xilinx Vivado**.

The simulation checks loading, up counting, down counting, priority conditions, boundary conditions, and `HIGH`/`LOW` flags.

## Concepts Practiced

* Verilog HDL
* RTL Design
* Sequential Logic
* Up/Down Counter
* Priority Logic
* Status Flags
* Boundary Conditions
* Vivado Simulation

## Tool Used

**Xilinx Vivado**

## Conclusion

This project demonstrates the design and simulation of a **5-bit synchronous Up/Down Counter** with prioritized control signals and boundary detection using Verilog HDL.

