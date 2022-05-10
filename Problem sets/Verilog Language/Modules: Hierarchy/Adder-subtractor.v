module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [15:0] high,low;
    wire cout;
    wire [31:0] b_1;
    assign b_1=b[31:0]^{32{sub}};
    add16 a1(a[15:0],b_1[15:0],sub,low,cout);
    add16 a2(a[31:16],b_1[31:16],cout,high,1'b0);
    assign sum={high,low};

endmodule
