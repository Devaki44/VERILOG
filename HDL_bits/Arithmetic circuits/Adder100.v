module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum );
    genvar i;
    wire [98:0]c_out;
    fa f1(a[0],b[0],cin,c_out[0],sum[0]);
    fa f2(a[99],b[99],c_out[98],cout,sum[99]);
    generate
        for(i=1;i<99;i=i+1)begin:Full_adder_block
            fa f(a[i],b[i],c_out[i-1],c_out[i],sum[i]);
       end
    endgenerate
endmodule
module fa(a,b,cin,cout,sum);
    input a,b;
    input cin;
    output cout,sum;
    assign cout=a&b|b&cin|a&cin;
    assign sum=a^b^cin;
endmodule
