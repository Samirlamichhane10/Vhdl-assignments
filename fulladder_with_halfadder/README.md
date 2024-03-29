# Full Adder Implementation Using Half Adders

This repository contains VHDL files for a Full Adder entity implemented using Half Adders.

## Files

- **ha.vhdl**: Contains the VHDL code for the Half Adder entity (`HA`). It computes the sum and carry-out based on the inputs `A` and `B`.

- **fa.vhdl**: Contains the VHDL code for the Full Adder entity (`FA`). It combines two Half Adders to compute the sum and carry-out based on the inputs `A`, `B`, and a carry-in `Cin`.

- **ha_tb.vhdl**: Testbench for the Half Adder entity.

- **fa_tb.vhdl**: Testbench for the Full Adder entity.

## Usage

1. **Compilation**: Use a VHDL compiler (e.g., GHDL) to compile the VHDL files. For example:
ghdl -a ha.vhdl
ghdl -a fa.vhdl
ghdl -a ha_tb.vhdl
ghdl -a fa_tb.vhdl

2. **Elaboration**: Once compiled, elaborate the entities:
ghdl -e HA
ghdl -e FA
ghdl -e HA_TB
ghdl -e FA_TB

3. **Simulation**: Run the simulation using the testbenches:
ghdl -r HA_TB
ghdl -r FA_TB

4. **View Results**: Analyze the simulation results to verify the functionality of the HA and FA components.

## Entities

### Half Adder (`HA`)

- **Inputs**: `A`, `B`
- **Outputs**: `Sum`, `CarryOut`
- **Functionality**: Computes the sum and carry-out of the input bits `A` and `B`.

### Full Adder (`FA`)

- **Inputs**: `A`, `B`, `Cin`
- **Outputs**: `Sum`, `CarryOut`
- **Functionality**: Combines two Half Adders to compute the sum and carry-out of the input bits `A`, `B`, and a carry-in `Cin`.

## Testbenches

- **ha_tb.vhdl**: Testbench for the Half Adder (`HA`) entity. Provides stimuli to the HA entity and verifies its functionality.

- **fa_tb.vhdl**: Testbench for the Full Adder (`FA`) entity. Provides stimuli to the FA entity and verifies its functionality.

## Design Description

The HA entity computes the sum (`Sum`) and carry-out (`CarryOut`) based on the inputs `A` and `B`. 

The FA entity utilizes two instances of the HA entity to compute the sum (`Sum`) and carry-out (`CarryOut`) based on the inputs `A`, `B`, and a carry-in `Cin`.

## Implementation Diagram
![Diagram](https://github.com/Samirlamichhane10/Vhdl-assignments/blob/main/fulladder_with_halfadder/full-adder-using-half-adder.jpg)
## Output Waveform
![Output Waveform](https://github.com/Samirlamichhane10/Vhdl-assignments/blob/main/fulladder_with_halfadder/fulladder%20using%20half%20new.png)
