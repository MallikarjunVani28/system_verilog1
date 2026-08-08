Randomize an array in ascending order.
class example;
rand int a[10];

constraint c{ foreach(a[i])
if(i <9)
a[i] < a[i+1] ;
}
constraint r{foreach (a[i])
a[i] inside {[1:100]};}
endclass

module tb;
example ex;

initial begin
ex = new();
repeat(4)begin
if(ex.randomize())
$display("a = %p",ex.a);
else
$display("failed");
end
end
endmodule  
