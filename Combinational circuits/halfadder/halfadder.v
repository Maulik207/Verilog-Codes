module halfadder(
    input  a,      // 1-bit input a
    input  b,      // 1-bit input b
    output sum,   // 1-bit sum output
    output carry  // 1-bit carry output
);

        assign sum = a ^ b;

        assign carry = a & b;

endmodule
