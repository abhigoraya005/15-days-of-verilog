module spi_master(

input clk,
input reset,
input start,
input [7:0] data_in,

output reg mosi,
output reg sclk,
output reg cs,
output reg busy

);

reg [7:0] shift_reg;
reg [3:0] bit_count;

always @(posedge clk)

begin

if(reset)

begin

mosi <= 0;
sclk <= 0;
cs <= 1;
busy <= 0;
bit_count <= 0;

end

else

begin

if(start && !busy)

begin

busy <= 1;
cs <= 0;
shift_reg <= data_in;
bit_count <= 8;

end

else if(busy)

begin

sclk <= ~sclk;

if(sclk==0)

begin

mosi <= shift_reg[7];
shift_reg <= shift_reg << 1;
bit_count <= bit_count - 1;

if(bit_count==1)

begin

busy <= 0;
cs <= 1;
sclk <= 0;

end

end

end

end

end

endmodule