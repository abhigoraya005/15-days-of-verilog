module t_flipflop(

input clk,
input T,

output reg Q

);

always @(posedge clk)

begin

if(T)

Q <= ~Q;

else

Q <= Q;

end

endmodule