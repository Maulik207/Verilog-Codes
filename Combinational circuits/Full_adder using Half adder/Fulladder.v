`include "Halfadder.v"

module fa(
input a,b,c,
output sum,carry);

wire w1,w2;

ha h1(.a(a),.b(b),.carry(w1),.sum(w2));
ha h2(.a(w2),.b(c),.carry(w3),.sum(sum));

or(carry,w1,w3);

endmodule
