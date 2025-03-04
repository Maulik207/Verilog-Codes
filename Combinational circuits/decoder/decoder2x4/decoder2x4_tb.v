`include "decoder2x4.v"

module decoder2x4_tb;

reg [1:0]in;
wire [3:0]out;

decoder2x4 uut(.in(in),.out(out));

initial begin

$monitor("in=%b out=%b",in,out);

in=2'b00;
#10;

in=2'b10;
#10;

in=2'b01;
#10;

in=2'b11;
#10;

in=2'b01;
#10;

in=2'b10;
#10;


end

endmodule
