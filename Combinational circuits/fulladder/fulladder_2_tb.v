`include "fulladder_2.v"

module fulladder_tb;

reg a,b,c;
wire sum,cout;
integer i;

fulladder uut(.a(a),.b(b),.c(c),.sum(sum),.cout(cout));

initial begin
{a,b,c}=0;

$monitor("%t a=%b,b=%b,c=%b,sum=%b,cout=%b",$time,a,b,c,sum,cout);

for(i=0;i<8;i=i+1)begin
	{a,b,c}=i;
	#10;
end

end

endmodule 
