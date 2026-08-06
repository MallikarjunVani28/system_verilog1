//Show implicit casting.
module tb;
  int a;
  byte b;
  initial begin
   
    b = 11;
    
    // byte to int 
    
    a = b;
    
    $display("a = %b",a);
    
    // int to byte
     a = 25;
    
    b = a;
    
    $display("b = %b",b);
    
  end
endmodule
