`include "fulladder.v"

module fulladder_tb;
    reg a;
    reg b;
    reg cin;
    wire sum;
    wire cout;

    // Instantiate the full_adder module
    fulladder uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin

	$display("        | sum   carry");
        a = 0; b = 0; cin = 0; 
	#10;		
        $display("%b %b  %b  |  %b   %b", a, b, cin, sum, cout); 

        a = 0; b = 1; cin = 0; 
	#10;
        $display("%b %b  %b  |  %b   %b", a, b, cin, sum, cout); 

        a = 1; b = 0; cin = 0; 
	#10;
        $display("%b %b  %b  |  %b   %b", a, b, cin, sum, cout); 

        a = 1; b = 1; cin = 0; 
	#10;
        $display("%b %b  %b  |  %b   %b", a, b, cin, sum, cout);

        a = 0; b = 0; cin = 1; 
	#10;
        $display("%b %b  %b  |  %b   %b", a, b, cin, sum, cout); 

        a = 0; b = 1; cin = 1; 
	#10;
        $display("%b %b  %b  |  %b   %b", a, b, cin, sum, cout); 

        a = 1; b = 0; cin = 1; 
	#10;
        $display("%b %b  %b  |  %b   %b", a, b, cin, sum, cout);

        a = 1; b = 1; cin = 1; 
	#10;
        $display("%b %b  %b  |  %b   %b", a, b, cin, sum, cout);     
	
	end
endmodule
