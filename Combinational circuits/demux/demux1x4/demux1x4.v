module demux1x4(
input in,s1,s0,
output reg y0,y1,y2,y3);

always @(*)begin
case({s1,s0})
	2'b00: y0=in;
	2'b01: y1=in;
	2'b10: y2=in;
	2'b11: y3=in;
	default: {y0,y1,y2,y3}=0;
endcase

end

endmodule
