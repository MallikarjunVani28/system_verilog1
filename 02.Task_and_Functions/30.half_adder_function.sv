//write a function for the half adder
module tb;
  function half_adder(input logic a,b,output logic sum,carry);
    sum = a ^ b;
    carry = a & b;
  endfunction
  initial begin
    logic a;
    logic b;
    logic sum;
    logic carry;
    int i;
    $monitor("a = %b b = %b sum = %b carry = %b",a,b,sum,carry);
    for(i = 0;i<4;i=i+1)begin
      #1;
      {a,b} = i;
        half_adder(a,b,sum,carry);
    end
    
  end
endmodule
    
    
