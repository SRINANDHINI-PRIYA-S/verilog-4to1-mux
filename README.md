# verilog-4to1-mux
A Verilog HDL project implementing a 4:1 Multiplexer with testbench and simulation.
# 4:1 Multiplexer (MUX)

## Description
This project implements a **4:1 Multiplexer** in Verilog. It selects one of four inputs (I0-I3) based on two select lines (S0, S1) and outputs it as Y.

## Files
- `mux4to1.v` : RTL implementation  
- `tb_mux4to1.v` : Testbench for simulation  

## How to Run
1. Open `mux4to1.v` and `tb_mux4to1.v` in your simulator (EDA Playground, ModelSim, etc.)
2. Compile the files
3. Run the simulation and check the output

## Expected Output
The output Y matches the selected input based on S0 and S1 according to the truth table.
