//structural modelling

`include "decoder_lower.v"

module decoder4x16 (
    input [3:0] in,    
    output [15:0] out);

// Intermediate wires for the outputs of the 3x8 decoders
wire [7:0] out_lower;
wire [7:0] out_upper;

decoder3x8 upper_decoder (
    .in(in[2:0]),
    .en(in[3]),          // Enable when MSB is 1
    .out(out_upper)
);

decoder3x8 lower_decoder (
    .in(in[2:0]),
    .en(~in[3]),         // Enable when MSB is 0
    .out(out_lower)
);

// Combine the outputs to form the 16-bit output
assign out = {out_upper, out_lower};

endmodule
