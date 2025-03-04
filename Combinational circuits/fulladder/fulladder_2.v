module fulladder(
input a,b,c,
output reg sum,cout);

always @(a or b or c)begin   //aama "|" nai chale bcoz ee bitwise che
			     //"or" etle use karyu ke ee logical che 
	{cout,sum}=a+b+c;
end

endmodule
