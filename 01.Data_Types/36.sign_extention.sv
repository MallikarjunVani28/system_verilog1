/*
Show sign extension.
Example:
byte a = -5;int b = a;
Display both in binary.
*/


module tb;
  byte a = -5;
  int b = a;
  initial begin
    $display("a = %b",a);
    $display("b = %b",b);
  end
endmodule
