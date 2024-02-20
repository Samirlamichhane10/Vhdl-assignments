# JK Flip Flop and Testbench

This repository contains VHDL files for a JK Flip Flop and its corresponding testbench, along with a Makefile for compilation and simulation.

## Files

- **jk.vhdl**: This file contains the VHDL code for a JK Flip Flop. It implements the functionality of a JK Flip Flop with asynchronous reset and synchronous behavior.

- **jk_tb.vhdl**: This file contains the VHDL testbench code for the JK Flip Flop. It provides stimuli to the flip-flop entity and verifies its functionality.

- **Makefile**: The Makefile contains compilation and simulation instructions using the GHDL (G Hardware Description Language) tool. It compiles both the JK Flip Flop and its testbench, executes the simulation, and generates a VCD (Value Change Dump) file for waveform analysis.

## Usage

1. **Compilation and Simulation**: Run `make` command in the terminal to compile both `jk.vhdl` and `jk_tb.vhdl` files, and then execute the simulation. This will generate a `result.vcd` file containing waveform data.

2. **Viewing Waveform**: Use waveform viewers like GTKWave to visualize the simulation results stored in the `result.vcd` file. Analyze the waveforms to verify the behavior of the JK Flip Flop and ensure correctness.

3. **Cleaning**: You can clean up generated files using the `make clean` command, which removes the `result.vcd` file.

## Test Scenario

The provided testbench stimulates the JK Flip Flop with various input combinations (`j` and `k`) and asserts the output (`q`) against expected behavior. The testbench verifies the correct functioning of the flip-flop under different input conditions.

## Working of JK Flipflop
 JK flip flop comprises four possible combinations of inputs: J=0, K=0; J=0, K=1; J=1, K=0; and J=1, K=1. These input combinations determine the behavior of flip flop and its output.

1. J=0, K=0: In this state, flip flop retains its preceding state. It neither sets nor resets itself, making it stable.
2. J=0, K=1: This input combination forces flip flop to reset, resulting in Q=0 and Q̅=1. It is often referred to as the “reset” state.
3. J=1, K=0: Here, flip flop resides in the set mode, causing Q=1 and Q̅=0. It is known as the “set” state.
4. J=1, K=1: This combination toggles flip flop. If the previous state is Q=0, it switches to Q=1 and vice versa. This makes it valuable for frequency division and data storage applications.
## FSM of JK flip flop 

![FSM JK](https://github.com/Samirlamichhane10/Vhdl-assignments/blob/main/JK/Fig1-JK-flipflop-State-Machine1.png)
![Transition](https://github.com/Samirlamichhane10/Vhdl-assignments/blob/main/JK/jkff.png)

## Waveform 

![Waveform](https://github.com/Samirlamichhane10/Vhdl-assignments/blob/main/JK/jk.png)
