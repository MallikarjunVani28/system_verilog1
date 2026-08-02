//Create multiple objects using a loop.
class packet;
  int id;
   
  function new(int id);
    this.id = id;
  endfunction
  
  function void display();
    $display("id = %d " ,id);
  endfunction
endclass

module tb;
  packet p[5];
  
  initial begin
    foreach(p[i])begin
      p[i] = new(i+1);
      p[i].display();
    end
  end
endmodule
    
    
    
