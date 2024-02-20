# Decoder VHDL Implementation and Testbench

This repository contains VHDL files for a decoder and its corresponding testbench, along with a Makefile for compilation and simulation.

## Files

- **decoder.vhdl**: This file contains the VHDL code for the decoder. It implements a 2-to-4 decoder functionality, mapping input binary combinations to specific output values.

- **decoder_tb.vhdl**: This file contains the VHDL testbench code for the decoder. It provides stimuli to the decoder entity and verifies its functionality by comparing the output against expected values.

- **Makefile**: The Makefile contains compilation and simulation instructions using the GHDL tool. It compiles both the decoder and its testbench, executes the simulation, and generates a VCD (Value Change Dump) file for waveform analysis.

## Usage

1. **Compilation and Simulation**: Run `make` command in the terminal to compile both `decoder.vhdl` and `decoder_tb.vhdl` files, and then execute the simulation. This will generate a `result.vcd` file containing waveform data.

2. **Viewing Waveform**: Use waveform viewers like GTKWave to visualize the simulation results stored in the `result.vcd` file. Analyze the waveforms to verify the behavior of the decoder and ensure correctness.

3. **Cleaning**: You can clean up generated files using the `make clean` command, which removes the `result.vcd` file.

## Test Scenario

The provided testbench stimulates the decoder with various input combinations (`I`) and verifies the output (`Y`) against expected values. The testbench ensures the correct functioning of the decoder under different input conditions.

## Description of Decoder Functionality

The decoder translates binary input combinations into specific output patterns. It has the following functionality:

- For input "00", the output `Y` is "0001".
- For input "01", the output `Y` is "0010".
- For input "10", the output `Y` is "0100".
- For any other input combination, the output `Y` is "1000".

## Circuit Diagram 
![decoder-circuit-diagram](https://github.com/Samirlamichhane10/Vhdl-assignments/blob/main/decoder/decoder1.JPG.jpg)

## Waveform
![decoder-waveform](https://github.com/Samirlamichhane10/Vhdl-assignments/blob/main/decoder/decoder.png)

