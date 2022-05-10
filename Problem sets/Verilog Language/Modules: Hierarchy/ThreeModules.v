module top_module ( input clk, input d, output q );
	wire q1,q2;
    my_dff F1(clk,d,q1);
    my_dff F2(clk,q1,q2);
    my_dff F3(clk,q2,q);
endmodule
