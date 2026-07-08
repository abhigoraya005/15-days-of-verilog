module decoder_encoder_tb;

reg [1:0] A;
reg [3:0] I;

wire [3:0] Y_decoder;
wire [1:0] Y_encoder;
wire [1:0] Y_priority;

decoder2to4 DEC(
    .A(A),
    .Y(Y_decoder)
);

encoder4to2 ENC(
    .I(I),
    .Y(Y_encoder)
);

priority_encoder PRI(
    .I(I),
    .Y(Y_priority)
);

initial begin

    $display("----- Decoder -----");

    A=2'b00; #10;
    $display("A=%b Output=%b",A,Y_decoder);

    A=2'b01; #10;
    $display("A=%b Output=%b",A,Y_decoder);

    A=2'b10; #10;
    $display("A=%b Output=%b",A,Y_decoder);

    A=2'b11; #10;
    $display("A=%b Output=%b",A,Y_decoder);

    $display("");

    $display("----- Encoder -----");

    I=4'b0001; #10;
    $display("Input=%b Output=%b",I,Y_encoder);

    I=4'b0010; #10;
    $display("Input=%b Output=%b",I,Y_encoder);

    I=4'b0100; #10;
    $display("Input=%b Output=%b",I,Y_encoder);

    I=4'b1000; #10;
    $display("Input=%b Output=%b",I,Y_encoder);

    $display("");

    $display("----- Priority Encoder -----");

    I=4'b0011; #10;
    $display("Input=%b Output=%b",I,Y_priority);

    I=4'b0110; #10;
    $display("Input=%b Output=%b",I,Y_priority);

    I=4'b1110; #10;
    $display("Input=%b Output=%b",I,Y_priority);

    $finish;

end

endmodule