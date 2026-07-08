# Day 4 – Decoder & Encoder

## Objective

Implement and simulate three fundamental combinational logic circuits:

* 2-to-4 Decoder
* 4-to-2 Encoder
* 4-to-2 Priority Encoder

---

## Topics Covered

* Decoder
* Encoder
* Priority Encoder
* `case` statement
* `if-else` priority logic
* Testbench development
* Simulation using Icarus Verilog

---

## Files

```text
Day04_Decoder_Encoder/
│
├── decoder2to4.v
├── encoder4to2.v
├── priority_encoder.v
├── decoder_encoder_tb.v
└── README.md
```

---

## Simulation Output

```text
----- Decoder -----
A=00 Output=0001
A=01 Output=0010
A=10 Output=0100
A=11 Output=1000

----- Encoder -----
Input=0001 Output=00
Input=0010 Output=01
Input=0100 Output=10
Input=1000 Output=11

----- Priority Encoder -----
Input=0011 Output=01
Input=0110 Output=10
Input=1110 Output=11
```

---

## Learning Outcomes

* Designed decoder circuits
* Designed encoder circuits
* Implemented priority logic
* Used `case` and `if-else`
* Verified digital circuits through simulation
