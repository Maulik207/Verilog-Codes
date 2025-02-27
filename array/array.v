module mem();
reg [7:0] y1;
reg [7:0] y2 [0:2];
reg [7:0] y3 [0:3][0:2];


integer i,j;
initial begin
y1 = 8'd15;
$display("y1=%0d",y1);

y2[0]=8'ha1;
y2[1]=8'haa;
y2[2]=8'o32;

for(i=0;i<3;i=i+1)
begin
 $display("y2[%0d]=%0h",i,y2[i]);
end

for(i=0;i<4;i=i+1)
begin
	for(j=0;j<3;j=j+1)
	begin
		y3[i][j]=i+j;
		$display("y3[%0d][%0d]=%0d",i,j,y3[i][j]);
	end
end

end
endmodule
