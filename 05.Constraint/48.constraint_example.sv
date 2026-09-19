//Write a constraint to generate a random value for a var1 [7:0] within50 and var2 [7:0] with the non-repeated value in every randomization? 
class packet;
  rand bit[7:0]var1;
  rand bit[7:0]var2;
  constraint C1{var1 < 51;}
  constraint C2{unique{var2};}
endclass
module tb;
  packet p;
  initial begin
    p = new();
    if(p.randomize())begin
      $display("var1 = %p",p.var1);
      $display("var2 = %p",p.var2);
    end
    else
      $display("failed");
  end
endmodule
    
