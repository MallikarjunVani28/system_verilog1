//Write a constraint to print even numbers in odd locations and oddnumbers in even locations
class packet;
rand int a[10];
constraint c{foreach(a[i]){

if(i%2==0)
a[i]%2 == 1;
else
a[i]%2 == 0;
}}
endclass
module tb;
packet p;
initial begin
p = new();
if(p.randomize())begin
//foreach(p.a[i])begin
$display("%p",p.a);
//end
end
end
endmodule
