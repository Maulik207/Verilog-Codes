`include "encoder8x3.v"

module encoder8x3_tb;

// Testbench signals
reg [7:0] in;          
wire [2:0] out;        

encoder8x3 uut (.in(in),.out(out));

initial begin
    
    $monitor("Time=%0t | in=%b | out=%b", $time, in, out);

    
    in = 8'b0000_0001; 
    #10;  // Expect out = 000
    in = 8'b0000_0010;
    #10;  // Expect out = 001
    in = 8'b0000_0100; 
    #10;  // Expect out = 010
    in = 8'b0000_1000; 
    #10;  // Expect out = 011
    in = 8'b0001_0000; 
    #10;  // Expect out = 100
    in = 8'b0010_0000; 
    #10;  // Expect out = 101
    in = 8'b0100_0000; 
    #10;  // Expect out = 110
    in = 8'b1000_0000; 
    #10;  // Expect out = 111

    // Test invalid input (no or multiple bits active)
    in = 8'b0000_0000; 
    #10;  // Expect out = xxx
    in = 8'b0001_0010; 
    #10;  // Expect out = xxx

   end

endmodule
