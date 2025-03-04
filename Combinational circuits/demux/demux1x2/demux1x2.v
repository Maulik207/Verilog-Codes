module demux1x2(
input in,sel,
output reg y0,y1);

always @(*)begin
case(sel)
	1'b0 : y0=in;
	1'b1 : y1=in;
endcase

end

endmodule
