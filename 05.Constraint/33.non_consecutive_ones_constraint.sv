/*write a constraint for the above rand variable such that  
it should have 12 number of 1's non consecutively*/ 
endclass
class trans;
  rand bit[31:0] a;
  
  constraint c_c{$countones(a) == 12;}
constraint c{foreach(a[i]){
if(i<31)
!(a[i] &&a[i+1]);}}
endclass

module tb;
  trans t;
  initial begin
    
  t = new();
    
    if(t.randomize());
    $display("%b",t.a);
  end
endmodule
  
