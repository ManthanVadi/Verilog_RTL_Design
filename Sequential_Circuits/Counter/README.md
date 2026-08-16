# Counters

Verilog RTL implementations and functional verification of different **counter architectures** using synchronous and asynchronous counting techniques.

## Implementations

### 1. Asynchronous Up/Down Counter

Implemented an asynchronous (ripple) counter capable of counting in both **up and down directions**.

### 2. Synchronous Up/Down Counter

Implemented a synchronous counter where all flip-flops operate with a **common clock**, supporting both up and down counting.

### 3. MOD-10 Counter

Implemented a **MOD-10 (Decade) Counter** that cycles through 10 states, from `0` to `9`, before returning to the initial state.

### 4. Ring Counter

Implemented a **Ring Counter** using a circulating bit pattern, where the output sequence continuously shifts through the available states.

### 5. Johnson Counter

Implemented a **Johnson (Twisted Ring) Counter**, where the complemented output of the last stage is fed back to the first stage.

## Key Concepts

* Synchronous Counters
* Asynchronous / Ripple Counters
* Up/Down Counting
* MOD-N Counter Design
* Ring Counter
* Johnson Counter
* Clocked Sequential Logic
* State Sequencing
* RTL Design
* Functional Verification

## Verification

Each counter implementation includes a dedicated **Verilog testbench** to verify:

* Correct counting sequence
* Up and down counting operation
* State transitions
* Reset behavior
* Proper cyclic operation

## Tools

* Verilog HDL
* Synopsys
* VCS , Verdi
* RTL Simulation
* Testbench-based Verification

