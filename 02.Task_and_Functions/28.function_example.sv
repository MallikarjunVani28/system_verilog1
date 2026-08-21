//Write a function that accepts two integers as input arguments and returns their sum using an output argument.
module tb;
  function int sum(input int a,input int b);
    return a + b;
  endfunction
  
  initial begin
    int result;
    
    result = sum(10,20);
    $display("sum = %0d",result);
  end
endmodule
