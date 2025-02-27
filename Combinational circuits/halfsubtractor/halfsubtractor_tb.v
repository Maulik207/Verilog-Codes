`include "halfsubtractor.v"

module halfsubtractor_tb;
    reg a;
    reg b;
    wire diff;
    wire borrow;

    // Instantiate the half_subtractor module
    halfsubtractor uut (
        .a(a),
        .b(b),
        .diff(diff),
        .borrow(borrow)
    );

    initial begin
                
        a = 0; b = 0; 
	#10;
        $display("%b %b |  diff= %b    borrow= %b", a, b, diff, borrow); 

        a = 0; b = 1; 
	#10;
        $display("%b %b |  diff= %b    borrow= %b", a, b, diff, borrow);

        a = 1; b = 0; 
	#10;
        $display("%b %b |  diff= %b    borrow= %b", a, b, diff, borrow);

        a = 1; b = 1; 
	#10;
        $display("%b %b |  diff= %b    borrow= %b", a, b, diff, borrow); 

    end

endmodule
