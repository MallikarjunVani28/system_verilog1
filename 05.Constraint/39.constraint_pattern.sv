//write a constraint to genrate the pattern 0102030405
class packet;
  rand int a[];
  constraint size{a.size() == 10;}
  constraint pattern{foreach(a[i]){
    if(i%2==0)
    a[i] == 0;
    else
      a[i] == (i/2)+1;
  }
                    }
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
    
      
