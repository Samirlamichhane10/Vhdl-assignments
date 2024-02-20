# GCD Calculator and Testbench

This repository contains VHDL files for a GCD (Greatest Common Divisor) calculator and its testbench, along with a Makefile for compilation and simulation.

## Files

- **GCD.vhdl**: This file contains the VHDL code for the GCD calculator. It implements the calculation of the greatest common divisor of two input unsigned integers using an FSM-based architecture.

- **GCD_Testbench.vhdl**: This file contains the VHDL testbench code for the GCD calculator. It provides stimuli to the GCD calculator entity and verifies the correctness of its output.

- **Makefile**: The Makefile contains compilation and simulation instructions using the GHDL (G Hardware Description Language) tool. It compiles both the GCD calculator and its testbench, executes the simulation, and generates a VCD (Value Change Dump) file for waveform analysis.

## Usage

1. **Compilation and Simulation**: Run `make ` command in the terminal to compile both `GCD.vhdl` and `GCD_Testbench.vhdl` files, and then execute the simulation. This will generate a `result.vcd` file containing waveform data.

2. **Viewing Waveform**: You can use waveform viewers like GTKWave to visualize the simulation results stored in the `result.vcd` file. Analyze the waveforms to verify the behavior of the GCD calculator and ensure correctness.

3. **Cleaning**: You can clean up generated files using the `make clean` command, which removes the `result.vcd` file.

## Test Scenario

The provided testbench stimulates the GCD calculator with two input numbers: 41 and 43 (represented in binary). These numbers are chosen such that their GCD is 1. The testbench verifies that the GCD calculator produces the correct result within the specified simulation duration.



## Screenshots

![App Screenshot](https://via.placeholder.com/468x300?text=App+Screenshot+Here)

