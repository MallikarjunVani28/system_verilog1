//To generate a 32-bit number containing 12 consecutive 1s, a simple constraint is to choose the starting position and create the 12-bit run.
class trans;
  rand bit[31:0] a;
  rand int start;
  constraint c{start inside {[0:20]};}
  constraint c_c{a == (12'hfff << start);}
endclass

module tb;
  trans t;
  initial begin
    
  t = new();
    
    if(t.randomize());
    $display("%b",t.a);
  end
endmodule
  
