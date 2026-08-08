//Write a SV code to randomize an array where first and last elements are equal.  
class example;
  rand int a[];
  
  constraint size{ a.size() == 10;}
  
  constraint equal{a[0] == a[a.size()-1];}
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
  
