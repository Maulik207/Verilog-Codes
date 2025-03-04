module q4(
	input T,clk,rst,
	output q
);
	wire x;
	//assign x=T^q;
	qd dut((T^q),clk,rst,q);
endmodule
 
module qd(
	input D,clk,rst,
	output reg q
);
	always@(posedge clk) q=rst?0:D;
endmodule
