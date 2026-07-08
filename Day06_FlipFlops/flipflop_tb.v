module flipflop_tb;

reg clk;
reg D;
reg S;
reg R;
reg J;
reg K;
reg T;

wire QD;
wire QS;
wire QJK;
wire QT;

d_flipflop DFF(

.clk(clk),
.D(D),
.Q(QD)

);

sr_flipflop SR(

.clk(clk),
.S(S),
.R(R),
.Q(QS)

);

jk_flipflop JK(

.clk(clk),
.J(J),
.K(K),
.Q(QJK)

);

t_flipflop TF(

.clk(clk),
.T(T),
.Q(QT)

);

always #5 clk = ~clk;

initial begin

clk = 0;

$display("Sequential Logic Simulation");

D = 1;
S = 1;
R = 0;
J = 1;
K = 0;
T = 1;

#20;

D = 0;
S = 0;
R = 1;
J = 1;
K = 1;
T = 1;

#20;

$finish;

end

initial begin

$monitor("Time=%0t | D=%b QD=%b | S=%b R=%b QS=%b | J=%b K=%b QJK=%b | T=%b QT=%b",
$time,D,QD,S,R,QS,J,K,QJK,T,QT);

end

endmodule