module tlatch_behavioral(
    input T,
    input En,
    output reg Q);

    always @(*) begin
	
        if (En) begin
            if (T)
                Q = ~Q;  // Toggle
            else
                Q = Q;   // Hold
        end
	else Q=0;
    end
endmodule
