swap numbers without temp 
module tb;
  int a = 12;
  byte b = 13;
  initial begin
    
    a = b + a;
    b = a - b;
    a = a - b;
      
    $display("a = %d",a);
    $display("b = %d",b);
   
  end
endmodule



/////////////////////////////////////////////////////////////////////////////
module tb;
  int a = 12;
  byte b = 13;
  initial begin
    
    a = b ^ a;
    b = a ^ b;
    a = a ^ b;
      
    $display("a = %d",a);
    $display("b = %d",b);
   
  end
endmodule

/////////////////////////////////////////////////////////////////////////////////
module tb;
  int  a = 12;
  int b = 13;
  initial begin
    
    {a,b} = {b,a};
      
    $display("a = %d",a);
    $display("b = %d",b);
   
  end
endmodule
    
