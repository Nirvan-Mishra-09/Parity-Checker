# Parity Check Module

This repository contains a Verilog module for a parity check system. The `parity_check` module determines whether the number of '1's in a stream of bits is even or odd and outputs a corresponding signal.

## Module Overview

### `parity_check`
The `parity_check` module is a simple state machine that toggles between an `Even` and `Odd` state based on the incoming bit stream. It uses a clock signal to synchronize state transitions.

### Inputs
- `x`: Input bit stream.
- `clk`: Clock signal.

### Outputs
- `z`: Parity check output. It is `0` for even parity and `1` for odd parity.

### Parameters
- `Even`: State representing even parity (0).
- `Odd`: State representing odd parity (1).

### Schematic (Generated by Vivado)
![image](https://github.com/Nirvan-Mishra-09/Parity-Checker/assets/127642231/4633165d-644b-48ec-884e-800d28de51fb)
