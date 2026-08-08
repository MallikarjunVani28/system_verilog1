//randomize the byte excluding 0
class example;
  rand byte a[10];
  
  

constraint range{foreach(a[i])
 a[i] inside {[-127:-1],[1:128]};}
endclass

module tb;
  
  example ex;
  initial begin
    
  ex = new;
    
    if(ex.randomize())
      $display("%p",ex.a);
    else
      $display("randomization failed");
  end
endmodule
  
  
  
