//Create a class with one randc variable and print values until they repeat.

class packet;
  randc bit [1:0] a;
endclass

module tb;
  packet pkt;
  
  initial begin
    pkt = new();
    
    repeat(10)begin
      if(pkt.randomize())
        $display("a = %d",pkt.a);
      else
        $display("randomization failed");
    end

  end
  endmodule
      
  
