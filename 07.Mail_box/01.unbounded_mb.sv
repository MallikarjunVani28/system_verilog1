// creat an unbounded mail box

module tb;
  mailbox mb;
  int data;
  
  initial begin
    mb = new();
   // storing values in mailbox 
    mb.put(10);
    mb.put(11);
    mb.put(20);
    mb.put(33);
    mb.put(40);
    
    for(int i=0;i<5;i=i+1)begin
      mb.get(data);
      $display("data = %0d",data);
    end
    
    $display("size after retriving the data %0d",mb.num());
    
    
  end
  
endmodule
