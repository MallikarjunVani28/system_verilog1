//Check the return value of randomize().
class packet;
  rand bit [2:0] a;
endclass

module tb;
  packet p;
  
  initial begin
    p = new();
    
    
      if(p.randomize())
        $display("ranamization successfull");
      else
        $display("randomization failed");
      
    $display("a = %d",p.a);
    
  end
endmodule
      
      
