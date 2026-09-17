class packet;
  rand int a[10];
function int pattern(int i);
int num = 2;
repeat(i)
num = 10*num+2;
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
