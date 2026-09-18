// Write a constraint to generate below pattern 1234554321
class packet;
  rand int a[];
  constraint C1{a.size() == 10;}
  constraint C2{foreach(a[i]){
    if(i<5)
      a[i] == i + 1;
    else
      a[i] == 10 - i;
  }}
    endclass
    module tb;
      packet p;
      initial begin
        p = new();
        if(p.randomize())
          $display("%p",p.a);
        else
          $display("failed");
      end
    endmodule
