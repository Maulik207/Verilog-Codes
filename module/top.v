`include "instantiate_module.v"

module top;
reg d;
reg clk;
reg rst;
wire [3:0] q;

shift uut(.d(d),.clk(clk),.rst(rst),.q(q));

initial begin

clk=0; rst=1; d=0;

$monitor($time,"clk=%b,rst=%b,d=%b,q=%b",clk,rst,d,q);
rst=1;
#10;

rst=0;
d=1; #10;
d=0; #10;
d=1; #10;
d=0; #10;
$finish;

end

 initial begin
    $dumpfile("dump.vcd");$dumpvars;
  end

always #5 clk=~clk;

endmodule
