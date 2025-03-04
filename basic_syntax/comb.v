/*
single output signal 'z' which is of type 'reg'....that gets updated whenever one of the signals in the sensitivity list changes its value.    */


module comb(
input a,b,c,d,e,
output reg z);

always @(*) begin
z=((a&b) | (c^d) & !e);
end

endmodule
