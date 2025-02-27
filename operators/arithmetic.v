							//OPERATORS--------------->Form of calculation for digital circuit 

//Types:- Arithmetic, Relational, Equality, Logical, Bitwise, Shift

/*
Arithmetic:-(+,-,*,/,%,**)

a + b	a plus b
a - b	a minus b
a * b	a multiplied by b
a / b	a divided by b               //if b=0.....output=x
a % b	a modulo b		     //if b=0.....output=x
a ** b	a to the power of b  */      //a^b.........if b=0.......output=1

/*
Relational:-(>,<,>=,<=)        
			       if expression is true then output=1......if expression if false then output=0  
			       if any operand is X or Z.....output=X

a < b	a less than b       
a > b	a greater than b
a <= b	a less than or equal to b
a >= b	a greater than or equal to b  */

/*
Equality:-(===,!==,==,!=)      
				result=1 if true.......result=0 if false        bit-by-bit comparison

a === b	a equal to b, including x and z--------------->case equality
a !== b	a not equal to b, including x and z----------->case equality
a == b	a equal to b, result can be unknown----------->equality
a != b	a not equal to b, result can be unknown------->inequality     */

/*
Logical:-(&&,||,!)
			
a && b	evaluates to true if a and b are true--------------->result=1/true....if both the operands are true/non-zero
							    >if any of the operand is x then the result=x
a || b	evaluates to true if a or b are true---------------->result=1/true....if any of the operand is true/non-zero
							    >if any of the operand is x then the result=x
!a	Converts non-zero value to zero, and vice versa-----> makes true into false and vice-versa........x remains x  */



module arithmetic();  //Je base naa format maa lakhye internally toh binary maa convert j thase and output apda base naa format pramane dekhadse
  reg [4:0] d1,d2;
  
  initial begin
    d1=4'ha;
    d2=4'h7;
    
    $display("addition=%h",d1+d2);
    $display("subtraction=%h",d1-d2);
    $display("mul=%h",d1*d2);
    $display("division=%h",d1/d2);
    $display("mod=%h",d1%d2);
    $display("power=%b",d2**3);
             
  end
endmodule
