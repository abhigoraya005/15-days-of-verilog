module uart_tx_tb;

reg clk;
reg reset;
reg tx_start;

reg [7:0] data_in;

wire tx;
wire busy;

uart_tx DUT(

.clk(clk),
.reset(reset),
.tx_start(tx_start),
.data_in(data_in),
.tx(tx),
.busy(busy)

);

always #5 clk = ~clk;

initial begin

clk = 0;
reset = 1;
tx_start = 0;

data_in = 8'b10100101;

#10;

reset = 0;

#10;

tx_start = 1;

#10;

tx_start = 0;

#120;

$finish;

end

initial begin

$display("Time\tTX\tBusy");

$monitor("%0t\t%b\t%b",

$time,

tx,

busy);

end

endmodule