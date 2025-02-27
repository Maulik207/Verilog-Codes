			//"DATA TYPES"
//Types;- net & variable

/*"Different types of values"
0--->Logic zero 
1--->Logic one
x--->Unknown value  //At particular moment
z--->High-impedance //Circuit is incomplete or wire is not connected


'NET'--->(Don't hold the value)
'REG'--->(Able to hold the value, till it's override)   //same as a variable in c-language

wire a;        //net as a scaler
wire [3:0] a;  //net as a vector

reg a;	       //single-bit register	
reg [3:0] a;   //reg as a vector


				"STRINGS"

//stored in 'reg'
//1-bye for each character*/

module testbench;   //Printing 'hello world'----->11 bytes
reg [8*11:1] str1;
reg [8*20:1] str2;
reg [8*5:1] str3;

initial begin

str1="Hello world";
str2="Hello world";
str3="Hello world";

$display("str1=%s",str1);   //str1="Hello World"
$display("str2=%s",str2);   //str2="         Hello World"   "Padded with zeros"
$display("str3=%s",str3);   //str3="World"		    "Rest is truncated"

end
endmodule
