//DATA-FLOW modelling----.assign


module fulladder(
    input a,       // 1-bit input a
    input b,       // 1-bit input b
    input cin,     // 1-bit carry-in input
    output sum,    // 1-bit sum output
    output cout    // 1-bit carry-out output
);

        assign sum = a ^ b ^ cin;

        assign cout = (a & b) | (b & cin) | (cin & a);

endmodule
