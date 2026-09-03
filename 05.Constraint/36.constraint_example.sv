/*Write a constraint to generate the pattern as shown below.{0, 1, 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1..........}*/
class packet;
rand bit a[20];
function bit pattern (int i);
int count = 1;
int j = 0;
bit value = 0;

while(i>=j+count)begin
j = j+count;
count++;
value = ~value;
end
return value;
endfunction
constraint patt{foreach (a[i]){
a[i] == pattern(i);}}
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
