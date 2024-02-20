# Full Adder VHDL Implementation and Testbench

This repository contains VHDL files for a full adder and its corresponding testbench, along with a Makefile for compilation and simulation.

## Files

- **full_adder.vhdl**: Contains the VHDL code for the full adder. It performs binary addition of three input bits (A, B, and Cin) and generates a sum (S) and a carry-out (Cout).

- **full_adder_tb.vhdl**: Contains the VHDL testbench code for the full adder. It verifies the functionality of the adder by stimulating it with various input combinations and checking the output sum and carry-out.

- **Makefile**: Contains compilation and simulation instructions using the GHDL tool. It compiles both the full adder and its testbench, executes the simulation, and generates a VCD (Value Change Dump) file for waveform analysis.

## Usage

1. **Compilation and Simulation**: Run `make` command in the terminal to compile both `full_adder.vhdl` and `full_adder_tb.vhdl` files, and then execute the simulation. This will generate a `result.vcd` file containing waveform data.

2. **Viewing Waveform**: Use waveform viewers like GTKWave to visualize the simulation results stored in the `result.vcd` file. Analyze the waveforms to verify the behavior of the full adder and ensure correctness.

3. **Cleaning**: You can clean up generated files using the `make clean` command, which removes the `result.vcd` file.

## Test Scenario

The provided testbench stimulates the full adder with various input combinations (A, B, Cin) and verifies the output sum (S) and carry-out (Cout) against expected values. The testbench ensures the correct functioning of the adder under different input conditions.

## Description of Full Adder Functionality

1.Sum (S): The sum is computed as the XOR of the inputs A, B, and C-IN.

2.Carry-Out (COUT): The carry-out is computed as the OR of the ANDs of the inputs A and B, and A and C-IN, and B and C-IN.

The full adder performs binary addition of three input bits (A, B, and Cin). It produces a sum (S) and a carry-out (Cout) based on the input bits. The truth table for the full adder is as follows:

| A | B | Cin | S | Cout |
|---|---|-----|---|------|
| 0 | 0 | 0   | 0 | 0    |
| 0 | 0 | 1   | 1 | 0    |
| 0 | 1 | 0   | 1 | 0    |
| 0 | 1 | 1   | 0 | 1    |
| 1 | 0 | 0   | 1 | 0    |
| 1 | 0 | 1   | 0 | 1    |
| 1 | 1 | 0   | 0 | 1    |
| 1 | 1 | 1   | 1 | 1    |




