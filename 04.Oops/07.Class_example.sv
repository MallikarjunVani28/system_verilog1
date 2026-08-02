//Create a constructor to initialize data members.
class packet;
  int data;
  int addr;
  
  function new(int data,int addr);
    this.data = data;
    this.addr = addr;
  endfunction
  
  function void display();
    $display("data = %d addr = %d",data,addr);
  endfunction
endclass

  
  module tb;
    packet pkt;
    initial begin
      pkt = new(100,120);
    
      
      pkt.display();
    end
  endmodule
      
    
