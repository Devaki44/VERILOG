module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 
 
    assign s = a+b;
    assign overflow =(a[7]&&b[7]&&(~s[7]))||((~a[7])&&(~b[7])&&s[7]);
endmodule
module fa(a,b,cin,sum,cout);
    input a,b,cin;
    output sum,cout;
    assign sum=a^b^cin;
    assign cout=a&b|b&cin|a&cin;
endmodule
        
