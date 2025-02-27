//<result> = <expression like a=b > ? <True> : <False>

/*
X (ambiguous ) then both <true_expression> and <false_expression> are evaluated and their results are compared bit by bit. Each bit position of outcome is returned as 
a. bit value if both bits are the same.
b. X if bit value differs.  */



module conditional();
reg [3:0]a;
reg [3:0]b;
reg [3:0]result;

	initial begin

		a=4'h8; b=4'h4;
	$display("a=%d and b=%d",a,b);
	result=(a>b)? a : b;
	$display("result=%d",result);	//True_expression

		a='h3; b='h3;
	$display("a=%d and b=%d",a,b);
	result=(a>b)? a : ("Hello");
	$display("result=%b",result);	//False-expression

		a='b1x00; b='b0100;
	$display("a=%b and b=%b",a,b);
	result=(a>b)? (a&b) : (a|b);
	$display("result=%b",result);	        // The outcome is ambiguous then both <true_expression> and <false_expression>
   						// will be evaluated and compared to compute outcome
   						// <true_expression>  = a & b = 4'b0x00        ----------->Use of bitwise operaator
    					       	// <false_expression> = a | b = 4'b1x00
    						// result = xx00;	

	end

endmodule
