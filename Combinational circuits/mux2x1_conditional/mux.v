
module mux2x1(
    input wire [3:0] a,   // 4-bit input a
    input wire [3:0] b,   // 4-bit input b
    input wire sel,       // Select signal
    output reg [3:0] y    // 4-bit output y
);

    always @(*) begin
               y = (sel) ? b : a;
    end

endmodule
