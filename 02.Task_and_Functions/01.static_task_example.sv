module static_task_example;
  int i;
  task increment();
    i = i+1;
  endtask
  
  initial begin
    increment;
    $display("the value of i after first increment is %0d",i);
    increment;
    $display("the value of i after second increment is %0d",i);
  end
endmodule


/*
output 
the value of i after first increment is 1
the value of i after second increment is 2
*/
