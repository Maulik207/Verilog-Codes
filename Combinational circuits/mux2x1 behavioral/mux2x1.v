//behavioral modelling

module mux2x1_bm(
input a,b,s,
output reg y);

/*always @(*)begin
	if(s) 
		y=a;
	else
		y=b;
end  */

always @(*)begin
case(s)
	1'b0 : y=a;
	1'b1 : y=b;
endcase



end


endmodule
