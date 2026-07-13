module spi_master_tb;

reg clk;
reg reset;
reg start;

reg [7:0] data_in;

wire mosi;
wire sclk;
wire cs;
wire busy;

spi_master DUT(

.clk(clk),
.reset(reset),
.start(start),
.data_in(data_in),
.mosi(mosi),
.sclk(sclk),
.cs(cs),
.busy(busy)

);

always #5 clk = ~clk;

initial begin

clk = 0;
reset = 1;
start = 0;

data_in = 8'b11001010;

#10;

reset = 0;

#10;

start = 1;

#10;

start = 0;

#200;

$finish;

end

initial begin

$display("Time\tCS\tSCLK\tMOSI\tBusy");

$monitor("%0t\t%b\t%b\t%b\t%b",

$time,

cs,

sclk,

mosi,

busy);

end

endmodule