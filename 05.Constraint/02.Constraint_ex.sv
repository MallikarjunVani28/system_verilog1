//Randomize an integer between 1 and 100.
class packet;
  rand int a;
  
  constraint cons{a inside{[1:100]};};
endclass

module tb;
  packet p;
  initial begin
    p = new();
    repeat(10)begin
      if(p.randomize())
        $display("a = %d",p.a);
    end
  end
endmodule
