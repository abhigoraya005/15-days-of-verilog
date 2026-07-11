module uart_tx(

input clk,
input reset,
input tx_start,

input [7:0] data_in,

output reg tx,
output reg busy

);

reg [3:0] bit_count;
reg [7:0] shift_reg;

always @(posedge clk)

begin

if(reset)

begin

tx <= 1;
busy <= 0;
bit_count <= 0;

end

else

begin

if(tx_start && !busy)

begin

busy <= 1;

shift_reg <= data_in;

tx <= 0;

bit_count <= 0;

end

else if(busy)

begin

if(bit_count < 8)

begin

tx <= shift_reg[0];

shift_reg <= shift_reg >> 1;

bit_count <= bit_count + 1;

end

else

begin

tx <= 1;

busy <= 0;

end

end

end

end

endmodule