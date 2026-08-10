//Write a function `factorial()` to calculate the factorial of a number.  
module tb;
  function int factorial(input int a);
    int fact;
fact = 1;

for(int i = 1;i<=a;i = i+1)
fact = fact*i;
return fact;
  endfunction
  
  initial begin
    int result;
int a;
a = 5;
    
    result  = factorial(a);
    $display("result = %d",result);

  end
endmodule        
