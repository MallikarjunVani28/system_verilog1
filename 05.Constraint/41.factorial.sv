class packet;
rand int n;
rand int fact;
constraint C1{n inside {[1:7]};
fact == factorial(n);}
function automatic int factorial(int n);
int f = 1;
for(int i = 1;i<=n;i=i+1)
f=f*i;
return f;
endfunction
endclass
module tb;
packet p;
initial begin
p = new();
if(p.randomize())
$display("n = %d factorial of n = %d",p.n,p.fact);
else
$display("failed");
end
endmodule
