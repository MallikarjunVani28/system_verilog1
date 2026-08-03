// example for object assignment

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
endclass
module tb;
  packet pkt1,pkt2;
  initial begin
   
    pkt1 = new(12,13);
    
   
    
    pkt2 = pkt1;
    $display("%p",pkt2);;
    $display("pkt1_addr = %d pkt2_addr = %d",pkt1.addr,pkt2.addr);
  end
endmodule
