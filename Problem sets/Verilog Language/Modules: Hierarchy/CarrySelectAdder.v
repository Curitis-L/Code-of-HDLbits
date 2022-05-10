module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] high_0,high_1,low;
    wire cout;
    
    add16 A1(a[15:0],b[15:0],1'b0,low,cout);
    add16 A2(a[31:16],b[31:16],1'b0,high_0,1'b0);
    add16 A3(a[31:16],b[31:16],1'b1,high_1,1'b0);
    
    always @(*)
        begin
            case(cout)
                1'b0:sum={high_0,low};
                1'b1:sum={high_1,low};
            endcase
        end
                    

endmodule
