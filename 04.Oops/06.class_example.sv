//Print the object handle using %p.
class packet;
  int a;
  int b;
  int c;
endclass

module tb;
  packet pkt1;
  
  initial begin
    pkt1 = new();
    
    
    pkt1.a = 20;
    pkt1.b = 21;
    pkt1.c = 23;
    $display("%p",pkt1);
  end
endmodule
