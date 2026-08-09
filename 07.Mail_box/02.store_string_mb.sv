// store the strings in the mailbox 

module tb;
  mailbox mb;
  string data;
  
  initial begin
    mb = new();
   // storing values in mailbox 
    mb.put("hello");
    mb.put("sv");
    mb.put("uvm");
    mb.put("happy");
    mb.put("fine");
    $display("size before retriving the data %d",mb.num());
    for(int i=0;i<5;i=i+1)begin
      mb.get(data);
      $display("data = %s",data);
    end
    
    $display("size after retriving the data %0d",mb.num());
    
    
  end
  
endmodule
