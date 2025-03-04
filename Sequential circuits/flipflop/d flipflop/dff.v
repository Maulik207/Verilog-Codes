module d_ff(
    input [2:0] d,
    input rst_n,
    input clk,
    output reg [2:0] q
);

    always @(posedge clk) begin
        if (rst_n)begin
            $display("[%0t][IF]-->[clk=%0d][RESET=%0d]",$time, clk, rst_n);
            q <= 0;
            $display("[%0t][IF-2]--->[clk=%0d][rst_n=%0d][q<=0][q-->%0d]",$time,clk, rst_n, q);
            $display("-------------------------------------------------------------------");
        end
        else begin
            $display("[%0t][ELSE]--->[clk=%0d][rst_n=%0d][d=%0d]",$time,clk,rst_n,d);
            q <= d;
            $display("[%0t][ELSE-2]--->[clk=%0d][q<=d][q-->%0d][d-->%0d]",$time,clk,q,d);
            $display("-------------------------------------------------------------------");
        end
    end
  
endmodule
