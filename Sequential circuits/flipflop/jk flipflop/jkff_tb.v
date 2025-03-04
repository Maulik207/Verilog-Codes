`include "jkff.v"

module jkff_tb;

reg j;
reg k;
reg clk;
reg reset;
wire q;
wire q_bar;

jkff uut (.j(j),.k(k),.clk(clk),.reset(reset),.q(q),.q_bar(q_bar));

initial begin

$monitor("[%0t] clk=%0b reset=%b j=%b k=%b q=%b q_bar=%b",$time, clk, reset, j, k, q, q_bar);

j = 0;k = 0;clk = 0;reset = 0;
#5;  //not generate with #10

reset=1;

j=0;k=0;
#10;

j=0;k=1;
#10;

j=1;k=0;
#10;

j=1;k=1;
#10;

j=1;k=1;
#10;
$finish;
end

always #5 clk=~clk;
endmodule
