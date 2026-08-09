//Generate prime numbers only.
class prime;
  rand int num;
  function automatic bit is_prime(int num);
    if(num<2)
      return 0;
    
    for(int i =2 ; i < num/2;i = i+1)begin
      if(num%i==0)
        return 0;
    end
    return 1;
  endfunction
constraint prime{is_prime(num);}

constraint range{num inside {[1:100]};}
endclass
  
  module tb;
    prime p;
    initial begin
      p = new();
      repeat(10)begin
        if(p.randomize())
          $display("%d is a prime number",p.num);
        else
          $display("%d is not a prime number",p.num);
      end
    end
      endmodule
          
