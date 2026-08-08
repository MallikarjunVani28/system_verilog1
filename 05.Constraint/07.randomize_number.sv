//Randomize a number between 100 and 200.
class example;
  rand int a[10];
  
  

constraint range{foreach(a[i])
 a[i] inside {[100:200]};}
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
  
  
  
