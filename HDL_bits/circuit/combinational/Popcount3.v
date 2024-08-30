module top_module( 
    input [2:0] in,
    output [1:0] out );
    integer i;
    reg [7:0]counter;
    always @ (*)begin
        counter=0;
        for(i=0;i<3;i=i+1)
           begin
            if(in[i]==1'b1)
               counter=counter+1'b1;
           end
        out=counter;
    end
endmodule
