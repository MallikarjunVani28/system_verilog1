module pass_by_reference;
  int x,y;
  
  task automatic example(ref int x,y);
    x = x+y;
    $display("the value of x,y inside the task is %d %d",x,y);
  endtask
  initial begin
    x = 0;
    y = 1;
    example(x,y);
    $display("the value of x,y outside the task is %d %d",x,y);
  end
endmodule

/*
output 
the value of x,y inside the task is           1           1
the value of x,y outside the task is           1           1
*/
