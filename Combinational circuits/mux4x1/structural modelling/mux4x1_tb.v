`include "mux4x1.v"

module mux4x1_tb;

reg [3:0]d;
reg [1:0]sel;
wire y;
integer i;

mux4x1 uut(.d(d),.sel(sel),.y(y));

initial begin
$monitor("d=%b sel=%b y=%b",d,sel,y);

d=4'b1010; sel=2'b10;
#10;

d=4'b0110; sel=2'b00;
#10;

d=4'b1110; sel=2'b01;
#10;

d=4'b1000; sel=2'b10;
#10;

d=4'b1011; sel=2'b11;
#10;

end

endmodule
