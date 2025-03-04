`include "usr.v"

module usr_tb;
	
	reg clk=0;
	reg reset;
	reg [1:0] ctrl;
	reg [3:0] d;
	wire [3:0] q;

	
	usr uut (.clk(clk), .reset(reset), .ctrl(ctrl), .d(d), .q(q));

	initial begin
		
		clk = 0;
		reset = 0;
		ctrl = 0;
		d = 0;
		#10;
		
		$monitor("%t d=%b ctrl=%b reset=%b q=%b",$time,d,ctrl,reset,q);
		d=4'b1001;

		ctrl=2'b11; //parallel loading data=1001
		#10;

		ctrl = 2'b01; //right shifting operation on 1001
		#40;

		ctrl=2'b10; //left shifting operation on 1001
		#40;

		ctrl=2'b00;
		#40;
        
		$finish;
	end
     always #5 clk=~clk; 
endmodule
