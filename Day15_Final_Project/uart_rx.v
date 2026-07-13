module uart_rx(

input clk,
input reset,
input rx,

output reg [7:0] data_out,
output reg data_ready

);

reg [3:0] bit_count;
reg [7:0] shift_reg;
reg receiving;

always @(posedge clk)

begin

if(reset)

begin

bit_count <= 0;
shift_reg <= 0;
receiving <= 0;
data_ready <= 0;

end

else

begin

data_ready <= 0;

if(!receiving)

begin

if(rx==0)

begin

receiving <= 1;
bit_count <= 0;

end

end

else

begin

if(bit_count<8)

begin

shift_reg[bit_count] <= rx;
bit_count <= bit_count + 1;

end

else

begin

receiving <= 0;
data_out <= shift_reg;
data_ready <= 1;

end

end

end

end

endmodule