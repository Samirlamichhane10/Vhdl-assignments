# Sequence Detector VHDL Implementation and Testbench

This repository contains VHDL files for a sequence detector and its corresponding testbench, along with a Makefile for compilation and simulation.

## Files

- **sequence_detector.vhdl**: Contains the VHDL code for the sequence detector. It detects a specific sequence of bits in a stream of input data.

- **sequence_detector_tb.vhdl**: Contains the VHDL testbench code for the sequence detector. It verifies the functionality of the detector by stimulating it with various input sequences and checking the output.

- **Makefile**: Contains compilation and simulation instructions using the GHDL tool. It compiles both the sequence detector and its testbench, executes the simulation, and generates a VCD (Value Change Dump) file for waveform analysis.

## Usage

1. **Compilation and Simulation**: Run `make` command in the terminal to compile both `sequence_detector.vhdl` and `sequence_detector_tb.vhdl` files, and then execute the simulation. This will generate a `result.vcd` file containing waveform data.

2. **Viewing Waveform**: Use waveform viewers like GTKWave to visualize the simulation results stored in the `result.vcd` file. Analyze the waveforms to verify the behavior of the sequence detector and ensure correctness.

3. **Cleaning**: You can clean up generated files using the `make clean` command, which removes the `result.vcd` file.

## Test Scenario

The provided testbench stimulates the sequence detector with various input sequences and verifies the output against expected values. The testbench ensures the correct functioning of the detector under different input conditions.

## Description of Sequence Detector Functionality

The sequence detector is designed to detect a specific sequence of bits in a stream of input data. It operates based on a finite-state machine (FSM) architecture, transitioning between states based on the input data received.



