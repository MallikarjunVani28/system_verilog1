//Write a constraint to print the values 1,4,9,14,19,24,29,34,...and so onusing an array.
class packet;
rand int a[15];
constraint c{
a[0] == 1;
a[1] == 4;
foreach(a[i]){

if(i>1)
a[i] == a[i-1] + 5;
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
