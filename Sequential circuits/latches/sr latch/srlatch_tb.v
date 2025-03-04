`include "srlatch.v"

module srlatch_tb;

reg s;
reg r;
reg e;

wire q;
wire qbar;

srlatch_gateprimitive uut (.q(q),.qbar(qbar),.s(s),.r(r),.e(e));

initial begin

$monitor("s=%b r=%b q=%b qbar=%b",s,r,q,qbar);

s = 0;r = 0;e = 0;  //reset karyu
#10;

e=1;
#10;

s = 0;r = 0;
#10;

s = 0;r = 1;
#10;

s = 1;r = 0;
#10;

s = 1;r = 1;
#10;

s = 0;r = 1;
#10;

s = 0;r = 0;
#10;

end

endmodule
