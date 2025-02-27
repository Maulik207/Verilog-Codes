module halfsubtractor(
    input a,        
    input b,        
    output diff,    // Difference output (a - b)
    output borrow   // Borrow output
);

    assign diff = a ^ b;

    assign borrow = ~a & b;

endmodule
