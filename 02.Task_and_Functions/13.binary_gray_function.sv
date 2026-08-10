//Write a function that converts a binary number into its equivalent Gray code.  
module tb;
  function bit[7:0] binary_gray(input bit[7:0] a);
    return a ^ (a>>1);
  endfunction
  initial begin
    bit [7:0] binary;
    bit [7:0]  gray;
    
    binary = 8'b00101011;
    
    gray =binary_gray(binary);
    
    $display("binary = %b",binary);
    $display("gray = %b",gray);
  end
endmodule
