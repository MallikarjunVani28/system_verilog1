//Convert an integer into a string and vice versa.
module string_to_int;
  int num;
  string str;
  
  initial begin
    num = 12345;
    
    str = $sformatf("%0d",num);
    
    $display("%0d",num);
    $display("%s",str);
  end
endmodule
