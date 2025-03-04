`include "dff.v"

module dff_tb;

    reg [2:0] d;
    reg rst_n;
    reg clk=0;
    wire [2:0]q;

    d_ff uut (.q(q),.d(d),.rst_n(rst_n),.clk(clk));

   
    always #5 clk = ~clk;

    
    initial begin
        
	$monitor("[%0t][MON]--->[clk=%0d] rst_n=%0d d=%0d q=%0d",$time, clk, rst_n, d, q);
        d = 0;
        rst_n = 1;
        clk = 0;
        //$display("[%0t][1]--->d=%0d rst=%0d q=%0d",$time, d, rst_n, q);
	#10;

        rst_n = 0;

        d = 4;
        //$display("[%0t][2]--->d=%0d rst=%0d q=%0d",$time, d, rst_n, q);
	#10;
        d = 2;
        //$display("[%0t][3]--->d=%0d rst=%0d q=%0d",$time, d, rst_n, q);
	#10;
        d = 3;
        //$display("[%0t][4]--->d=%0d rst=%0d q=%0d",$time, d, rst_n, q);
	#10;
        d = 6;
        //$display("[%0t][5]--->d=%0d rst=%0d q=%0d",$time, d, rst_n, q);
    #10;

        $finish;
    end

   
endmodule
