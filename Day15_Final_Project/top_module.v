module top_module(

input clk,
input reset,
input start,
input rx,

output tx,

output [3:0] counter_value,
output [7:0] ram_data,
output busy

);

//-------------------------------
// Counter
//-------------------------------

wire [3:0] count;

up_counter COUNTER(

.clk(clk),
.reset(reset),
.count(count)

);

assign counter_value = count;

//-------------------------------
// ALU
//-------------------------------

wire [3:0] alu_result;

// Example operation:
// Result = Counter + 1

assign alu_result = count + 1;

//-------------------------------
// RAM
//-------------------------------

wire [7:0] ram_out;

single_port_ram RAM(

.clk(clk),

.we(start),

.address(count),

.data_in({4'b0000,alu_result}),

.data_out(ram_out)

);

assign ram_data = ram_out;

//-------------------------------
// UART TX
//-------------------------------

uart_tx UART_TX(

.clk(clk),

.reset(reset),

.tx_start(start),

.data_in(ram_out),

.tx(tx),

.busy(busy)

);

//-------------------------------
// UART RX
//-------------------------------

wire [7:0] rx_data;
wire ready;

uart_rx UART_RX(

.clk(clk),

.reset(reset),

.rx(rx),

.data_out(rx_data),

.data_ready(ready)

);

endmodule