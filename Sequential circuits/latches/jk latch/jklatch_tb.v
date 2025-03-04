`include "jklatch.v"

module jklatch_tb;
    reg J;
    reg K;
    reg En;
    wire Q;

    jklatch_behavioral uut (.J(J),.K(K),.En(En),.Q(Q));

    initial begin
	$monitor("Time = %0t : J = %b, K = %b, En = %b, Q = %b", $time, J, K, En, Q);

        J = 0; K = 0; En = 0;
        #10; 
	En = 1; 
	J = 1; K = 0;  	    	// Set
        #10; 
	J = 0; K = 1;           // Reset
        #10; 
	J = 1; K = 1;           // Toggle
        #10; 
	J = 0; K = 0;           // No change
        #10;
    end

endmodule
