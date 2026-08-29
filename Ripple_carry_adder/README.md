# 4-Bit Ripple Carry Adder

A 4-bit Ripple Carry Adder (RCA) designed and simulated using **Verilog
HDL** in **Xilinx Vivado**.

## 📌 Project Overview

A Ripple Carry Adder performs binary addition by connecting multiple
full adders in series. The carry output from each full adder is passed
to the next full adder.

This project uses **four 1-bit full adders** to implement a 4-bit binary
adder.

## 🧩 Architecture

``` text
        a[0]  b[0]              a[1]  b[1]              a[2]  b[2]              a[3]  b[3]
          │     │                  │     │                  │     │                  │     │
          ▼     ▼                  ▼     ▼                  ▼     ▼                  ▼     ▼
        ┌─────────┐  c1          ┌─────────┐  c2          ┌─────────┐  c3          ┌─────────┐
cin ───►│   FA0   │─────────────►│   FA1   │─────────────►│   FA2   │─────────────►│   FA3   │──► cout
        └────┬────┘               └────┬────┘               └────┬────┘               └────┬────┘
             │                         │                         │                         │
          sum[0]                    sum[1]                    sum[2]                    sum[3]
```

## 🔌 Inputs and Outputs

  Signal   Direction     Width Description
  -------- ----------- ------- -----------------------
  `a`      Input         4-bit First binary number
  `b`      Input         4-bit Second binary number
  `cin`    Input         1-bit Initial carry input
  `sum`    Output        4-bit 4-bit addition result
  `cout`   Output        1-bit Final carry output

## 📂 Project Files

-   `ripple_carry_adder.v` --- Top-level 4-bit Ripple Carry Adder
-   `full_adder.v` --- 1-bit Full Adder used as the building block
-   `ripple_carry_adder_tb.v` --- Verilog testbench for simulation

## 💻 Verilog Design

The top-level module connects four full adders:

``` verilog
module ripple_carry_adder(
    input  [3:0] a,
    input  [3:0] b,
    input        cin,
    output [3:0] sum,
    output       cout
);

    wire c1, c2, c3;

    full_adder FA0(
        .a(a[0]),
        .b(b[0]),
        .cin(cin),
        .sum(sum[0]),
        .cout(c1)
    );

    full_adder FA1(
        .a(a[1]),
        .b(b[1]),
        .cin(c1),
        .sum(sum[1]),
        .cout(c2)
    );

    full_adder FA2(
        .a(a[2]),
        .b(b[2]),
        .cin(c2),
        .sum(sum[2]),
        .cout(c3)
    );

    full_adder FA3(
        .a(a[3]),
        .b(b[3]),
        .cin(c3),
        .sum(sum[3]),
        .cout(cout)
    );

endmodule
```

## 🧪 Simulation Results

The design was simulated successfully in **Xilinx Vivado**.

Example test cases:

  A             B              Cin   Expected Sum   Expected Cout
  ------------- ------------ ----- -------------- ---------------
  `0011` (3)    `0101` (5)       0     `1000` (8)               0
  `1111` (15)   `0001` (1)       0     `0000` (0)               1
  `1010` (10)   `0101` (5)       1     `0000` (0)               1

All tested cases produced the expected results.

## 🛠️ Tools Used

-   **Verilog HDL**
-   **Xilinx Vivado**
-   **Vivado Simulator**

## 📚 Concepts Learned

-   Full Adder
-   Structural Verilog
-   Module instantiation
-   Carry propagation
-   Vector/bus signals
-   RTL design
-   Testbench creation
-   Functional simulation
-   Waveform analysis

## 🎯 Learning Outcome

This project demonstrates the basic RTL design methodology of building a
larger digital circuit by connecting smaller reusable modules. It is a
foundational project for learning **Digital Design, Verilog, FPGA, and
VLSI/ASIC RTL Design**.

------------------------------------------------------------------------

**Author:** Chetan Kundangar\
**Project:** 4-Bit Ripple Carry Adder\
**HDL:** Verilog
