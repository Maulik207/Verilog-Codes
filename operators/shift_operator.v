module shift();

reg [7:0]i1,o1;
reg signed [7:0]s2,o2;

initial begin

//Logical shift
i1=8'b1010_0101;
o1=i1>>3;
$display("%b (>>) by 3=%b",i1,o1);

i1=o1;
o1=i1<<2;
$display("%b (<<) by 2=%b",i1,o1);

//arithmetic shift
s2=8'b1010_0101;
o2=s2>>>3;
$display("%b (>>>) by 3=%b",s2,o2);

s2=o2;
o2=s2<<<3;
$display("%b (<<<) by 3=%b",s2,o2);


end

endmodule
