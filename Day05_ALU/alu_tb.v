module alu_tb;

reg [3:0] A;
reg [3:0] B;
reg [2:0] Sel;

wire [3:0] Result;

alu4bit DUT(

.A(A),
.B(B),
.Sel(Sel),
.Result(Result)

);

initial begin

A = 4'b1010;
B = 4'b0011;

$display(" A     B    Sel   Result");
$display("-------------------------");

Sel = 3'b000; #10;
$display("%b %b %b %b",A,B,Sel,Result);

Sel = 3'b001; #10;
$display("%b %b %b %b",A,B,Sel,Result);

Sel = 3'b010; #10;
$display("%b %b %b %b",A,B,Sel,Result);

Sel = 3'b011; #10;
$display("%b %b %b %b",A,B,Sel,Result);

Sel = 3'b100; #10;
$display("%b %b %b %b",A,B,Sel,Result);

Sel = 3'b101; #10;
$display("%b %b %b %b",A,B,Sel,Result);

Sel = 3'b110; #10;
$display("%b %b %b %b",A,B,Sel,Result);

Sel = 3'b111; #10;
$display("%b %b %b %b",A,B,Sel,Result);

$finish;

end

endmodule