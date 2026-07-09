module counter_tb;

reg clk;
reg reset;

wire [3:0] up_count;
wire [3:0] down_count;
wire [3:0] mod10_count;

up_counter UP(

.clk(clk),
.reset(reset),
.count(up_count)

);

down_counter DOWN(

.clk(clk),
.reset(reset),
.count(down_count)

);

mod10_counter MOD(

.clk(clk),
.reset(reset),
.count(mod10_count)

);

always #5 clk = ~clk;

initial begin

clk = 0;
reset = 1;

#10;

reset = 0;

#120;

$finish;

end

initial begin

$display("Time\tUP\tDOWN\tMOD10");

$monitor("%0t\t%b\t%b\t%b",

$time,

up_count,

down_count,

mod10_count);

end

endmodule