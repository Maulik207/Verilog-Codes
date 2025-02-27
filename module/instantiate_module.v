//Instantiating the module 4 times and creating a simple shift-register

`include "module.v"

module shift(input d,clk,rst, output wire [3:0] q);

wire [3:0]w;    //wire declare naa kari ne q nu array banai devanu toh kaik agar pde....pn aa shift register che etle aa joi ej

dff d0(.d(d),.clk(clk),.rst(rst),.q(w[0]));
dff d1(.d(w[0]),.clk(clk),.rst(rst),.q(w[1]));
dff d2(.d(w[1]),.clk(clk),.rst(rst),.q(w[2]));
dff d3(.d(w[2]),.clk(clk),.rst(rst),.q(w[3]));

assign q={w[3],w[2],w[1],w[0]};

endmodule


