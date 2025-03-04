//gate level modelling

module mux4x1_gl(
input a,b,c,d,s1,s0,
output y);

wire w1,w2,w3,w4;

and(w1,~s1,~s0,a);
and(w2,~s1,s0,b);
and(w3,s1,~s0,c);
and(w4,s1,s0,d);
or(y,w1,w2,w3);

endmodule
