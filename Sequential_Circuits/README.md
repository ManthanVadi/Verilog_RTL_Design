# Sequential Circuits

This directory contains **Verilog RTL implementations and functional verification of fundamental sequential digital circuits**.

Unlike combinational circuits, sequential circuits depend on both **current inputs and previously stored state**.

## Implementations

### 1. Latches

Implemented a basic **SR (Set-Reset) Latch**.

* Set operation
* Reset operation
* Hold / state retention
* Invalid input condition
* Level-sensitive storage

### 2. Flip-Flops

Implemented the fundamental types of clocked Flip-Flops:

* **SR Flip-Flop**
* **JK Flip-Flop**
* **D Flip-Flop**
* **T Flip-Flop**

Key concepts covered:

* Clock edge-based operation
* State retention
* Set and Reset
* Toggle operation
* Sequential state transitions

### 3. Registers / Shift Registers

Implemented different data transfer configurations:

* **Serial-In Serial-Out (SISO)**
* **Serial-In Parallel-Out (SIPO)**
* **Parallel-In Serial-Out (PISO)**
* **Parallel-In Parallel-Out (PIPO)**

Key concepts covered:

* Data storage
* Serial data transfer
* Parallel data transfer
* Shift operations
* Clocked data movement

### 4. Counters

Implemented different counter architectures:

* **Asynchronous Up/Down Counter**
* **Synchronous Up/Down Counter**
* **MOD-10 Counter**
* **Ring Counter**
* **Johnson Counter**

Key concepts covered:

* Synchronous and asynchronous counting
* Up/Down counting
* MOD-N counter design
* State sequencing
* Ring and Johnson counter operation

## Verification

Each sequential circuit includes a dedicated **Verilog testbench** for functional verification.

The testbenches verify:

* Clock behavior
* Reset operation
* State transitions
* Data storage and transfer
* Counting sequences
* Correct output behavior

## Key Concepts

* Sequential Logic
* State and Memory
* Clocked Logic
* Level-Sensitive Storage
* Edge-Triggered Storage
* Shift Registers
* Counters
* State Transitions
* RTL Design
* Functional Verification

## Directory Structure

```text
Sequential_Circuits/
│
├── Latches/
│   └── SR_Latch/
│
├── Flip_Flops/
│   ├── SR_Flip_Flop/
│   ├── JK_Flip_Flop/
│   ├── D_Flip_Flop/
│   └── T_Flip_Flop/
│
├── Registers/
│   ├── SISO/
│   ├── SIPO/
│   ├── PISO/
│   └── PIPO/
│
└── Counters/
    ├── Asynchronous_Up_Down/
    ├── Synchronous_Up_Down/
    ├── MOD_10/
    ├── Ring_Counter/
    └── Johnson_Counter/
```

## Tools

* Verilog HDL
* Synopsys
* VCS , Verdi
* RTL Design
* RTL Simulation
* Testbench-based Functional Verification

