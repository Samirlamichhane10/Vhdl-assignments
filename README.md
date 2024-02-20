# VHDL Projects Repository

Welcome to the VHDL Projects Repository! This repository contains a collection of VHDL (VHSIC Hardware Description Language) projects. VHDL is commonly used in digital design and electronic design automation to describe digital and mixed-signal systems.

## Table of Contents

- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
- [Project Structure](#project-structure)
- [Usage](#usage)

## Getting Started

These instructions will help you get a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

Before you begin, ensure you have the following installed: Prerequisites for Running GHDL and GTKWave on Ubuntu

1. **GHDL**: GHDL is the VHDL compiler and simulator. Install GHDL using the package manager `apt`:

    ```bash
    sudo apt install ghdl
    ```

2. **GTKWave**: GTKWave is a waveform viewer that you can use to view the simulation results. Install it via `apt`:

    ```bash
    sudo apt install gtkwave
    ```

3. **Make**: Make is a build automation tool. It's usually pre-installed on Ubuntu, but if it's not, you can install it with:

    ```bash
    sudo apt install make
    ```



## Project Structure

- code.vhdl
- code_tb.vhdl
- result.vcd
- Makefile
- README.md

## Usage
- `code.vhdl`: Main VHDL source file for the project.
- `code_tb.vhdl`: VHDL testbench file for testing the main code.
- `result.vcd`: VCD (Value Change Dump) file generated during simulation, containing waveform data.
- `Makefile`: Makefile for building and managing the project.
- `README.md`: Markdown file containing project documentation.


