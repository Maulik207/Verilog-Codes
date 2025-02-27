`include "Fulladder.v"

module fa_tb;

// Declare variables that need to be connected to the design instance
/* These variables have assigned some values and that gets transferred to the design as inputs because they are connected with the ports in the design */
reg a,b,c;
wire carry,sum;
integer i;

//Instantiate the design module and connect the variables declared above with the ports in the design
fa uut(.a(a),.b(b),.c(c),.carry(carry),.sum(sum));

initial begin

{a,b,c}=0;
$monitor("a=%b b=%b c=%b carry=%b sum=%b",a,b,c,carry,sum);

	for(i=0;i<8;i=i+1)begin
		{a,b,c}=i;
		#10;
	end

end

endmodule
