module sequence_detector_tb;

reg clk;
reg reset;
reg x;

wire y;

sequence_detector DUT(

.clk(clk),
.reset(reset),
.x(x),
.y(y)

);

always #5 clk = ~clk;

initial begin

clk = 0;
reset = 1;
x = 0;

#10;

reset = 0;

// Sequence : 1011011

x=1; #10;
x=0; #10;
x=1; #10;
x=1; #10;

x=0; #10;
x=1; #10;
x=1; #10;

#20;

$finish;

end

initial begin

$display("Time\tInput\tOutput");

$monitor("%0t\t%b\t%b",

$time,

x,

y);

end

endmodule