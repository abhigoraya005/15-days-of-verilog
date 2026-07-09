module shift_register_tb;

reg clk;
reg reset;
reg serial_in;
reg load;

reg [3:0] parallel_in;

wire serial_out_siso;
wire [3:0] parallel_out_sipo;
wire serial_out_piso;
wire [3:0] parallel_out_pipo;

siso SISO(
.clk(clk),
.reset(reset),
.serial_in(serial_in),
.serial_out(serial_out_siso)
);

sipo SIPO(
.clk(clk),
.reset(reset),
.serial_in(serial_in),
.parallel_out(parallel_out_sipo)
);

piso PISO(
.clk(clk),
.reset(reset),
.load(load),
.parallel_in(parallel_in),
.serial_out(serial_out_piso)
);

pipo PIPO(
.clk(clk),
.reset(reset),
.parallel_in(parallel_in),
.parallel_out(parallel_out_pipo)
);

always #5 clk = ~clk;

initial begin

clk = 0;
reset = 1;
serial_in = 0;
load = 0;
parallel_in = 4'b1011;

#10;

reset = 0;

serial_in = 1; #10;
serial_in = 0; #10;
serial_in = 1; #10;
serial_in = 1; #10;

load = 1; #10;
load = 0;

#40;

$finish;

end

initial begin

$display("Time\tSISO\tSIPO\tPISO\tPIPO");

$monitor("%0t\t%b\t%b\t%b\t%b",

$time,

serial_out_siso,

parallel_out_sipo,

serial_out_piso,

parallel_out_pipo);

end

endmodule