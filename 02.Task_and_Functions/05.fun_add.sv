//Write a function add() that takes two integers and returns their sum.
module tb;
  function int add(input int a,input int b);
    return a > b;
  endfunction
  
  initial begin
    int result;
    
    result  = add(10,12);
    $display("result = %d",result);
  end
endmodule        
    
