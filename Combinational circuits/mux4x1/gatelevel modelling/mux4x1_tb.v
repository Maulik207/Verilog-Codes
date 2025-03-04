`include "mux4x1.v"

module mux4x1_tb;

reg a,b,c,d,s1,s0;
wire y;
integer i;

mux4x1_gl uut(.a(a),.b(b),.c(c),.d(d),.s1(s1),.s0(s0),.y(y));

initial begin

for(i=0;i<64;i=i+1)begin
	$monitor("a=%b b=%b c=%b d=%b s1=%b s0=%b y=%b",a,b,c,d,s1,s0,y);
	{a,b,c,d,s1,s0}=i;
	#10;

end

end


endmodule
