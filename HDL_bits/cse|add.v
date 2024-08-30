module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cout1,cout2,cout3;
    wire [15:0]sum_1,sum_2;
    add16 in1(a[15:0],b[15:0],1'b0,sum[15:0],cout1);  
    add16 in2(a[31:16],b[31:16],1'b0,sum_1,cout2);    
    add16 in3(a[31:16],b[31:16],1'b1,sum_2,cout3);
    always @(*) begin
      case(cout1) 
            1'b0:sum[31:16]=sum_1;
            1'b1:sum[31:16]=sum_2;
      endcase
    end
endmodule
