// Write a constraint to generate below pattern 9 19 29 39 49 59 69 79
class packet;
  rand int a[];
  constraint C1{a.size() == 12;}
  constraint C2 {foreach(a[i]){
    a[0] == 9;
    if(i>0)
      a[i] == (i*10)+9;
  }}
    endclass
    module tb;
      packet p;
      initial begin
        p = new();
        if(p.randomize())
          $display("%p",p.a);
      end
    endmodule
                 
