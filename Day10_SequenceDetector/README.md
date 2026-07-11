# Day 10 – 1011 Sequence Detector using Mealy FSM

## 🎯 Objective

Design and simulate a **1011 Sequence Detector** using a **Mealy Finite State Machine (FSM)**.

This project demonstrates how digital systems detect bit patterns in serial data streams.

---

# 📖 Introduction

A **Sequence Detector** is a digital circuit that detects a predefined binary sequence.

This project detects the pattern:

```
1011
```

It supports **overlapping sequence detection**, allowing multiple occurrences to be detected without restarting the FSM.

---

# 📂 Project Structure

```text
Day10_SequenceDetector/
│
├── sequence_detector.v
├── sequence_detector_tb.v
└── README.md
```

---

# 📚 Input Sequence

```
Input

1011011
```

Output

```
0001001
```

---

# 🧪 Simulation

### Sample Output

```text
Time    Input   Output

0       0       0
15      1       0
25      0       0
35      1       0
45      1       1
55      0       0
65      1       0
75      1       1
```

---

# ▶️ Compile

```bash
C:\iverilog\bin\iverilog.exe -o sim sequence_detector.v sequence_detector_tb.v
```

---

# ▶️ Run

```bash
C:\iverilog\bin\vvp.exe sim
```

---

# 🧠 Concepts Learned

- Mealy FSM
- Pattern Detection
- Overlapping Sequence Detection
- State Machines
- Sequential Logic
- RTL Design
- Testbench Development

---

# 🚀 Applications

- UART Receivers
- Packet Detection
- Digital Communication
- Protocol Parsing
- Error Detection
- FPGA Controllers

---

# 💡 Learning Outcomes

After completing this project, I can:

- Design Mealy FSMs
- Detect serial bit sequences
- Implement overlapping detection
- Simulate sequence detectors
- Verify FSM functionality

---

# 📊 Project Summary

| Feature | Status |
|---------|:------:|
| Mealy FSM | ✅ |
| Pattern Detection | ✅ |
| Overlapping Detection | ✅ |
| Testbench | ✅ |
| Simulation | ✅ |

---

## ⭐ Next Project

**Day 11 – UART Transmitter**