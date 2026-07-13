module ram_tb;

reg clk;
reg we;

reg [3:0] address;
reg [7:0] data_in;

wire [7:0] data_out;

single_port_ram DUT(

.clk(clk),
.we(we),
.address(address),
.data_in(data_in),
.data_out(data_out)

);

always #5 clk = ~clk;

initial begin

clk = 0;
we = 1;

// Write Data

address = 4'd0;
data_in = 8'hAA;

#10;

address = 4'd1;
data_in = 8'h55;

#10;

address = 4'd2;
data_in = 8'hF0;

#10;

// Read Data

we = 0;

address = 4'd0;

#10;

address = 4'd1;

#10;

address = 4'd2;

#10;

$finish;

end

initial begin

$display("Time\tWE\tAddr\tData In\tData Out");

$monitor("%0t\t%b\t%0d\t%h\t%h",

$time,

we,

address,

data_in,

data_out);

end

endmodule