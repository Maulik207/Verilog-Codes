module jkff(
input j,k,clk,reset,
output reg q,
output q_bar);

always @(posedge clk)begin
	case({reset,j,k})
		3'b100 : q=q;
		3'b101 : q=0;
		3'b110 : q=1;
		3'b111 : q=~q;
		default : q=0;
	endcase
end

assign q_bar=~q;

endmodule		

