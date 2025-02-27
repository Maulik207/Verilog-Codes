`include "mux2x1.v"

module mux2x1_tb;

reg i0,i1,s;
wire y;
integer i;

mux2x1_gl uut(.i0(i0),.i1(i1),.s(s),.y(y));

initial begin
for(i=0;i<8;i=i+1)begin
	$monitor("%t i0=%b i1=%b s=%b y=%b",$time,i0,i1,s,y);
	{i0,i1,s}=i;
	#10;
end

end

endmodule
