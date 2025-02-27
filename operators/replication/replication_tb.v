`include "replication.v"

module replication_tb;
reg clk=0;
wire [15:0] count;

counter uut(.clk(clk),.count(count));

initial begin

$monitor("time=%0t,clk=%b,count=%d",$time,clk,count);
$finish;
end

assign #5 clk=~clk;

endmodule
