// sv code to generate the random numbers

class example;
  rand int a[10];
  
  constraint div{ foreach(a[i])
  a[i] % 2 == 0;}
  //a[i] %2 == 1;} for even numbers

constraint range{foreach(a[i])
 a[i] inside {[1:100]};}
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
  
  
  
