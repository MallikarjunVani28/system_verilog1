//Demonstrate overflow using a byte.
module overflow;
  byte a = 127;
  
  initial begin
    $display("before byte = %d " ,a);
    a = a +1;
    $display("after = %d " ,a);
  end
endmodule

/*
before byte =  127 
after = -128 
*/
