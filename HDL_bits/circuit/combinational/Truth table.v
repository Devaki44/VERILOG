module top_module( 
    input x3,
    input x2,
    input x1,  // three inputs
    output f
);  // one output
    wire w,x,y,z;
    and(w,~x3,x2,~x1);
    and(x,~x3,x2,x1);
    and(y,x3,~x2,x1);
    and(z,x3,x2,x1);
    or(f,w,x,y,z);
endmodule
