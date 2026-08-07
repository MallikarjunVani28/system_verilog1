//Randomize a number divisible by 5.
class div_5;
  rand int num;
  //for positive number
  // constraint { num inside {[1:100]};num %5 == 0;}
  
  constraint con{num%5 == 0 ;}
endclass

module tb;
  div_5 d;
  d = new();
  repeat(5)begin
    if(d.randomize())
      $display("num %d is divisible by 5",d.num);
    else
      $display("num %d is not divisible by 5",d.num);
  end
  end
endmodule
