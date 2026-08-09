//randomize the queue
class example;
rand int a[$];

constraint c{ a.size() == 10;
}
constraint r{foreach (a[i])
a[i] inside {[1:255]};}
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
