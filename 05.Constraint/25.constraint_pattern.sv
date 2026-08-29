//Write a constraint to generate 1,2,4,8,16,32,64 without using a poweroperator.  
class packet;
rand int a[10];
constraint c{foreach (a[i])
{a[0] == 1;
if(i>0)
a[i] == a[i-1]*2;
}}
endclass
module tb;
packet p;
initial begin
p = new();
if(p.randomize())
$display("%p",p.a);
end
endmodule
