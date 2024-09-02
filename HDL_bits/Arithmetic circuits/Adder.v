module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    wire [3:0]c;
    fa f0(x[0],y[0],c[0],sum[0],c[1]);
    fa f1(x[1],y[1],c[1],sum[1],c[2]);
    fa f2(x[2],y[2],c[2],sum[2],c[3]);
    fa f4(x[3],y[3],c[3],sum[3],sum[4]);
endmodule
module fa(x,y,cin,sum,cout);
    input x,y,cin;
    output sum ,cout;
    assign sum=x^y^cin;
    assign cout=(x&y)|(y&cin)|(x&cin);
endmodule
