module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    wire [15:0] high,low;
    wire cout;
    add16 A1(.a(a[15:0]),
             .b(b[15:0]),
             .cin(1'b0),
             .sum(low),
             .cout(cout)
    );
    add16 A2(.a(a[31:16]),
             .b(b[31:16]),
             .cin(cout),
             .sum(high),
             .cout(1'b0)
    );
    assign sum={high,low};

endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

// Full adder module here
	assign sum=a^b^cin;
    assign cout=a&b | a&cin | b&cin;
endmodule
