`include "tff_dff.v"
module q_tb();
	reg t,clk,rst;
	wire q;
	
	q4 dut(t,clk,rst,q);
	initial begin rst=1; clk=0; end
    
    initial t=0;
    always #5 t=~t;
 
	always #5 clk=~clk;
	initial begin
		$monitor("[%0t]-->clk=%b rst=%b T=%b q=%b",$time, clk, rst, at, q);
		#10 rst=0;
		#50 rst=1;
		#2 $finish;
	end
endmodule
