// example for shallow copy

class header;
  int id;
  function new(int id);
    this.id = id;
  endfunction
endclass

class packet;
  int addr;
  header h;
  function new(int addr,int id);
    this.addr = addr;
    h = new(id);
  endfunction
  
  //shallow copy
  function packet copy();
    copy = new(addr,h.id);
    copy.h = this.h;
  endfunction
endclass
module tb;
  packet pkt1,pkt2;
  initial begin
   
    pkt1 = new(12,100);
    
    pkt2 =pkt1.copy();
    
    pkt2.addr = 100;
    
   
    $display("pkt1.addr = %0d", pkt1.addr);
    $display("pkt2.addr = %0d", pkt2.addr);
  end
endmodule
