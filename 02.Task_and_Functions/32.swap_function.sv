//Write a function swap() using ref to exchange two integers.
module tb;
  function swap(ref int a, ref int b);
    int temp;
    temp = a;
    a = b;
    b = temp;
  endfunction
  initial begin
    int a = 10;
    int b = 20;
    
    $display("before swapping a = %d b = %d",a,b);
    
    swap(a,b);
    $display("after swapping a = %d b = %d",a,b);
  end
endmodule
    
