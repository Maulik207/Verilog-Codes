				"COMMENT"
//single line comment

//Hello
//Hey
/////////////This is Valid

//Multiple line comment

/*This is
multiple
line
comment*/

/* In this /*
nested comment
is invalid*/

				"Operators"

//3 types of operators:- unary,binary, and ternary or conditional

x=~y;         // ~-->Unary operator and y is operand
x=a|b;        // |-->Binary operator, a & b are operands
x=(a>4)?c:d;  // ?:-->Ternary or relational operators, if the condition is true x=c; and if condition is false x=d;


				"Number Format"

//Different types of radix-->Decimal,Binary, Octal, Hexadecimal

//Verilog by-default treats the number as a decimal

//Ways to represent number--->sized and unsized

3'b010;  //sized
3'd10;   //sized

'd25;    //unsized
int a = 'b0101;  //unsized....int is 32-bit so size of a is 32-bit

-3'b010;  //negative number.....[-] sign should be before the size
