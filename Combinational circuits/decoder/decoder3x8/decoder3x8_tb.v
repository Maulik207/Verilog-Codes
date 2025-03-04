`include "decoder3x8.v"

module decoder3x8_tb;

reg [2:0]in;
wire [7:0]out;

decoder3x8 uut(.in(in),.out(out));

initial begin
$monitor("in=%b out=%b",in,out);

in=3'b010;
#10;

in=3'b101;
#10;

in=3'b110;
#10;

in=3'b001;
#10;

end

endmodule
