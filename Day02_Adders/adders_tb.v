module adders_tb;

reg A, B, Cin;
wire Sum_HA, Carry_HA;
wire Sum_FA, Cout_FA;

half_adder HA (
    .A(A),
    .B(B),
    .Sum(Sum_HA),
    .Carry(Carry_HA)
);

full_adder FA (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum_FA),
    .Cout(Cout_FA)
);

initial begin

    $display("A B Cin | HA_Sum HA_Carry | FA_Sum FA_Cout");
    $display("------------------------------------------------");

    A=0; B=0; Cin=0; #10;
    $display("%b %b %b | %b %b | %b %b",
             A,B,Cin,Sum_HA,Carry_HA,Sum_FA,Cout_FA);

    A=0; B=1; Cin=0; #10;
    $display("%b %b %b | %b %b | %b %b",
             A,B,Cin,Sum_HA,Carry_HA,Sum_FA,Cout_FA);

    A=1; B=0; Cin=1; #10;
    $display("%b %b %b | %b %b | %b %b",
             A,B,Cin,Sum_HA,Carry_HA,Sum_FA,Cout_FA);

    A=1; B=1; Cin=1; #10;
    $display("%b %b %b | %b %b | %b %b",
             A,B,Cin,Sum_HA,Carry_HA,Sum_FA,Cout_FA);

    $finish;
end

endmodule