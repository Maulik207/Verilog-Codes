module mux2x1(
input i0,i1,sel,
output reg y);

always @(i0 or i1 or sel) begin
	y=sel?i1:i0;
end

endmodule
