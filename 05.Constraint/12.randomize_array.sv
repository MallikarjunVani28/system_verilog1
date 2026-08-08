//Randomize an array so that every element is even.

 class example;
rand int a[10];

constraint c{ foreach(a[i])
a[i] % 2 == 0 ;
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
