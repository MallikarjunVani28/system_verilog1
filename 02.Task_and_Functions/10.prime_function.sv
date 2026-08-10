//Write a function is_prime() that checks whether a number is prime.
module tb;
  function bit is_prime(input int a);
    if(a<2)
      return 0;
    for(int i = 2;i<a/2;i=i+1)
      if(a % i == 0)
        return 0;
    return 1;
  endfunction
  
  initial begin
    int result;
    
    result = is_prime(11);
    $display("%b",result);
  end
endmodule
