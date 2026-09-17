class packet;
rand int n;
constraint C1{n inside{[1:999]};
is_happy(n);}
function automatic bit is_happy(int n);
int sum ;
repeat(20)begin
sum = 0;
while(n>0)begin
sum = sum + (n%10)*(n%10);
n = n/10;
end
if(sum == 1)
return 1;

n = sum;
end
return 0;
endfunction
endclass
module tb;
packet p;
initial begin
p = new();
if(p.randomize())
$display("%d",p.n);
else
$display("failed");
end
endmodule
