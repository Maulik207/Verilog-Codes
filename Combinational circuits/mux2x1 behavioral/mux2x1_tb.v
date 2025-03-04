`include "mux2x1.v"

module mux2x1_tb;

reg a,b,s;
wire y;
integer i;

mux2x1_bm uut(.a(a),.b(b),.s(s),.y(y));

initial begin
$monitor("a=%b b=%b s=%b y=%b",a,b,s,y);

for(i=0;i<8;i=i+1)begin
	{a,b,s}=i;
	#10;
end

end

endmodule
