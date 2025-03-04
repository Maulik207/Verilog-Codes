module tff(
input t,clk,rst,
output reg q,
output qbar);

always @(posedge clk) begin

	if(rst)
		q<=0;
	else begin
		case(t)
			1'b0: q <= q;
			1'b1: q <= ~q;
			default: q<=0;
		endcase
	end

end
assign qbar = ~q;

endmodule
