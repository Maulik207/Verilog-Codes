`include "halfadder.v"

module halfadder_tb;
    reg a;
    reg b;
    wire sum;
    wire carry;

    // Instantiate the halfadder module
    halfadder uut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    initial begin
        
               a = 0; b = 0; 
	#10;
        $display("%b %b | sum= %b   carry= %b", a, b, sum, carry); //sum = 0, carry = 0

        a = 0; b = 1;
	#10;
        $display("%b %b | sum= %b   carry= %b", a, b, sum, carry); //sum = 1, carry = 0

        a = 1; b = 0; 
	#10;
        $display("%b %b | sum= %b   carry= %b", a, b, sum, carry); //sum = 1, carry = 0

        a = 1; b = 1; 
	#10;
        $display("%b %b | sum= %b   carry= %b", a, b, sum, carry); //sum = 0, carry = 1
    end
endmodule
