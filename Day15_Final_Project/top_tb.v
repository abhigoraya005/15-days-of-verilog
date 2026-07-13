module top_tb;

reg clk;
reg reset;
reg start;
reg rx;

wire tx;
wire busy;

wire [3:0] counter_value;
wire [7:0] ram_data;

top_module DUT(

.clk(clk),

.reset(reset),

.start(start),

.rx(rx),

.tx(tx),

.counter_value(counter_value),

.ram_data(ram_data),

.busy(busy)

);

always #5 clk = ~clk;

initial

begin

clk=0;

reset=1;

start=0;

rx=1;

#10;

reset=0;

#20;

start=1;

#10;

start=0;

#200;

$finish;

end

initial

begin

$display("Time\tCounter\tRAM\tBusy");

$monitor("%0t\t%d\t%h\t%b",

$time,

counter_value,

ram_data,

busy);

end

endmodule