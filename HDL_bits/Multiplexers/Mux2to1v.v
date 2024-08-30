module top_module( 
    input [99:0] a, b,
    input sel,
    output [99:0] out );
    always @ (*)
      begin
        if(sel==0)
            out=a[99:0];
        else
            out=b[99:0];
      end  
endmodule
