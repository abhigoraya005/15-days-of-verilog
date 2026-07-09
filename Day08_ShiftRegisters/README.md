# Day 8 – Shift Registers (Sequential Logic)

## 🎯 Objective

Design and simulate the four fundamental types of **Shift Registers** using Verilog HDL.

This project includes:

* SISO (Serial In Serial Out)
* SIPO (Serial In Parallel Out)
* PISO (Parallel In Serial Out)
* PIPO (Parallel In Parallel Out)

Shift registers are one of the most important sequential circuits used for **data storage**, **data transfer**, and **serial communication**.

---

# 📖 Introduction

A **Shift Register** is a sequential circuit made from multiple flip-flops connected in series.

It stores binary data and shifts the stored bits either left or right on every clock pulse.

Shift registers are widely used in:

* UART Communication
* SPI Communication
* I²C Interfaces
* Digital Signal Processing
* FPGA Designs
* Embedded Systems
* Data Buffers
* Memory Interfaces

---

# 📂 Project Structure

```text
Day08_ShiftRegisters/
│
├── siso.v
├── sipo.v
├── piso.v
├── pipo.v
├── shift_register_tb.v
└── README.md
```

---

# 📚 Shift Registers Implemented

## 1️⃣ SISO (Serial In Serial Out)

### Description

* Data enters **one bit at a time**
* Data exits **one bit at a time**
* Mainly used for serial communication

### Example

```text
Input Bits:

1 → 0 → 1 → 1

Output:

After four clock cycles

1 → 0 → 1 → 1
```

---

## 2️⃣ SIPO (Serial In Parallel Out)

### Description

* Data enters serially
* Data becomes available simultaneously on all output bits

### Example

```text
Serial Input

1 → 0 → 1 → 1

Parallel Output

1011
```

Applications:

* UART Receiver
* Serial-to-Parallel Conversion

---

## 3️⃣ PISO (Parallel In Serial Out)

### Description

* Multiple bits are loaded together
* Data is transmitted serially

### Example

```text
Parallel Input

1011

Serial Output

1 → 0 → 1 → 1
```

Applications:

* UART Transmitter
* SPI Master
* Data Serialization

---

## 4️⃣ PIPO (Parallel In Parallel Out)

### Description

* Parallel data is loaded
* Parallel data is read

### Example

```text
Input

1011

Output

1011
```

Applications:

* Temporary Storage
* Register Banks
* CPU Registers

---

# 🧪 Simulation

The testbench verifies all four shift registers simultaneously.

### Sample Output

```text
Time    SISO    SIPO    PISO    PIPO

0       0       0000    0       0000

15      0       0001    0       1011

25      0       0010    1       1011

35      0       0101    0       1011

45      1       1011    1       1011
```

*(Your exact timing values may vary depending on simulation.)*

---

# ▶️ Compile

```bash
C:\iverilog\bin\iverilog.exe -o sim siso.v sipo.v piso.v pipo.v shift_register_tb.v
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
* Shift Registers
* Serial Data Transfer
* Parallel Data Transfer
* Shift Operations
* Data Loading
* Clocked Circuits
* Testbench Development
* Functional Simulation

---

# 🚀 Applications

Shift Registers are widely used in:

* UART Communication
* SPI Communication
* I²C Interfaces
* Digital Signal Processing
* Data Buffers
* Register Files
* FPGA Designs
* Embedded Systems
* CPU Architecture

---

# 💡 Learning Outcomes

After completing this project, I can:

* Design all four types of shift registers
* Understand serial and parallel data transfer
* Implement clocked sequential circuits
* Simulate shift registers using Icarus Verilog
* Verify hardware functionality using testbenches
* Apply shift registers in communication protocols

---

# 📊 Project Summary

| Feature               | Status |
| --------------------- | :----: |
| SISO Shift Register   |    ✅   |
| SIPO Shift Register   |    ✅   |
| PISO Shift Register   |    ✅   |
| PIPO Shift Register   |    ✅   |
| Testbench             |    ✅   |
| Functional Simulation |    ✅   |

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
| ✅ Day 8 | Shift Registers   | Completed |

---

# 🏆 Skills Gained

* Verilog HDL
* RTL Design
* Sequential Logic
* Shift Register Design
* Digital Electronics
* Functional Simulation
* Testbench Development
* FPGA Fundamentals

---

## ⭐ Next Project

**Day 9 – Finite State Machine (FSM): Traffic Light Controller**

The next project will introduce **Finite State Machines (FSMs)**, where the system transitions between predefined states based on clock cycles and inputs. FSMs are widely used in processors, communication protocols, industrial automation, and FPGA/ASIC design.
