module concatenation();
reg [15:0] in;
reg [7:0] a;
reg [7:0] b;
reg [15:0] out;
reg [1:0] i1,i2;
reg [3:0] i3;

	initial begin
	
//////////////////////////////////CONCATENATION_OPERATOR///////////////////
	a='b10110110; b='b01011100;
	$display("out=%b",{a[5:2],b[4:1],2'b1010});

	i1 = 2'h2; i2 = 2'h3;
   	i3 = 4'h8;

	$display("out = %b", {i3, i2, i1}); //1000 11 10
        $display("out = %b", {i3, i2, 2'b11}); //1000 11 11
        $display("out = %b", {i3, i2[1], 1'b1, i1[0]}); //1000 1 1 0

///////////////////////////////REPLICATION//////////////////////////////
	$display("Replication");
	$display("out =%b", { {4{i3[3]}} ,{4{i1[0]}} , 4'b1010});


	end

endmodule
