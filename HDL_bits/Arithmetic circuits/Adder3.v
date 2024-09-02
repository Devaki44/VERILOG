module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] sum,
    output [2:0] cout );
    fa in0(a[0],b[0],cin,sum[0],cout[0]);
    fa in1(a[1],b[1],cout[0],sum[1],cout[1]);
    fa in2(a[2],b[2],cout[1],sum[2],cout[2]);
endmodule
module fa(a,b,cin,sum,cout);
    input a,b,cin;
    output sum ,cout;
    assign sum=a^b^cin;
    assign cout=(a&b)+(b&cin)+(a&cin);
endmodule
