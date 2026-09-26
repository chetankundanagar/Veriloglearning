# 5-bit Up/Down Counter

## Overview

This project implements a **5-bit synchronous Up/Down Counter using Verilog HDL**. The design supports loading, incrementing, decrementing, and boundary status flags.

The design was implemented and simulated using **Xilinx Vivado**.

## Features

* 5-bit counter with a range of **0 to 31**
* Loads a value from the `in` input when `load` is high
* `load` has the highest priority
* Increments by 1 when `up` is high
* Decrements by 1 when `down` is high
* `down` has higher priority than `up`
* Stops incrementing at **31**
* Stops decrementing at **0**
* `high` flag is active when the counter is **31**
* `low` flag is active when the counter is **0**

## Signal Description

| Signal    | Description                   |
| --------- | ----------------------------- |
| `in`      | 5-bit value to load           |
| `load`    | Loads `in` into the counter   |
| `up`      | Increments the counter        |
| `down`    | Decrements the counter        |
| `clk`     | Positive-edge-triggered clock |
| `counter` | Current 5-bit count value     |
| `high`    | Active when count is 31       |
| `low`     | Active when count is 0        |

## Priority

The control priority is:

**load → down → up → hold**

When both `up` and `down` are high, the counter performs the **down operation**.

## Counter Operation

* **Load:** Loads the value from `in`.
* **Up:** Increases the count by 1 until 31.
* **Down:** Decreases the count by 1 until 0.
* **Hold:** Maintains the current count when no operation is active.

## Simulation

The design was **simulated and verified using Xilinx Vivado**.

The simulation checks loading, up counting, down counting, priority conditions, boundary conditions, and `high`/`low` flags.

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

