module tb();
  
 // function void test;
  
  function automatic void test;
    int count;
    count++;
    $display("count = %0d",count);
  endfunction
  
  initial begin
    test;
    test;
    test;
  end
endmodule
