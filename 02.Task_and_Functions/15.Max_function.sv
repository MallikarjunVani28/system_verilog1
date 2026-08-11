//Write a function that accepts three integers using input arguments and returns the maximum.
module tb;
  function int max_num(input int a,input int b ,input int c);
int max;
max = a;
   if(b>max)
max = b;
if(c>max)
max = c;
return max;
endfunction

int a;
int b;
int c;
int max;
initial begin
a = 12;
b = 15;
c = 10;
max = max_num(a,b,c);
$display("max num = %d",max);
end
endmodule
