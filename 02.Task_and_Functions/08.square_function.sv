//Write a function square() that accepts an integer and returns its square.
module tb;
  function int add(input int a);
    a = a * a;
return a;
  endfunction
  
  initial begin
    int result;
    
    result  = add(11);
    $display("result = %d",result);

  end
endmodule        
    
