`include "mux2x1.v"

module mux2x1_tb;
reg i0,i1,sel;
wire y;
integer i;

mux2x1 uut(.i0(i0),.i1(i1),.sel(sel),.y(y));

initial begin
sel=0;

$monitor("i0=%b i1=%b sel=%b y=%b",i0,i1,sel,y);

for(i=0;i<8;i=i+1)begin
	{i0,i1,sel}=i;
	#10;
end

end

endmodule
