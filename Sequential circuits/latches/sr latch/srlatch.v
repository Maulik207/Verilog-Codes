
module srlatch_gateprimitive(
input s,r,e,
output q,qbar);

wire r1,s1;
nand n1(r1,r,e);
nand n2(s1,s,e);
nand n3(q,s1,qbar);
nand n4(qbar,r1,q);

endmodule
