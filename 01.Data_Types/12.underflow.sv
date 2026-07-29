//Demonstrate underflow using a byte.
module tb;

  byte a = -128;

  initial begin
    $display("Before = %0d", a);
    a = a - 1;
    $display("After  = %0d", a);
  end

endmodule

/*
Before = -128
After  = 127
*/
