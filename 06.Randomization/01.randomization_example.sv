//Create a class with one rand variable and print 10 random values.

class packet;
  rand int a;
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
      
  
