//Write a function to reverse an 8-bit vector.
module tb;
  function bit[7:0] reverse(input bit[7:0] data);
    bit[7:0] result;
    
    for(int i = 0;i<8;i=i+1)begin
      result[i] = data[7-i];
    end
    
      return result;
  endfunction
  initial begin
    
    bit[7:0] data;
    bit [7:0] result;
    
    data = 8'b00001111;
    result = reverse(data);
    $display("reversed data = %b",result);
  end
endmodule
    
      
    
