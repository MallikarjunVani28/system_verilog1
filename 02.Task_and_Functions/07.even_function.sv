//Write a function is_even() that takes an integer and returns 1 if even, otherwise 0.
module tb;
  function int add(input int a);
    if(a %2 == 0)
return 1;
else
return 0;
  endfunction
  
  initial begin
    int result;
    
    result  = add(11);
    $display("result = %d",result);

  end
endmodule        
    
