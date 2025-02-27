//wire ne declare karye ane ee variable apde initial or always block maa use karye toh hmesha assign use karvuj pde bcoz ee continuous assign kre value 
//we can use reg variables we want to assign values in the initial or always block

module array();

wire a;  //scalar net
wire [3:0]a1;   //4-bit vector net
  
reg b;   //scalar reg
reg [7:0] b1;   //8-bit vector reg

reg y[0:7];  //y is an scalar net with the depth of 8.....every are of 1-bit

	assign a =3'b101; 
	 
	assign a1[0]=1; 

	initial begin
		
		$display("a=%b",a);  //a=1 bcoz a is of 1-bit

		/////////////////////////////////////////////////////////////////////////////////////

		$display("Secong_line a1=%b",a1);   //bit select of an array

		///////////////////////////////////////////////////////////////////////////////////////////
		b1=4'd15; $display("First_line b1=%b",b1);

		b1[5:2]=8'h2a; $display("Second_line b1=%b",b1);  //part-select of an array

		//////////////////////////////////////////////////////////////////////////////////////////
		      //y=0;    //Illegal bcoz all elements can't be assigned in single time
		$monitor("y=%p",y);  //unpacked type----can only be printed with %p
		y[0]=1'b0;
		y[2]=1'b0;
		y[4]=1'b1;
		y[6]=1'b1;
		y[7]=1'bx;

	end
endmodule
