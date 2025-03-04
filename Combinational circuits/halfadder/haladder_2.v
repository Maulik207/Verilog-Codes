//Illegal reference to net-->means it should be reg while declaring
//when you're trying to assign a value to a net in an inappropriate way

module ha(
input a,b,
output reg sum,cout);

always @(a or b)begin
	{cout,sum}=a+b;
end

endmodule
