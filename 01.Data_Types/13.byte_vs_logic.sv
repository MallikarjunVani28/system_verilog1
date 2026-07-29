//Write a program showing the difference between logic [7:0] and byte during signed arithmetic.
module tb;
  logic [7:0] a = 8'hff;
  byte b = 8'hff;
  
  initial begin
    $display(" a = %d " ,a);
    $display(" b = %d ",b);
    
    $display("a+1 = %d",a+1);
    $display("b+1 = %d",b+1);
  end
endmodule
    /*
     a = 255 
 b =   -1 
a+1 =        256
b+1 =           0
*/
