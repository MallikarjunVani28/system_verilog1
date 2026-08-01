/*
Create an interface containing
logic [7:0] data;
logic valid;
Drive values from the testbench.
*/
interface my_intf;
  logic [7:0] a;
  logic valid;
endinterface

module tb;
  my_intf inf();
  initial begin
    $monitor("a = %h valid = %b",inf.a,inf.valid);
    
  inf.a = 8'h01;
  inf.valid = 0;
    #10;
      
  inf.a = 8'h12;
  inf.valid = 1;
    #10;
      
  inf.a = 8'h11;
  inf.valid = 1;
    #10;
      
  inf.a = 8'ha1;
  inf.valid = 0;
    #10;
  end
endmodule
  
