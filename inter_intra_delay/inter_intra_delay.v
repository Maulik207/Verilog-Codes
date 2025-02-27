// inter and intra delay example che aama
module test;
  reg a,b,c,d,q;
  
  initial begin
    $monitor("t=%0d a=%b b=%b c=%b d=%b q=%b",$time,a,b,c,d,q);
    
    a<=0;
    b<=0;
    c<=0;
    d<=0;
    q<=0;
    
   
    #5  a<=1;
    	c<=1;
    
       
    #5 q<=(a&b) | c;   //(parenthesis)--->output avse pn waveform maa problem thase agar hatai nakhis toh

    #20;
  end
  
  initial begin
   // $dumpfile("dump.vcd");$dumvars;
  end
  
endmodule
