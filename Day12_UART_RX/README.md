# Day 12 – UART Receiver (UART RX)

## 🎯 Objective

Design and simulate a **UART Receiver (UART RX)** using Verilog HDL.

This project implements a simplified UART receiver capable of receiving serial data, converting it into parallel data, and generating a data-ready signal.

---

# 📖 Introduction

UART (**Universal Asynchronous Receiver Transmitter**) is one of the most widely used serial communication protocols in embedded systems.

Unlike the UART Transmitter, the receiver continuously monitors the serial line, detects the **Start Bit**, receives the incoming data bits, verifies the **Stop Bit**, and reconstructs the original 8-bit data.

This project demonstrates the fundamentals of serial-to-parallel communication.

---

# 📂 Project Structure

```text
Day12_UART_RX/
│
├── uart_rx.v
├── uart_rx_tb.v
└── README.md
```

---

# 📚 UART Frame

```
Idle

1

↓

Start Bit

0

↓

D0 D1 D2 D3 D4 D5 D6 D7

↓

Stop Bit

1
```

Data bits are received **LSB First**.

---

# ⚙ Working Principle

The UART Receiver performs the following operations:

1. Waits for the serial line to go LOW (Start Bit).
2. Begins receiving incoming bits.
3. Stores each received bit inside a shift register.
4. Reconstructs the complete 8-bit data.
5. Detects the Stop Bit.
6. Raises the **data_ready** signal.

---

# 🧪 Simulation

### Sample Output

```text
Time    RX    Ready    Data

0       1      0       xxxxxxxx
15      0      0       xxxxxxxx
95      1      1       10100101
```

---

# ▶ Compile

```bash
C:\iverilog\bin\iverilog.exe -o sim uart_rx.v uart_rx_tb.v
```

---

# ▶ Run

```bash
C:\iverilog\bin\vvp.exe sim
```

---

# 🧠 Concepts Learned

- UART Protocol
- Start Bit Detection
- Stop Bit Detection
- Shift Registers
- Serial-to-Parallel Conversion
- Sequential Logic
- Testbench Development
- Functional Simulation

---

# 🚀 Applications

UART Receivers are used in:

- STM32 Microcontrollers
- Arduino
- Raspberry Pi
- FPGA Boards
- Bluetooth Modules
- GPS Modules
- GSM Modules
- Embedded Linux
- Serial Consoles

---

# 💡 Learning Outcomes

After completing this project, I can:

- Design a UART Receiver
- Detect serial data frames
- Convert serial data into parallel data
- Generate a data-ready signal
- Simulate UART reception using Verilog
- Verify hardware behavior using testbenches

---

# 📊 Project Summary

| Feature | Status |
|---------|:------:|
| UART Receiver | ✅ |
| Start Bit Detection | ✅ |
| Stop Bit Detection | ✅ |
| Serial-to-Parallel Conversion | ✅ |
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

---

## ⭐ Next Project

**Day 13 – Single-Port RAM**