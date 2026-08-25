/*
Create two classes:

class A
  static int count;

class B
  static int count;

Create objects of both classes and demonstrate that A::count and B::count are independent.*/
class first;
static int count;
function new();
count++;
endfunction
endclass

class second;
static int count;
function new();
count++;
endfunction
endclass

module tb;
first f1,f2,f3;
second s1,s2,s3;
initial begin
f1 = new();
f2 =new();
s1 = new();
$display("first = %d second = %d " ,first::count,second::count);
end
endmodule
