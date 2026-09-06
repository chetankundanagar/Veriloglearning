4-Bit Counters

This folder contains Verilog RTL implementations of 4-bit synchronous counters.

Projects

1. 4-Bit Up Counter
   
Synchronous 4-bit up counter that:

Loads a 4-bit value using the latch signal
Increments the counter when inc is high
Holds its value when inc is low
Provides a zero flag when the counter value is 0000


2. 4-Bit Down Counter

Synchronous 4-bit down counter that:

Loads a 4-bit value using the latch signal
Decrements the counter when dec is high
Stops decrementing when the counter reaches 0000
Provides a zero flag when the counter value is 0000


Design Concepts

Sequential logic
Positive-edge triggered clock
Load control
Increment and decrement operations
Zero detection
RTL design using Verilog


Tools Used

Verilog HDL
Xilinx Vivado


Learning Outcome

These designs demonstrate the implementation of basic synchronous sequential circuits and provide a foundation for more advanced RTL and VLSI designs.
