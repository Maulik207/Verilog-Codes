`include "tlatch.v"

module tlatch_behavioral_tb;
    reg T;
    reg En;
    wire Q;

tlatch_behavioral uut (.T(T),.En(En),.Q(Q));

    initial begin
       
	$monitor("[%0t] : En=%0b T=%0b Q = %b", $time, En, T, Q);

        T = 0; En = 0;
        #5; 
	En = 1; 
	T = 1;  	// Toggle
        #10; 
	T = 0;          // Hold
        #10; 
	T = 1;          // Toggle
        #10; 
	T =0;
	#10;
	T = 1;         // Toggle
	#10;
	T = 0;          // Hold
        #10;   

     end

   
endmodule
