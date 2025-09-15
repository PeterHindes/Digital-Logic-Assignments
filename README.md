# Digital Logic Assignments

This repository contains lab assignments for ECEN 2350: Digital Logic. The labs progress from basic Verilog programming and testing to advanced FPGA implementation using the Boolean Board.

## Lab Descriptions

### Lab 5: Verilog Priority Encoder Debugging
**Focus**: Testbench design and debugging
- Debug a buggy 8-bit priority encoder implementation
- Write comprehensive testbenches to identify incorrect outputs
- Test all 256 possible input combinations systematically
- Learn systematic debugging techniques for digital circuits

### Lab 6: 7-Segment Display Control
**Focus**: Boolean Board interfacing and hex encoding
- Implement hex encoder for 7-segment displays on the Boolean Board
- Design Verilog modules to convert 4-bit binary to 7-segment patterns
- Work with active-low display segments
- Interface with real hardware constraints and specifications

### Lab 7: Two's Complement Arithmetic
**Focus**: Binary number systems and arithmetic
- Practice two's complement representation and conversion
- Perform binary addition and subtraction operations
- Understand signed vs unsigned binary number interpretation
- Work with overflow and underflow conditions

### Lab 9: D Flip-Flop Implementation
**Focus**: Sequential logic and gate-level design
- Implement positive edge-triggered D flip-flop using Verilog primitives
- Work with gate-level modeling and timing delays
- Understand sequential circuit behavior and timing analysis
- Write testbenches for sequential logic verification

### Lab 10: Clock Division and Timing
**Focus**: Clock management and frequency division
- Design clock dividers to convert 100 MHz to 1 Hz and 1 kHz
- Implement LED blinking circuits with precise timing
- Work with counters and frequency division techniques
- Display binary counts on hex displays

### Lab 11: Digital Timer Implementation
**Focus**: Advanced counting and display control
- Create millisecond-accurate timer (0.000 to 9.999 seconds)
- Implement 4-digit decimal counter with rollover
- Design start/stop/reset functionality with button controls
- Integrate multiple clock domains and display management

### Lab 12: Custom Hardware Project (Extra Credit)
**Focus**: Real-world hardware interfacing
- Open-ended project using Boolean Board external interfaces
- Options include: audio output, servo control, LED strips, VGA/HDMI, Bluetooth
- Demonstrate creative hardware-software integration
- Apply all course concepts in a practical application

## Repository Structure

- `instructions/` - PDF files containing detailed lab requirements and specifications
- `results/` - Completed Verilog implementations and project outputs
- Various `.v` files - Verilog source code and testbenches for each assignment

## Hardware Platform

These labs are designed for the Boolean Board FPGA development platform and use Xilinx Vivado for synthesis and implementation.

