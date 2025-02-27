`include "mux.v"

module mux_tb;
    reg [3:0] a;
    reg [3:0] b;
    reg sel;
    wire [3:0] y;

    // Instantiate the mux2x1 module
    mux2x1 uut (.a(a),.b(b),.sel(sel), .y(y));

    initial begin
        // Test case 1: sel = 0, expect y = a
        a = 4'hA; // a = 1010
        b = 4'h5; // b = 0101
        sel = 1'b0;
        #10;
        $display("sel = %b, a = %h, b = %h, y = %h", sel, a, b, y); // Expected output: y = a (1010)

        // Test case 2: sel = 1, expect y = b
        sel = 1'b1;
        #10;
        $display("sel = %b, a = %h, b = %h, y = %h", sel, a, b, y); // Expected output: y = b (0101)
    end
endmodule
