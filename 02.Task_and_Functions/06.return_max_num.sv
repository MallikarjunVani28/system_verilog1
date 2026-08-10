//Write a function `max()` that takes two integers and returns the larger value.  
module tb;
  function int add(input int a,input int b);
    if(a > b)
return a;
else
return b;
  endfunction
  
  initial begin
    int result;
    
    result  = add(10,12);
    $display("result = %d",result);
  end
endmodule        
    
