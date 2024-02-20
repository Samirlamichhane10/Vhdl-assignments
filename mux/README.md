# Multiplexer and Testbench

This repository contains VHDL files for a 4-to-1 multiplexer (MUX) and its corresponding testbench, along with a Makefile for compilation and simulation.

## Files

- **mux4.vhdl**: This file contains the VHDL code for a 4-to-1 multiplexer (MUX). It selects one of the four input signals based on the control inputs `s1` and `s0`.

- **mux_tb.vhdl**: This file contains the VHDL testbench code for the multiplexer. It provides stimuli to the MUX entity and verifies its functionality.

- **Makefile**: The Makefile contains compilation and simulation instructions using the GHDL (G Hardware Description Language) tool. It compiles both the MUX and its testbench, executes the simulation, and generates a VCD (Value Change Dump) file for waveform analysis.

## Usage

1. **Compilation and Simulation**: Run `make` command in the terminal to compile both `mux4.vhdl` and `mux_tb.vhdl` files, and then execute the simulation. This will generate a `result.vcd` file containing waveform data.

2. **Viewing Waveform**: Use waveform viewers like GTKWave to visualize the simulation results stored in the `result.vcd` file. Analyze the waveforms to verify the behavior of the multiplexer and ensure correctness.

3. **Cleaning**: You can clean up generated files using the `make clean` command, which removes the `result.vcd` file.

## Test Scenarios

The provided testbench stimulates the multiplexer with different input combinations (`a`, `b`, `c`, `d`) and control signals (`s1` and `s0`). It verifies the output of the multiplexer (`y`) against expected values for each test case.

## Working of Multiplexer (4 X 1)

A 4-to-1 multiplexer (MUX) is a combinational circuit that selects one of four inputs and forwards the selected input into a single line. The selection of a specific input is controlled by two selection lines (S0 and S1). Here's how it works:

1. When S0 and S1 are both 0, the first input (a) is selected.
2. When S0 is 0 and S1 is 1, the second input (b) is selected.
3. When S0 is 1 and S1 is 0, the third input (c) is selected.
4. When S0 and S1 are both 1, the fourth input (d) is selected.



## Diagram

![Multiplexer diagram](https://github.com/Samirlamichhane10/Vhdl-assignments/blob/main/mux/mux1.png)
## Output Waveform

![Multiplexer waveform](## Diagram

![Multiplexer diagram](https://github.com/Samirlamichhane10/Vhdl-assignments/blob/main/mux/mux1.png):


