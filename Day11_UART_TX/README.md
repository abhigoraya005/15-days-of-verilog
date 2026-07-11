# Day 11 – UART Transmitter (UART TX)

## 🎯 Objective

Design and simulate a **UART Transmitter** using Verilog HDL.

The transmitter converts parallel data into serial data following the UART communication protocol.

---

# 📖 Introduction

UART (**Universal Asynchronous Receiver Transmitter**) is one of the most widely used serial communication protocols in embedded systems.

This project implements a simplified UART transmitter capable of sending 8-bit parallel data serially.

UART Frame:

```
Idle

1

↓

Start Bit

0

↓

8 Data Bits (LSB First)

↓

Stop Bit

1
```

---

# 📂 Project Structure

```text
Day11_UART_TX/
│
├── uart_tx.v
├── uart_tx_tb.v
└── README.md
```

---

# 📚 UART Frame

| Field | Bits |
|--------|------|
| Idle | 1 |
| Start Bit | 0 |
| Data | 8 Bits |
| Stop Bit | 1 |

---

# 🧪 Simulation

### Sample Output

```text
Time    TX    Busy

0       1     0
25      0     1
35      1     1
45      0     1
55      1     1
...
115     1     0
```

---

# ▶️ Compile

```bash
C:\iverilog\bin\iverilog.exe -o sim uart_tx.v uart_tx_tb.v
```

---

# ▶️ Run

```bash
C:\iverilog\bin\vvp.exe sim
```

---

# 🧠 Concepts Learned

- UART Protocol
- Serial Communication
- Start Bit
- Stop Bit
- Shift Registers
- FSM-Controlled Transmission
- Parallel-to-Serial Conversion
- Testbench Development

---

# 🚀 Applications

UART communication is widely used in:

- STM32 Microcontrollers
- Arduino
- Raspberry Pi
- FPGA Boards
- GPS Modules
- Bluetooth Modules
- GSM Modules
- Embedded Linux

---

# 💡 Learning Outcomes

After completing this project, I can:

- Design a UART transmitter
- Convert parallel data to serial data
- Understand UART frame format
- Simulate serial communication
- Verify UART transmission using testbenches

---

# 📊 Project Summary

| Feature | Status |
|---------|:------:|
| UART TX | ✅ |
| Start Bit | ✅ |
| Stop Bit | ✅ |
| Parallel-to-Serial | ✅ |
| Testbench | ✅ |
| Simulation | ✅ |

---

# ⚠️ Note

This is a simplified educational implementation that assumes one clock cycle per transmitted bit.

Production UART designs typically include:

- Baud Rate Generator
- Configurable Baud Rates
- Parity Bit Support
- Multiple Stop Bits
- Ready/Busy Handshaking
- FSM-Based Timing Control

---

## ⭐ Next Project

**Day 12 – UART Receiver (UART RX)**

The next project will complete the UART communication system by receiving serial data, reconstructing the original byte, and signaling when valid data has been received.