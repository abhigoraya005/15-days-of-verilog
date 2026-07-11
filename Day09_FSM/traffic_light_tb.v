module traffic_light_tb;

reg clk;
reg reset;

wire Red;
wire Yellow;
wire Green;

traffic_light_fsm DUT(

.clk(clk),
.reset(reset),
.Red(Red),
.Yellow(Yellow),
.Green(Green)

);

always #5 clk = ~clk;

initial begin

clk = 0;
reset = 1;

#10;

reset = 0;

#80;

$finish;

end

initial begin

$display("Time\tRed\tYellow\tGreen");

$monitor("%0t\t%b\t%b\t%b",

$time,

Red,

Yellow,

Green);

end

endmodule