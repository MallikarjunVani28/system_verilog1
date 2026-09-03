/*Write a constraint to generate 9,99,999,9999,…..,and so on.   for this*/
class packet;
  rand int a[10];
function int pattern(int i);
int num = 9;
repeat(i)
num = 10*num+9;
return num;

endfunction
constraint c{foreach(a[i])
a[i] == pattern(i);}
endclass
module tb;
packet p;
initial begin
p = new();
if(p.randomize())
$display("%p",p.a);
else
$display("randomization failed");
end
endmodule
