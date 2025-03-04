//dataflow modelling

module mux2x1_df(
input i0,i1,s,
output y);

assign y=(!s & i0) | (s & i1);

endmodule
