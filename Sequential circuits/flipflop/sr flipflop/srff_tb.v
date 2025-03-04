`include "srff.v"

module srff_tb;

reg clk=0;
reg rst_n,s,r;
wire q,q_bar;

SR_flipflop uut(.clk(clk),.s(s),.r(r),.rst_n(rst_n),.q(q),.q_bar(q_bar));

always #5 clk=~clk;

initial begin
	
    $monitor("%t s=%b r=%b rst_n=%b q=%b q_bar=%b",$time,s,r,rst_n,q,q_bar);

    clk = 0;
    rst_n = 0;
    s = 0;r = 0;

    #7;


    rst_n=1;

    s=0;r=0;
    #7;

    s=1;r=0;
    #7;

    s=0;r=1;
    #14;

    s=1;r=1;
    #7;

    s=0;r=0;
    #7;


end

endmodule
