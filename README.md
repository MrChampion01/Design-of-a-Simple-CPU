# Design of a Simple CPU

## Introduction
This project is about designing a simple CPU with VHDL for the Introduction to Digital Logic Laboratory course. The CPU has three OPcodes and 32 bytes of memory, and it was implemented on the Intel DE-10 Lite board.

## Process
The CPU fetches instructions from memory and decodes them using the control unit for three OPcodes:
- **LOADA**: Loads a value from a specified address into the accumulator.
- **ADDA**: Adds a value from a specified address to the value in the accumulator.
- **STOREA**: Stores the value of the accumulator into memory at a specified address.

## Block Diagram
![CPU](https://github.com/user-attachments/assets/ee6ab90b-56bb-444d-a3a2-4798f70e38d1)

## Testing
Results can be viewed by simulating the waveforms or loading the CPU code onto the Intel DE-10 Lite FPGA device. The following commands were used in the demonstration:
1. LOADA at address 5 (value 6)
2. ADDA at address 3 (value 7)
3. STOREA at address 7
4. LOADA at address 7 (value 13)

![287877143-b14022df-a411-41a5-b647-c4c0773a26d2](https://github.com/user-attachments/assets/a406a18a-393f-4882-97fc-6962a7d5c46b)
