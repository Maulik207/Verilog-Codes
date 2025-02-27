//We want to initialize 16-bit counter to count from 0 to 15 in a clock cycle.
/*We can use replication operator to create a bit pattern....that represents the binary values from 0 to 15 bit*/

module counter(
input clk,
output reg [15:0] count);

initial begin
count={16{1'b0}};
end

always @(posedge clk)begin
$monitor("count=%d",count);
count=count+1;
end


endmodule
