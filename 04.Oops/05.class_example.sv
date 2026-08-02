//Create two objects of the same class and assign different values.
class packet;
  int a;
endclass

module tb;
  packet pkt1,pkt2;
  
  initial begin
    pkt1 = new();
    pkt2 = new();
    
    pkt1.a = 20;
    pkt2.a = 21;
    $display("a = %d b = %d",pkt1.a,pkt2.a);
  end
endmodule
