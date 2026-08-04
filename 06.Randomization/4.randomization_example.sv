//Create a class containing:rand int , normal int.Randomize the object and observe which variables change.
class packet;
  rand int a;
  int normal_var;
endclass

module tb;
  packet pkt;
  
  initial begin
    pkt = new();
    
    pkt.normal_var = 100;
    
    repeat(10)begin
      if(pkt.randomize())
        $display("a = %d normal_var = %d",pkt.a,pkt.normal_var);
      else
        $display("randomization failed");
    end
  end
endmodule
    
