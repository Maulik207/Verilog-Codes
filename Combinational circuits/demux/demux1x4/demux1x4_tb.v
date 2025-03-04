`include "demux1x4.v"

module demux1x4_tb;

reg in,s1,s0;
wire y0,y1,y2,y3;
integer i;

demux1x4 uut(.in(in),.s1(s1),.s0(s0),.y0(y0),.y1(y1),.y2(y2),.y3(y3));

initial begin
$monitor("in=%b s1=%b s0=%b y0=%b y1=%b y2=%b y3=%b",in,s1,s0,y0,y1,y2,y3);

for(i=0;i<8;i=i+1)begin
	{in,s1,s0}=i;
	#10;
end

end

endmodule
