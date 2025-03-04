module encoder8x3 (
    input wire [7:0] in,    
    output reg [2:0] out);

always @(*) begin
    
    out = 3'b000;

    case (in)
        8'b0000_0001: out = 3'b000;  // in[0] active
        8'b0000_0010: out = 3'b001;  // in[1] active
        8'b0000_0100: out = 3'b010;  // in[2] active
        8'b0000_1000: out = 3'b011;  // in[3] active
        8'b0001_0000: out = 3'b100;  // in[4] active
        8'b0010_0000: out = 3'b101;  // in[5] active
        8'b0100_0000: out = 3'b110;  // in[6] active
        8'b1000_0000: out = 3'b111;  // in[7] active
        default: out = 3'bxxx;       // Invalid input...agar multiple bits active thai gaya toh
    endcase
end

endmodule
