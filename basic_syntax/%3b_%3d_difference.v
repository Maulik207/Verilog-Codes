module print_values;
        reg [7:0] binary_number; // 8-bit binary number
        integer integer_number;  // Integer number

	integer a;
	integer b;
	reg [7:0] c;
	integer d;
	integer e;
	integer f;

    initial begin
        
        binary_number = 8'b10101100; // Random 8-bit binary number
        // Assign an integer number
        integer_number = 12345;

	a=1325; 
    	b=   1234; 
    	c=8'b11101011;
    	d=   2132;
    	e=12345678;
    	f=12345678;


        // Display the values with different format specifiers
        $display("Binary number (8 bits): %b", binary_number);
        $display("Integer number: %d", integer_number);				//Don't know why it's taking the space
        
        // Display values with field width 3
        $display("Binary number (3-bit width): %3b", binary_number); // Entire binary number
        $display("Integer number (3-digit width): %3d", integer_number);	

	$display("a=%d",a);
	$display("b=%0d",b);
	$display("c=%3b",c);
	$display("d=%03d",d);
	$display("e=%6d",e);			
    end
endmodule


