module mux_tb;

reg I0, I1, I2, I3;
reg S;
reg [1:0] Sel;

wire Y2;
wire Y4;

mux2to1 MUX2(
    .I0(I0),
    .I1(I1),
    .S(S),
    .Y(Y2)
);

mux4to1 MUX4(
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .S(Sel),
    .Y(Y4)
);

initial begin

    I0=0;
    I1=1;
    I2=0;
    I3=1;

    $display("------2:1 MUX------");

    S=0; #10;
    $display("S=%b Output=%b",S,Y2);

    S=1; #10;
    $display("S=%b Output=%b",S,Y2);

    $display("");

    $display("------4:1 MUX------");

    Sel=2'b00; #10;
    $display("Sel=%b Output=%b",Sel,Y4);

    Sel=2'b01; #10;
    $display("Sel=%b Output=%b",Sel,Y4);

    Sel=2'b10; #10;
    $display("Sel=%b Output=%b",Sel,Y4);

    Sel=2'b11; #10;
    $display("Sel=%b Output=%b",Sel,Y4);

    $finish;

end

endmodule