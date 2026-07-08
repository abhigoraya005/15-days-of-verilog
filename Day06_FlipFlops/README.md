# Day 6 – Flip-Flops (Sequential Logic)

## 🎯 Objective

Design and simulate the four fundamental flip-flops used in digital systems:

* D Flip-Flop
* SR Flip-Flop
* JK Flip-Flop
* T Flip-Flop

This project introduces **Sequential Logic**, where outputs depend on both the current inputs and the previous state of the circuit.

---

# 📖 Introduction

Unlike combinational circuits, **flip-flops can store one bit of data**. They are the basic memory elements used in:

* Registers
* Counters
* Shift Registers
* Finite State Machines (FSM)
* CPUs
* FPGA Designs
* ASIC Designs

All flip-flops in this project are **positive-edge triggered**, meaning they update only on the **rising edge** of the clock.

---

# 📂 Project Structure

```text
Day06_FlipFlops/
│
├── d_flipflop.v
├── sr_flipflop.v
├── jk_flipflop.v
├── t_flipflop.v
├── flipflop_tb.v
└── README.md
```

---

# 📚 Flip-Flops Implemented

## 1️⃣ D Flip-Flop

Stores the input value (D) on every rising edge of the clock.

### Truth Table

| Clock ↑ | D | Q(next) |
| ------- | - | ------- |
| ↑       | 0 | 0       |
| ↑       | 1 | 1       |

---

## 2️⃣ SR Flip-Flop

The SR (Set-Reset) Flip-Flop sets or resets the output depending on the inputs.

### Truth Table

| S | R | Q(next)   |
| - | - | --------- |
| 0 | 0 | No Change |
| 0 | 1 | 0 (Reset) |
| 1 | 0 | 1 (Set)   |
| 1 | 1 | Invalid   |

---

## 3️⃣ JK Flip-Flop

The JK Flip-Flop removes the invalid state of the SR Flip-Flop.

### Truth Table

| J | K | Q(next)   |
| - | - | --------- |
| 0 | 0 | No Change |
| 0 | 1 | 0         |
| 1 | 0 | 1         |
| 1 | 1 | Toggle    |

---

## 4️⃣ T Flip-Flop

The T (Toggle) Flip-Flop changes its output only when T = 1.

### Truth Table

| T | Q(next)   |
| - | --------- |
| 0 | No Change |
| 1 | Toggle    |

---

# 🧪 Simulation

The testbench verifies the functionality of:

* D Flip-Flop
* SR Flip-Flop
* JK Flip-Flop
* T Flip-Flop

using multiple clock cycles and different input combinations.

---

# ▶️ Compile

```bash
C:\iverilog\bin\iverilog.exe -o sim d_flipflop.v sr_flipflop.v jk_flipflop.v t_flipflop.v flipflop_tb.v
```

---

# ▶️ Run

```bash
C:\iverilog\bin\vvp.exe sim
```

---

# 📋 Sample Output

```text
Sequential Logic Simulation

Time=0
Time=5
Time=10
Time=15
...

D Flip-Flop Updated
SR Flip-Flop Updated
JK Flip-Flop Updated
T Flip-Flop Updated
```

*(Your exact timestamps and values may differ depending on the simulation.)*

---

# 📖 Concepts Learned

* Sequential Logic
* Clock Signal
* Rising Edge Triggering (`posedge`)
* State Storage
* Non-blocking Assignment (`<=`)
* Flip-Flop Design
* Testbench Development
* Functional Simulation

---

# 🚀 Applications

Flip-Flops are widely used in:

* CPU Registers
* Memory Elements
* Shift Registers
* Digital Counters
* FSM Controllers
* Communication Systems
* FPGA Development
* ASIC Design

---

# 🎯 Learning Outcomes

After completing this project, I learned how to:

* Design clocked sequential circuits
* Implement D, SR, JK, and T Flip-Flops
* Use `always @(posedge clk)`
* Understand state retention in digital systems
* Simulate sequential circuits using Icarus Verilog
* Write reusable Verilog modules and testbenches

---

## 📅 Progress

| Day     | Topic             |   Status  |
| ------- | ----------------- | :-------: |
| ✅ Day 1 | Logic Gates       | Completed |
| ✅ Day 2 | Adders            | Completed |
| ✅ Day 3 | Multiplexers      | Completed |
| ✅ Day 4 | Decoder & Encoder | Completed |
| ✅ Day 5 | 4-bit ALU         | Completed |
| ✅ Day 6 | Flip-Flops        | Completed |

---

⭐ **Next Project:** Day 7 – 4-bit Counters (Up Counter, Down Counter & Mod-N Counter)
