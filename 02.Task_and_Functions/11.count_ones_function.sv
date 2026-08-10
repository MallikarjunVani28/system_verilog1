//Write a function to count the number of 1s in an 8-bit vector.
module tb;
  function int count_ones(input bit [7:0] a);
    int count;
    count = 0;
    for(int i = 0;i<8;i = i+1)
      begin
        if(a[i] == 1'b1)
          count = count+1;
        else
          count = count;
      end
    return count;
  endfunction
  
  initial begin
    bit [6:0] a;
    int result;
    
    a = 8'b01010101;
    
    result = count_ones(a);
    $display("result = %d ",result);
  end
endmodule
    
