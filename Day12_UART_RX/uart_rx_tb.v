module uart_rx_tb;

reg clk;
reg reset;
reg rx;

wire [7:0] data_out;
wire data_ready;

uart_rx DUT(

.clk(clk),
.reset(reset),
.rx(rx),
.data_out(data_out),
.data_ready(data_ready)

);

always #5 clk = ~clk;

initial begin

clk = 0;
reset = 1;
rx = 1;

#10;

reset = 0;

// Start Bit

rx = 0; #10;

// Data = 8'b10100101 (LSB First)

rx=1; #10;
rx=0; #10;
rx=1; #10;
rx=0; #10;
rx=0; #10;
rx=1; #10;
rx=0; #10;
rx=1; #10;

// Stop Bit

rx=1; #10;

#20;

$finish;

end

initial begin

$display("Time\tRX\tReady\tData");

$monitor("%0t\t%b\t%b\t%b",

$time,

rx,

data_ready,

data_out);

end

endmodule