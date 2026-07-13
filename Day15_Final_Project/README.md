# Day 15 – Mini Embedded Digital System (Capstone Project)

## 🎯 Objective

Build a **Mini Embedded Digital System** by integrating multiple Verilog modules developed throughout the previous 14 days into a single top-level design.

This capstone project demonstrates how independent RTL modules work together to form a complete digital system.

---

# 📖 Introduction

Digital systems are built by integrating multiple hardware components such as arithmetic units, memory, communication interfaces, counters, and controllers.

Instead of designing individual modules, this project combines them into one integrated architecture.

The project includes:

- Arithmetic Logic Unit (ALU)
- Counter
- Single-Port RAM
- UART Transmitter
- UART Receiver
- Traffic Light FSM
- Top-Level Integration

This represents a simplified embedded hardware system similar to what is implemented inside modern FPGA and SoC designs.

---

# 📂 Project Structure

```text
Day15_Final_Project/
│
├── alu.v
├── up_counter.v
├── single_port_ram.v
├── uart_tx.v
├── uart_rx.v
├── traffic_light_fsm.v
├── top_module.v
├── top_tb.v
└── README.md
```

---

# 🏗 System Architecture

```
                     +----------------------+
                     |    Clock & Reset     |
                     +----------+-----------+
                                |
                                ▼
                       +----------------+
                       |  Up Counter    |
                       +-------+--------+
                               |
                               ▼
                      +------------------+
                      |     4-bit ALU    |
                      +--------+---------+
                               |
                               ▼
                    +----------------------+
                    |  Single-Port RAM     |
                    +--------+-------------+
                             |
                +------------+------------+
                |                         |
                ▼                         ▼
         +--------------+          +--------------+
         |   UART TX    |          |   UART RX    |
         +--------------+          +--------------+

                    +----------------------+
                    |  Traffic Light FSM   |
                    +----------------------+
```

---

# 📚 Integrated Modules

| Module | Description |
|---------|-------------|
| Up Counter | Generates counting values |
| 4-bit ALU | Performs arithmetic and logical operations |
| Single-Port RAM | Stores processed data |
| UART TX | Serial data transmission |
| UART RX | Serial data reception |
| Traffic Light FSM | State machine controller |
| Top Module | Integrates all modules |

---

# ⚙ System Workflow

The system operates as follows:

1. System initializes after reset.
2. Counter starts incrementing.
3. Counter value is processed by the ALU.
4. ALU output is written into RAM.
5. RAM data is transmitted through UART TX.
6. UART RX receives incoming serial data.
7. FSM controls the sequence of operations.

---

# 🔄 Data Flow

```
Counter
   │
   ▼
4-bit ALU
   │
   ▼
Single-Port RAM
   │
   ▼
UART Transmitter
   │
Serial Line
   │
UART Receiver
```

---

# 🧪 Simulation

The top-level testbench verifies:

- System Reset
- Counter Operation
- ALU Processing
- RAM Read/Write
- UART Transmission
- UART Reception
- Module Integration

### Sample Output

```text
Time    Counter    RAM Data    UART TX    Busy

0         0           xx          1         0
20        1           01          0         1
30        2           02          1         1
40        3           03          0         1
50        4           04          1         1
```

*(Output may vary depending on the implementation and testbench.)*

---

# ▶ Compile

```bash
C:\iverilog\bin\iverilog.exe -o sim *.v
```

---

# ▶ Run

```bash
C:\iverilog\bin\vvp.exe sim
```

---

# 🧠 Concepts Learned

During this capstone project, I learned:

- RTL Integration
- Modular Hardware Design
- Hierarchical Design
- Memory Interface Design
- FSM Integration
- UART Communication
- Counter Design
- Arithmetic Logic Unit Integration
- Top-Level Module Design
- Functional Simulation
- Hardware Verification

---

# 🚀 Applications

The integrated system demonstrates concepts commonly used in:

- FPGA Development
- Embedded Systems
- Digital Signal Processing
- Industrial Automation
- Communication Controllers
- SoC Design
- Processor Subsystems
- ASIC Design

---

# 💡 Learning Outcomes

After completing this project, I can:

- Integrate multiple RTL modules into a complete system
- Design hierarchical Verilog projects
- Build reusable hardware modules
- Simulate complete digital systems
- Develop FPGA-oriented architectures
- Understand subsystem communication
- Verify integrated hardware designs

---

# 📊 Project Summary

| Feature | Status |
|---------|:------:|
| Top-Level Integration | ✅ |
| Counter | ✅ |
| ALU | ✅ |
| RAM | ✅ |
| UART TX | ✅ |
| UART RX | ✅ |
| FSM | ✅ |
| Testbench | ✅ |
| Functional Simulation | ✅ |

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
| ✅ Day 14 | SPI Master | Completed |
| ✅ Day 15 | Mini Embedded Digital System | Completed |

---

# 🏆 Skills Acquired Throughout This Journey

Over these 15 days, I developed practical experience in:

- Verilog HDL
- RTL Design
- Digital Logic Design
- Combinational Circuits
- Sequential Circuits
- Finite State Machines (FSM)
- Memory Design
- UART Communication
- SPI Communication
- Hardware Simulation
- Testbench Development
- FPGA Design Fundamentals
- Modular Hardware Architecture

---

# 🎉 15-Day Journey Completed

### ✔ Logic Design
- Logic Gates
- Adders
- Multiplexers
- Decoder & Encoder

### ✔ Arithmetic Circuits
- 4-bit ALU

### ✔ Sequential Logic
- Flip-Flops
- Counters
- Shift Registers

### ✔ Finite State Machines
- Traffic Light Controller
- Sequence Detector

### ✔ Communication Protocols
- UART TX
- UART RX
- SPI Master

### ✔ Memory Design
- Single-Port RAM

### ✔ Capstone Project
- Mini Embedded Digital System

---

# 🚀 Next Learning Roadmap

After completing this repository, the next goals are:

- SystemVerilog
- Advanced UART (Baud Generator)
- SPI Slave
- I²C Master
- FIFO Design
- Dual-Port RAM
- Pipelined ALU
- RISC-V Processor
- AXI Interface
- FPGA Board Projects
- ASIC Design Flow

---

# ⭐ Final Thoughts

This repository represents a complete beginner-to-intermediate journey in Verilog HDL. It emphasizes practical implementation, simulation, verification, and modular design, providing a strong foundation for FPGA, embedded systems, and digital hardware engineering.

---

<div align="center">

# 🎓 Journey Complete

## **15 Days • 15 Projects • Countless Concepts Learned**

### 🚀 Happy Coding • Happy Learning • Keep Building Hardware!

**Made with ❤️ by Abhiney Kumar**

</div>