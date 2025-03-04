`include "dlatch.v"

module tb_d_latch_behavioral;
    reg D;
    reg En;
    wire Q;

    dlatch_behavioral uut (.D(D),.En(En),.Q(Q));

    initial begin
        // Initialize inputs
	$monitor("Time = %0t : D = %b, En = %b, Q = %b", $time, D, En, Q);
        D = 0; En = 0;
        #10;
	En = 1; D = 1;
        #10; 
	En = 0;
        #10; 
	En = 1; D = 0;
        #10; 
    end

  endmodule
