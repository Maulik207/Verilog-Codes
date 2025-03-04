`include "demux1x2.v"

module demux1x2_tb;

reg in,sel;
wire y0,y1;

demux1x2 uut(.in(in),.sel(sel),.y0(y0),.y1(y1));

initial begin
$monitor("in=%b sel=%b y0=%b y1=%b",in,sel,y0,y1);

{in,sel}=0;
#10;

{in,sel}=1;
#10;

{in,sel}=2;
#10;

{in,sel}=3;
#10;
 

end

endmodule
