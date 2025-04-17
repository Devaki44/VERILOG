module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n); 
    wire w,x,y;
    assign w=a&b;
    assign x=c&d;
    assign y=w|x;
    assign out=y;
    assign out_n=~y;
endmodule
