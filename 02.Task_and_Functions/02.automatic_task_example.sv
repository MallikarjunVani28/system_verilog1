module automatic_task_example;
 // integer i; this will become static in nature soo separate memory will be allocated
  task automatic increment();
    integer i =0;//dynamic in nature
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
