//join_any using join_none
module tb;
  event ev;
  initial begin
    fork
      begin
        #1;
        $display("thread 1");
       end
      
      begin
        #2;
        $display("thread 2");    
      end
      
      begin
      end
    join_none
   
    $display("thread 3");
  end
endmodule

    
