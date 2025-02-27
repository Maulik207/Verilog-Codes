`include "fullsubtractor.v"

module fullsubtractor_tb;
    reg a;
    reg b;
    reg bin;
    wire diff;
    wire bout;

    // Instantiate the full_subtractor module
    fullsubtractor uut (
        .a(a),
        .b(b),
        .bin(bin),
        .diff(diff),
        .bout(bout)
    );

    initial begin
       
        a = 0; b = 0; bin = 0; 
	#10;
        $display("%b %b  %b  |  diff= %b   bout= %b", a, b, bin, diff, bout); 

        a = 0; b = 0; bin = 1; 
	#10;
        $display("%b %b  %b  |  diff= %b   bout= %b", a, b, bin, diff, bout); 

        a = 0; b = 1; bin = 0; 
	#10;
        $display("%b %b  %b  |  diff= %b   bout= %b", a, b, bin, diff, bout); 

        a = 0; b = 1; bin = 1; 
	#10;
        $display("%b %b  %b  |  diff= %b   bout= %b", a, b, bin, diff, bout); 

        a = 1; b = 0; bin = 0; 
	#10;
        $display("%b %b  %b  |  diff= %b   bout= %b", a, b, bin, diff, bout); 

        a = 1; b = 0; bin = 1; 
	#10;
        $display("%b %b  %b  |  diff= %b   bout= %b", a, b, bin, diff, bout); 

        a = 1; b = 1; bin = 0; 
	#10;
        $display("%b %b  %b  |  diff= %b   bout= %b", a, b, bin, diff, bout); 
        a = 1; b = 1; bin = 1; 
	#10;
        $display("%b %b  %b  |  diff= %b   bout= %b", a, b, bin, diff, bout); 

    end

endmodule
