//Demonstrate signed and unsigned arithmetic.
module signed_unsigned_arthmetic;
  int a,b;
  int unsigned c,d;
  initial begin
    a = -20;
    b = 10;
    
    c = 20;
    d = 10;
    
    
    $display(" addition %0d + %0d = %0d ",a,b,a+b);
    $display("substraction %0d - %0d = %0d",a,b,a-b);
    
    $display(" addition %0d + %0d = %0d ",c,d,c+d);
    $display("substraction %0d - %0d = %0d",c,d,c-d);
  end
endmodule
    
