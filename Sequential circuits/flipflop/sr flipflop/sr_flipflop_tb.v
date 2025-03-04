`include "sr_flipflop.v"
module srff_tb;

reg s;
reg r;
reg clk=0;
reg reset=0;
wire q;
wire qbar;

srff uut(.s(s),.r(r),.clk(clk),.reset(reset),.q(q),.qbar(qbar));
always #5 clk=~clk;

initial begin

$monitor($time,"s=%b,r=%b,q=%b,qbar=%b",s,r,q,qbar);
s=0;r=0;
#5;
s=0;r=1;
#10;
s=1;r=0;
#10;
s=1;r=1;
#10;
$finish;
end

initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
end
endmodule
       
