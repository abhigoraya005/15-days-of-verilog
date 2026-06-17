# Day 1 — AND Gate in Verilog

## Objective

Design and simulate a simple AND gate using Verilog HDL.

---

## AND Gate Truth Table

| A | B | Y |
| - | - | - |
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

---

## Verilog Design Code

```verilog
module and_gate(
    input a,
    input b,
    output y
);

assign y = a & b;

endmodule
```

---

## Testbench

```verilog
module and_gate_tb;

reg a, b;
wire y;

and_gate uut (
    .a(a),
    .b(b),
    .y(y)
);

initial begin
    $display("A B | Y");
    $display("---------");

    a = 0; b = 0; #10;
    $display("%b %b | %b", a, b, y);

    a = 0; b = 1; #10;
    $display("%b %b | %b", a, b, y);

    a = 1; b = 0; #10;
    $display("%b %b | %b", a, b, y);

    a = 1; b = 1; #10;
    $display("%b %b | %b", a, b, y);

    $finish;
end

endmodule
```

---

## Simulation Output

```text
A B | Y
---------
0 0 | 0
0 1 | 0
1 0 | 0
1 1 | 1
```

---

## Tools Used

* Icarus Verilog
* PowerShell
* VS Code

---

## Learning Outcome

* Basic Verilog syntax
* Module creation
* assign statement
* Testbench writing
* Simulation using Icarus Verilog
