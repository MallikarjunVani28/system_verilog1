//join any using join none 
module tb;
  event ev;
  initial begin
    fork
      begin
        #1;
        $display("thread 1");
      ->ev;
      end
      
      begin
        #2;
        $display("thread 2");
        
      ->ev;
      end
    join_none
   @ev;
    $display("thread 3");
  end
endmodule

    
