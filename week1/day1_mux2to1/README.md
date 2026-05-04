# Day 1: 2-to-1 Multiplexer

## Description
First Verilog module - a basic 2-to-1 multiplexer.
- sel=0 → y=a
- sel=1 → y=b

## Files
- `design.sv`: MUX implementation using ternary operator
- `testbench.sv`: Test all 4 combinations of (sel, a, b)

## Result
All 4 test cases passed. Output matches expected values.

## EDA Playground Link
https://www.edaplayground.com/x/ZC68

## What I Learned
- Module structure: `module ... endmodule`
- Continuous assignment with `assign`
- Ternary operator `?:` for combinational selection
- Difference between `wire` and `reg` in testbench
- How to instantiate a DUT and apply stimulus
