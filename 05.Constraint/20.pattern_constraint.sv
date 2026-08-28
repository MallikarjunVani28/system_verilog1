/*Write a constraint to generate 9,99,999,9999,…..,and so on.   for this*/
class packet;
rand longint unsigned num[10];
constraint c{
num[0] == 9;
foreach (num[i])
if(i>0)
num[i]== num[i-1]*10+9;}
endclass

module tb;
packet p;
initial begin
p = new();

assert(p.randomize())
foreach(p.num[i])
$display(" num = %d",p.num[i]);

end
endmodule
