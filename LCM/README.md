# LCM Calculator and Testbench

This repository contains VHDL files for an LCM (Least Common Multiple) calculator and its corresponding testbench, along with a Makefile for compilation and simulation.

## Files

- **lcm.vhdl**: This file contains the VHDL code for the LCM calculator. It computes the least common multiple of two input integers using a finite-state machine (FSM) architecture.

- **LCM_TB.vhdl**: This file contains the VHDL testbench code for the LCM calculator. It provides stimuli to the LCM calculator entity and verifies its functionality.

- **Makefile**: The Makefile contains compilation and simulation instructions using the GHDL (G Hardware Description Language) tool. It compiles both the LCM calculator and its testbench, executes the simulation, and generates a VCD (Value Change Dump) file for waveform analysis.

## Usage

1. **Compilation and Simulation**: Run `make ` command in the terminal to compile both `lcm.vhdl` and `LCM_TB.vhdl` files, and then execute the simulation. This will generate a `result.vcd` file containing waveform data.

2. **Viewing Waveform**: Use waveform viewers like GTKWave to visualize the simulation results stored in the `result.vcd` file. Analyze the waveforms to verify the behavior of the LCM calculator and ensure correctness.

3. **Cleaning**: You can clean up generated files using the `make clean` command, which removes the `result.vcd` file.

## Test Scenario

The provided testbench stimulates the LCM calculator with various input combinations (`a` and `b`) and verifies the calculated least common multiple (`lcm_result`) against expected values. The testbench ensures the correct functioning of the calculator under different input conditions.

## Finite State Machine (FSM) Description of LCM 

The FSM has the following states:

- start: Initializes the FSM.
- input: Accepts input values a and b.
- check: Checks the values of a and b to determine the next state.
- check1: Continues to check conditions on a and b.
- updatex: Updates the values of x and y.
- updatey: Updates the values of x and y.
- output: Outputs the calculated LCM.
- others: Default state, returns to the start state.

## Screenshots

![App Screenshot](https://via.placeholder.com/468x300?text=App+Screenshot+Here)

