module sequence_detector(

input clk,
input reset,
input x,

output reg y

);

reg [1:0] state;

parameter S0 = 2'd0;
parameter S1 = 2'd1;
parameter S2 = 2'd2;
parameter S3 = 2'd3;

always @(posedge clk)

begin

if(reset)

begin
state <= S0;
y <= 0;
end

else

begin

case(state)

S0:

begin

y <= 0;

if(x)

state <= S1;

else

state <= S0;

end

S1:

begin

y <= 0;

if(x)

state <= S1;

else

state <= S2;

end

S2:

begin

y <= 0;

if(x)

state <= S3;

else

state <= S0;

end

S3:

begin

if(x)

begin

y <= 1;
state <= S1;

end

else

begin

y <= 0;
state <= S2;

end

end

endcase

end

end

endmodule