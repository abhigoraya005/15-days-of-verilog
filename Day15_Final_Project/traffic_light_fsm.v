module traffic_light_fsm(

input clk,
input reset,

output reg Red,
output reg Yellow,
output reg Green

);

reg [1:0] state;

parameter RED        = 2'b00;
parameter RED_YELLOW = 2'b01;
parameter GREEN      = 2'b10;
parameter YELLOW_ST  = 2'b11;

// State Transition

always @(posedge clk)

begin

if(reset)

state <= RED;

else

case(state)

RED:
state <= RED_YELLOW;

RED_YELLOW:
state <= GREEN;

GREEN:
state <= YELLOW_ST;

YELLOW_ST:
state <= RED;

default:
state <= RED;

endcase

end

// Output Logic

always @(*)

begin

Red = 0;
Yellow = 0;
Green = 0;

case(state)

RED:
Red = 1;

RED_YELLOW:
begin
Red = 1;
Yellow = 1;
end

GREEN:
Green = 1;

YELLOW_ST:
Yellow = 1;

endcase

end

endmodule