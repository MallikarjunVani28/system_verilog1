module automatic_task_example;
 
  task automatic increment();
    integer i =0;
    i = i+1;
     $display("the value of i after second increment is %0d",i);
    
  endtask
  
  initial begin
    increment;
   
    increment;
   
  end
endmodule

/*
output
the value of i after second increment is 1
the value of i after second increment is 1
*/
