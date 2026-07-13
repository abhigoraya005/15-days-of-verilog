# Day 13 – Single-Port RAM (Random Access Memory)

## 🎯 Objective

Design and simulate a **Single-Port RAM** using Verilog HDL.

This project introduces the fundamentals of digital memory design, including synchronous read/write operations, memory arrays, address decoding, and data storage.

---

# 📖 Introduction

Random Access Memory (RAM) is one of the most essential components in digital systems. It temporarily stores data that can be read or modified during program execution.

This project implements a simple **Single-Port RAM**, where the same port is used for both reading and writing operations.

The design is synchronous and uses a clock signal to control memory access.

---

# 📂 Project Structure

```text
Day13_RAM/
│
├── single_port_ram.v
├── ram_tb.v
└── README.md
```

---

# 🏗 RAM Architecture

```
                 +----------------------+
 Address ------->|                      |
 Data In ------->|   Single-Port RAM    |
 Write Enable -->|                      |
 Clock --------->|                      |
                 |                      |
                 |       Data Out ----->|
                 +----------------------+
```

---

# 📚 Memory Specifications

| Parameter | Value |
|-----------|-------|
| Memory Type | Single-Port RAM |
| Data Width | 8 bits |
| Address Width | 4 bits |
| Memory Depth | 16 Locations |
| Clock | Positive Edge |
| Read Operation | Synchronous |
| Write Operation | Synchronous |

---

# ⚙ Working Principle

The RAM performs two basic operations:

### Write Operation

- Write Enable (`WE`) is HIGH.
- Data is written into the selected memory location on the rising edge of the clock.

### Read Operation

- Write Enable (`WE`) is LOW.
- The selected memory location is read and presented on the output.

---

# 🧪 Simulation

### Sample Output

```text
Time    WE   Address   Data In   Data Out

0       1      0         AA         xx
10      1      1         55         AA
20      1      2         F0         55
30      0      0         --         AA
40      0      1         --         55
50      0      2         --         F0
```

---

# ▶ Compile

```bash
C:\iverilog\bin\iverilog.exe -o sim single_port_ram.v ram_tb.v
```

---

# ▶ Run

```bash
C:\iverilog\bin\vvp.exe sim
```

---

# 🧠 Concepts Learned

- Memory Arrays
- RAM Architecture
- Address Decoding
- Read Operation
- Write Operation
- Synchronous Logic
- Testbench Development
- Functional Simulation

---

# 🚀 Applications

Single-Port RAM is widely used in:

- FPGA Block RAM
- CPU Data Memory
- Embedded Systems
- Communication Buffers
- Cache Memory
- Digital Signal Processing
- Image Processing
- Microcontroller Applications

---

# 💡 Learning Outcomes

After completing this project, I can:

- Design a RAM module using Verilog
- Understand memory organization
- Perform synchronous read/write operations
- Use address buses effectively
- Develop memory testbenches
- Simulate memory behavior

---

# 📊 Project Summary

| Feature | Status |
|---------|:------:|
| Single-Port RAM | ✅ |
| Memory Array | ✅ |
| Read Operation | ✅ |
| Write Operation | ✅ |
| Testbench | ✅ |
| Simulation | ✅ |

---

# 📅 Repository Progress

| Day | Topic | Status |
|------|--------------------------|:------:|
| ✅ Day 1 | Logic Gates | Completed |
| ✅ Day 2 | Adders | Completed |
| ✅ Day 3 | Multiplexers | Completed |
| ✅ Day 4 | Decoder & Encoder | Completed |
| ✅ Day 5 | 4-bit ALU | Completed |
| ✅ Day 6 | Flip-Flops | Completed |
| ✅ Day 7 | Counters | Completed |
| ✅ Day 8 | Shift Registers | Completed |
| ✅ Day 9 | Traffic Light FSM | Completed |
| ✅ Day 10 | Sequence Detector | Completed |
| ✅ Day 11 | UART Transmitter | Completed |
| ✅ Day 12 | UART Receiver | Completed |
| ✅ Day 13 | Single-Port RAM | Completed |

---

## ⭐ Next Project

**Day 14 – SPI Master Communication**