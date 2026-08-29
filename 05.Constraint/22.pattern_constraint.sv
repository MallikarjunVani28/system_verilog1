//Write a constraint to generate 0,4,256,260,512,516 using an array.  
class pattern;
rand int a[6];
constraint c{foreach(a[i])
a[i] == (i/2)*256 + (i%2)*4;
}
endclass

module tb;
pattern p;
initial begin
p = new();
if(p.randomize())
begin
foreach(p.a[i])
$write("%d,",p.a[i]);
end
end
endmodule
