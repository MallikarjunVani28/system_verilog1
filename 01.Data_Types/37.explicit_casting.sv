// Demonstrate explicit casting.
module tb;
  int a;
  byte b;
  initial begin
   
    b = 11;
    
    // byte to int 
    
    a = byte'(b);
    
    $display("a = %b",a);
    
    // int to byte
     a = 25;
    
    b = int'(a);
    
    $display("b = %b",b);
    
  end
endmodule
    
