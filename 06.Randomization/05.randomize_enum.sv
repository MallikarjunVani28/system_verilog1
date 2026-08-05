//ranomizing the enum datatype


module tb;
  typedef enum{red,blue,orange,black,gold}colour_t;
  class packet;
  rand colour_t colour;
endclass
  
  initial begin
    packet pkt;
    
    pkt = new();
    
    repeat(10)begin
      if(pkt.randomize());
      $display("colour = %s",pkt.colour.name());
    end
  end
endmodule

                
                
                
