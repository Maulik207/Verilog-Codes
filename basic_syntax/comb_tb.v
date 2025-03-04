/*
a testbench is a platform for simulating the design to ensure that the design does behave as expected    */

//int is not allowed
//integer and int inside the initial block is also not allowed
//integer and int inside the for () is also not allowed


`include "comb.v"

module comb_tb;

//Declare testbench variables
wire z;
reg a,b,c,d,e;
integer i;

//Instantiate the design and connect design input/outputs with testbench variable
comb uut(.z(z),.a(a),.b(b),.c(c),.d(d),.e(e));

initial begin
//At the beginning of the time, initialize all inputs of design to a known value
{a,b,c,d,e}=0;

$monitor("a=%b,b=%b,c=%b,d=%b,z=%b",a,b,c,d,z);

for(i=0;i<32;i=i+1)begin
 {a,b,c,d,e}=i;
#10;
end


end

endmodule 
