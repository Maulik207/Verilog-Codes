`include "halfadder_2.v"

module halfadder_tb;
reg a,b;
wire sum,cout;
integer i;

ha uut(.a(a),.b(b),.sum(sum),.cout(cout));

initial begin

a=0;b=0;

$monitor("%t a=%b,b=%b,sum=%b,cout=%b",$time,a,b,sum,cout);

for(i=0;i<4;i=i+1)begin
	{a,b}=i;
	#10;       //Delay bhulvanu nai neto 00,01,10 etlu fast thse ke avsej nai output maa ane sidhu 11 nu karine apse
end

end

endmodule
