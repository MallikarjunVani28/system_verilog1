//Write a function using `input`, `output`, and `inout` arguments. Demonstrate how each behaves.  
module tb;
  function automatic void test_arg(input int a,output int b ,inout int c);
b = a*2;
c = c + 2;
endfunction

initial begin
int a;
int b;
int c;
a = 12;
b = 0;
c = 2;
test_arg(a,b,c);
$display("a=%d b=%d c=%d",a,b,c);
end
endmodule
