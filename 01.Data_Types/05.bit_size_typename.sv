//Use $bits, $size, $typename on different variables.
//$bits returns the number of bits
//$size returns the size
//$typename returns the data type
module bit_size_typename;
  bit b;
  logic [7:0] data;

  
  initial begin
    $display("$bits(bit) = %d",$bits(b));
    $display("$bits(logic) = %d",$bits(data));
    
    $display("----------------");
    
    $display("$size(data) = %0d",$size(data));
    $display("$size(b) = %d",$size(b));
    
    $dislay("-----------------");
    
    $display("$typename(b) = %s",$typename(b));
    $display("$typename(data) = %s",$typename(data));
  end
endmodule
    
    
