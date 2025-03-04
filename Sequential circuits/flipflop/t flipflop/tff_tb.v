`include "tff.v"

module tff_tb;

reg t,rst;
reg clk=0;
wire q,qbar;

tff uut(.t(t),.clk(clk),.rst(rst),.q(q),.qbar(qbar));

always #5 clk=~clk;

initial begin
$monitor("[%0t] clk=%0b rst=%b t=%b q=%b qbar=%b",$time, clk, rst, t, q, qbar);

t=0;rst=0;
#5;

rst=1;

t=1;
#10;

rst=0;

t=0;
#10;

t=1;
#10;

t=1;
#10;

t=0;
#10;

t=1;
#10;
$finish;
end

endmodule
