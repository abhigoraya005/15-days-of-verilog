# Day 3 – Multiplexers (2:1 & 4:1)

## Objective

Learn how multiplexers select one of multiple input signals using select lines.

---

## Topics Covered

* 2:1 Multiplexer
* 4:1 Multiplexer
* Conditional (`?:`) operator
* `always @(*)`
* `case` statement
* Testbench creation
* Simulation

---

## Files

```
Day03_Multiplexers/
│
├── mux2to1.v
├── mux4to1.v
├── mux_tb.v
└── README.md
```

---

## 2:1 Multiplexer

### Inputs

* I0
* I1
* S (Select)

### Output

* Y

| S | Output |
| - | ------ |
| 0 | I0     |
| 1 | I1     |

---

## 4:1 Multiplexer

### Inputs

* I0
* I1
* I2
* I3

### Select

* S[1:0]

### Output

* Y

| S  | Output |
| -- | ------ |
| 00 | I0     |
| 01 | I1     |
| 10 | I2     |
| 11 | I3     |

---

## Simulation Output

```
------2:1 MUX------
S=0 Output=0
S=1 Output=1

------4:1 MUX------
Sel=00 Output=0
Sel=01 Output=1
Sel=10 Output=0
Sel=11 Output=1
```

---

## Learning Outcome

* Designed combinational circuits
* Used `always` blocks
* Learned `case` statements
* Understood multiplexing logic
* Verified designs through simulation
