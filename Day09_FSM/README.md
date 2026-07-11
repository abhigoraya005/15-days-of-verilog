# Day 9 – Traffic Light Controller using Finite State Machine (FSM)

## 🎯 Objective

Design and simulate a **Traffic Light Controller** using a **Moore Finite State Machine (FSM)** in Verilog HDL.

This project introduces state-based digital system design, one of the most important concepts in FPGA and ASIC development.

---

# 📖 Introduction

A **Finite State Machine (FSM)** is a sequential circuit that transitions between predefined states based on inputs and clock signals.

This project implements a simple traffic light controller with four states:

- 🔴 RED
- 🔴🟡 RED + YELLOW
- 🟢 GREEN
- 🟡 YELLOW

The controller continuously cycles through these states.

---

# 📂 Project Structure

```text
Day09_FSM/
│
├── traffic_light_fsm.v
├── traffic_light_tb.v
└── README.md
```

---

# 🚦 State Diagram

```
RED
 ↓
RED + YELLOW
 ↓
GREEN
 ↓
YELLOW
 ↓
RED
```

---

# 📚 State Encoding

| State | Binary |
|--------|--------|
| RED | 00 |
| RED + YELLOW | 01 |
| GREEN | 10 |
| YELLOW | 11 |

---

# 🧪 Simulation

### Sample Output

```text
Time    Red Yellow Green

0       1    0      0
15      1    1      0
25      0    0      1
35      0    1      0
45      1    0      0
```

---

# ▶️ Compile

```bash
C:\iverilog\bin\iverilog.exe -o sim traffic_light_fsm.v traffic_light_tb.v
```

---

# ▶️ Run

```bash
C:\iverilog\bin\vvp.exe sim
```

---

# 🧠 Concepts Learned

- Finite State Machines (FSM)
- Moore Machine
- State Encoding
- State Transition Logic
- Output Logic
- Sequential Circuit Design
- Clocked Digital Systems

---

# 🚀 Applications

- Traffic Signal Controllers
- Industrial Automation
- Elevator Controllers
- Washing Machine Controllers
- FPGA Control Logic
- Embedded Systems

---

# 💡 Learning Outcomes

After completing this project, I can:

- Design Moore FSMs in Verilog
- Implement state transitions
- Design sequential controllers
- Simulate FSM-based systems
- Verify controller behavior using testbenches

---

# 📊 Project Summary

| Feature | Status |
|---------|:------:|
| Moore FSM | ✅ |
| State Encoding | ✅ |
| Traffic Controller | ✅ |
| Testbench | ✅ |
| Simulation | ✅ |

---

## ⭐ Next Project

**Day 10 – 1011 Sequence Detector using Mealy FSM**