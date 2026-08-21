/*Write a function using inout that increments a variable by 5.

Example:

Before = 10
After  = 15*/
module tb;
  function void increment(inout int a);
    a = a + 5;
  endfunction
  
  initial begin
    int a;
    
    a = 10;
    
    $display("before increment %0d",a);
    
    increment(a);
    
    $display("after increment %0d",a);
    
  end
endmodule
    
