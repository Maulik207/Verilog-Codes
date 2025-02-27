module all_gates_tb;

reg a,b;
wire and_out,or_out,not_out,nand_out,nor_out,xor_out,xnor_out;

all_gates uut(.a(a),.b(b),.and_out(and_out),
		.or_out(or_out),.not_out(not_out),
		.nand_out(nand_out),.nor_out(nor_out),
		.xor_out(xor_out),.xnor_out(xnor_out));

initial begin
a=0;b=0;
#10;

a=0;b=0;
#10;

a=0;b=1;
#10;

a=1;b=0;
#10;

a=1;b=1;
#10;

end

initial begin
$monitor("At time=%t: a=%b,b=%b,and_gate=%b,or_gate=%b,not_gate=%b,nand_gate=%b,nor_gate=%b,xor_gate=%b,xnor_gate=%b",$time,a,b,and_out,or_out,not_out,nand_out,nor_out,xor_out,xnor_out);
end

initial begin
 $dumpfile("dump.vcd"); $dumpvars;
end

endmodule

