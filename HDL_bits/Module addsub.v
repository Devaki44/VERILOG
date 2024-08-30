module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0]x;
    wire y;
    assign x =b[31:0] ^{32{sub}};
    add16 in1(a[15:0],x[15:0],sub,sum[15:0],y);
    add16 in2(a[31:16],x[31:16],y,sum[31:16]);
endmodule
