# Day 7 – Counters (Sequential Logic)

## 🎯 Objective

Design and simulate different types of **4-bit synchronous counters** using Verilog HDL.

This project covers:

* 4-bit Up Counter
* 4-bit Down Counter
* Mod-10 (BCD) Counter

Counters are fundamental sequential circuits used to count clock pulses and are widely used in digital systems.

---

# 📖 Introduction

A **Counter** is a sequential logic circuit that changes its state on every clock pulse.

Unlike combinational circuits, counters store their previous state and update only on the active clock edge.

Counters are commonly used in:

* Digital Clocks
* Timers
* Frequency Dividers
* Event Counters
* Processors
* FPGA Designs
* Embedded Systems

---

# 📂 Project Structure

```text
Day07_Counters/
│
├── up_counter.v
├── down_counter.v
├── mod10_counter.v
├── counter_tb.v
└── README.md
```

---

# 📚 Counters Implemented

## 1️⃣ 4-bit Up Counter

The Up Counter increments its value by **1** on every rising edge of the clock.

### Example

```text
0000
0001
0010
0011
0100
...
1111
0000
```

---

## 2️⃣ 4-bit Down Counter

The Down Counter decrements its value by **1** on every rising edge of the clock.

### Example

```text
1111
1110
1101
1100
1011
...
0000
1111
```

---

## 3️⃣ Mod-10 (BCD) Counter

A Mod-10 Counter counts only from **0 to 9**.

After reaching decimal **9**, it automatically resets to **0**.

### Counting Sequence

```text
0
1
2
3
4
5
6
7
8
9
0
1
2
...
```

---

# 🧪 Simulation

The testbench verifies all three counters simultaneously.

### Simulation Output

```text
Time    UP      DOWN    MOD10
0       0000    1111    0000
15      0001    1110    0001
25      0010    1101    0010
35      0011    1100    0011
45      0100    1011    0100
55      0101    1010    0101
65      0110    1001    0110
75      0111    1000    0111
85      1000    0111    1000
95      1001    0110    1001
105     1010    0101    0000
```

---

# ▶️ Compile

```bash
C:\iverilog\bin\iverilog.exe -o sim up_counter.v down_counter.v mod10_counter.v counter_tb.v
```

---

# ▶️ Run

```bash
C:\iverilog\bin\vvp.exe sim
```

---

# 🧠 Concepts Learned

During this project, I learned:

* Sequential Logic Design
* Clock-Driven Circuits
* Rising Edge Triggering (`posedge`)
* Binary Counting
* Reset Logic
* Modulo Counters
* State Transitions
* Testbench Development
* Functional Simulation

---

# 🚀 Applications

Counters are widely used in:

* Digital Watches
* Electronic Clocks
* Timers
* Traffic Light Controllers
* Frequency Dividers
* Digital Meters
* FPGA Projects
* CPU Timing Circuits
* Embedded Systems

---

# 💡 Learning Outcomes

After completing this project, I can:

* Design synchronous counters in Verilog
* Implement Up and Down Counters
* Design a Mod-10 (BCD) Counter
* Use clock and reset signals effectively
* Simulate sequential circuits using Icarus Verilog
* Verify counter functionality through testbenches

---

# 📊 Project Summary

| Feature            | Status |
| ------------------ | :----: |
| 4-bit Up Counter   |    ✅   |
| 4-bit Down Counter |    ✅   |
| Mod-10 Counter     |    ✅   |
| Testbench          |    ✅   |
| Simulation         |    ✅   |

---

# 📅 Repository Progress

| Day     | Topic             |   Status  |
| ------- | ----------------- | :-------: |
| ✅ Day 1 | Logic Gates       | Completed |
| ✅ Day 2 | Adders            | Completed |
| ✅ Day 3 | Multiplexers      | Completed |
| ✅ Day 4 | Decoder & Encoder | Completed |
| ✅ Day 5 | 4-bit ALU         | Completed |
| ✅ Day 6 | Flip-Flops        | Completed |
| ✅ Day 7 | Counters          | Completed |

---

## ⭐ Next Project

**Day 8 – Shift Registers**

In the next project, I will implement:

* SISO (Serial In Serial Out)
* SIPO (Serial In Parallel Out)
* PISO (Parallel In Serial Out)
* PIPO (Parallel In Parallel Out)

These are essential building blocks for digital communication, memory interfaces, and FPGA-based systems.
