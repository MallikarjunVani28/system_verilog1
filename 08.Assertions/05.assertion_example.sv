
//if request is high after 1 clock cycle grant should be low write an assertion for it
module gnt;

  input logic clk;
  input logic req;
  output logic gnt;

  property ppt;
    @(posedge clk)
    req |=> !gnt;
  endproperty

  assert property(ppt)
    $display("Assertion passed");
  else
    $display("Assertion failed");

endmodule
