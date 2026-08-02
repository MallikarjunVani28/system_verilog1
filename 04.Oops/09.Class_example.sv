//Create a class containing another class object.
class header;
  int id;
  function new(int id);
    this.id = id;
  endfunction
endclass

class packet;
  int addr;
  int data;
  
  header h;
  
  function new(int addr,int data,int id);
    this.addr = addr;
    this.data = data;
    h = new(id);
  endfunction
  
  function void display();
    $display("address  = %d " ,addr);
    $display("data = %d",data);
    $display("id = %d",h.id);
  endfunction
  
endclass

module tb;
  packet pkt;
  
  initial begin
  
    pkt = new(10,12,13);
    
    
  
  pkt.display();
  end
endmodule
    
    
