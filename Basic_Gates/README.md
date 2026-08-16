# Basic Logic Gates

## Overview

This folder contains the **Verilog RTL implementations and testbenches of basic digital logic gates**.

These gates are the fundamental building blocks of digital systems and are used extensively in combinational logic design.

## Gates Implemented

* AND Gate
* OR Gate
* NOT Gate
* NAND Gate
* NOR Gate
* XOR Gate
* XNOR Gate

## Design & Verification

Each gate contains two Verilog files:

* **RTL Design (`.v`)** — Synthesizable Verilog implementation of the logic gate.
* **Testbench (`.tb`)** — Testbench used to verify the functionality of the design.

For every two-input gate, all possible input combinations are tested.
For the NOT gate, both possible input combinations are tested.

## Truth Tables

### AND Gate

**Boolean Expression:** `Y = A · B`

| A | B | Y |
| - | - | - |
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |


### OR Gate

**Boolean Expression:** `Y = A + B`

| A | B | Y |
| - | - | - |
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 1 |


### NOT Gate

**Boolean Expression:** `Y = ~A`

| A | Y |
| - | - |
| 0 | 1 |
| 1 | 0 |


### NAND Gate

**Boolean Expression:** `Y = ~(A · B)`

| A | B | Y |
| - | - | - |
| 0 | 0 | 1 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |


### NOR Gate

**Boolean Expression:** `Y = ~(A + B)`

| A | B | Y |
| - | - | - |
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 0 |


### XOR Gate

**Boolean Expression:** `Y = A ⊕ B`

| A | B | Y |
| - | - | - |
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |


### XNOR Gate

**Boolean Expression:** `Y = ~(A ⊕ B)`

| A | B | Y |
| - | - | - |
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |


## Directory Structure

```text
Basic_Gates/
│
├── AND_Gate/
│   ├── and_gate.v
│   └── and_gate_tb.v
│
├── OR_Gate/
│   ├── or_gate.v
│   └── or_gate_tb.v
│
├── NOT_Gate/
│   ├── not_gate.v
│   └── not_gate_tb.v
│
├── NAND_Gate/
│   ├── nand_gate.v
│   └── nand_gate_tb.v
│
├── NOR_Gate/
│   ├── nor_gate.v
│   └── nor_gate_tb.v
│
├── XOR_Gate/
│   ├── xor_gate.v
│   └── xor_gate_tb.v
│
└── XNOR_Gate/
    ├── xnor_gate.v
    └── xnor_gate_tb.v
```

## Tools Used

* Verilog HDL
* RTL Design
* Functional Simulation
* Testbench-based Verification
* Synopsys
* VCS , Verdi

  
