//Write a function that checks whether two 8-bit numbers are equal.
module tb;
  function bit is_equal(input bit[7:0] a ,input bit [7:0] b);
    if(a==b)
      return 1;
    else
      return 0;
  endfunction
  initial begin
    bit [7:0] a;
    bit [7:0] b;
    bit result;
    
    a = 8'b10101010;
    b = 8'b10101010;
    
    result = is_equal(a,b);
    
    $display("a = %b b = %b result = %b",a,b,result);
  end
endmodule
    
