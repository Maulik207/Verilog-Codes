//structural maa initial and always block naa ave


`include "mux2x1.v"

module mux4x1(
input [3:0]d,
input [1:0]sel,
output y);

wire w1,w2;

mux2x1 m0(.a(d[0]),.b(d[1]),.sel(sel[0]),.y(w1));
mux2x1 m1(.a(d[2]),.b(d[3]),.sel(sel[0]),.y(w2));
mux2x1 m2(.a(w1),.b(w2),.sel(sel[1]),.y(y));

endmodule
