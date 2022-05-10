module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] high,low;
    wire cout;
    
    add16 A1(a[15:0],b[15:0],1'b0,low[15:0],cout);
    add16 A2(a[31:16],b[31:16],cout,high[15:0],1'b0);
    
    assign sum[31:0]={high[15:0],low[15:0]};
    

endmodule
