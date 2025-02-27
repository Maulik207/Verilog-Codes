module fullsubtractor(
    input a,        
    input b,           
    input bin,         
    output diff,    // Difference output (a - b - bin)
    output bout     // Borrow out
);

       assign diff = a ^ b ^ bin;

       assign bout = (~a & b) | (~a & bin) | (b & bin);

endmodule
