
module operators();
  reg [7:0] data1;
  reg [7:0] data2;
  
  initial begin
    //arithmetic
    data1=12; data2=4;
    $display("%0d + %0d = %0d",data1,data2,data1+data2);
    $display("%0d - %0d = %0d",data1,data2,data1-data2);
    $display("%0d * %0d = %0d",data1,data2,data1*data2);
    $display("%0d / %0d = %0d",data1,data2,data1/data2);
    data1=3; $display("%0d ** %0d = %0d",data1,data2,data1**data2);
    data2=5; $display("%0d %% %0d = %0d",data1,data2,data1%data2);
    
    //equality
    data1=8; data2=8;
    $display("%0d == %0d = %0d",data1,data2,data1==data2);
    
    data1='b10x0; data2='b10xx;
    $display("%0b === %0b = %0b",data1,data2,data1===data2);
    $display("%0b !== %0b = %0b",data1,data2,data1!==data2);
    
    data1='bx010; data2='bx010;
    $display("%0b == %0b = %0b",data1,data2,data1==data2);
    $display("%0b != %0b = %0b",data1,data2,data1!=data2);
    $display("%0b !== %0b = %0b",data1,data2,data1!==data2);
    
    //logical
    						//&&
    data1=4; data2=9; $display("%0d && %0d = %0d",data1,data2,data1 && data2);
    data1=7; data2=0; $display("%0d && %0d = %0d",data1,data2,data1 && data2);
    data1='b10xz; data2=5; $display("%0b && %0d = %0b",data1,data2,data1 && data2);
    data1='dx; data2=6; $display("%0d && %0d = %0d",data1,data2,data1 && data2);
    
    						//logical OR
    
    data1=4; data2=9; $display("%0d || %0d = %0d",data1,data2,data1 || data2);
    data1=7; data2=0; $display("%0d || %0d = %0d",data1,data2,data1 || data2);
    data1='b10xz; data2=5; $display("%0b || %0d = %0b",data1,data2,data1 || data2);
    data1='dx; data2=6; $display("%0d | %0d = %0d",data1,data2,data1 || data2);
    
    						//negation
    data1=4; $display("%d",!data1);
    data2=0; $display("%d",!data2);
    
    //bitwise
    data1 = 4'h6; data2 = 4'h2;
    $display("%b &  %b: %h", data1, data2, data1 & data2);
    $display("%b |  %b: %h", data1, data2, data1 | data2);
    $display("%b ^  %b: %h", data1, data2, data1 ^ data2);
    $display("~%b: %h", data1, ~data1);
    $display("%b ~^ %b: %h", data1, data2, data1 ~^ data2);
    
  end
  
endmodule
