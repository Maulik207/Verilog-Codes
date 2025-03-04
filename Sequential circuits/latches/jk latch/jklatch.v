module jklatch_behavioral(
    input J,
    input K,
    input En,
    output reg Q
);
    always @(*) begin
        if (En) begin
            case ({J, K})
                2'b00: Q = Q;   // No change
                2'b01: Q = 0;   // Reset
                2'b10: Q = 1;   // Set
                2'b11: Q = ~Q;  // Toggle
            endcase
        end
    end
endmodule
