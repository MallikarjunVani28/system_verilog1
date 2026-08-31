//array sorting without using array method
class packet;
rand int a[10];
constraint c{foreach(a[i])
a[i] inside {[1:100]};}
constraint array_sorting{foreach(a[i]){
if(i>0)
a[i]>a[i-1];
}
}
endclass
module tb;
packet p;
initial begin
p = new();
if(p.randomize())
$display("a = %p",p.a);
else
$display("randomization failed");
end
endmodule

