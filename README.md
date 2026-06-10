# Sequence-Detector-Verilog
Sequence Detector using Moore and Mealy FSMs in Verilog HDL with overlapping and non-overlapping detection schemes.
# Sequence Detector using Verilog HDL

## Overview
Designed and implemented a Sequence Detector capable of identifying the binary pattern **1010** using Finite State Machine (FSM) architectures. The project includes both **Moore** and **Mealy** machine implementations with **Overlapping** and **Non-Overlapping** detection schemes.

## Features
- Moore FSM Implementation
- Mealy FSM Implementation
- Overlapping Sequence Detection
- Non-Overlapping Sequence Detection
- Verilog HDL RTL Design
- Functional Verification using Testbenches
- Waveform Analysis using Xilinx Vivado

## Sequence to be Detected
```
1010
```

## FSM Architectures

### Moore FSM
- Output depends only on the current state.
- More stable output.
- Requires more states.
- Output is generated after entering the detection state.

### Mealy FSM
- Output depends on the current state and input.
- Faster detection.
- Requires fewer states.
- Output is generated immediately when the sequence is detected.

## Detection Schemes

### Overlapping Detection
Allows the next detection sequence to reuse bits from the previous sequence.

Example:

Input:
```
101010
```

Detected Sequences:
```
1010
  1010
```

### Non-Overlapping Detection
After detecting a sequence, the FSM resets and starts searching for a new sequence.

## Tools Used
- Verilog HDL
- Xilinx Vivado

## Project Structure

```text
src/          -> Verilog RTL Source Files
testbench/    -> Testbench Files
screenshots/  -> Simulation Waveforms
```

## Simulation Results

### Moore FSM – Overlapping

![Moore Overlapping](screenshots/Moore%20overlapping.png)

### Moore FSM – Non-Overlapping

![Moore Non Overlapping](screenshots/Moore%20non%20overlapping.png)

### Mealy FSM – Overlapping

![Mealy Overlapping](screenshots/Mealy%20overlapping.png)

### Mealy FSM – Non-Overlapping

![Mealy Non Overlapping](screenshots/Mealy%20non%20overlapping.png)

## Applications
- Communication Protocols
- Pattern Recognition Systems
- Packet Detection
- Digital Control Systems
- Processor Instruction Decoding
- Serial Data Receivers

## Key Learnings
- Finite State Machine Design
- Moore vs Mealy Architecture Comparison
- Overlapping and Non-Overlapping Detection Techniques
- RTL Design using Verilog HDL
- Functional Verification using Testbenches
- Waveform Analysis and Debugging
- FPGA-Oriented Digital Design Methodology

## Future Improvements
- Parameterized Sequence Length
- Support for Multiple Sequence Detection
- FPGA Hardware Implementation
- SystemVerilog Verification Environment
- Automated Testbench Generation
