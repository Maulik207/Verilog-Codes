module mux4x1(
input a,b,c,d,s1,s0,
output reg y);

always @(*)begin
case({s1,s0})
	2'b00: y=a;
	2'b01: y=b;
	2'b10: y=c;
	2'b11: y=d;
endcase

// assign y=s1?(s0?d:c):(s0?b:a);........s1=msb and s0=lsb
end

endmodule
