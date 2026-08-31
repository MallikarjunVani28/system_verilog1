//write constraint to generate the array elements in descending order
class packet;
rand bit [3:0] a[10];
constraint c_descending{foreach(a[i]){
if(i>0)
a[i]<a[i-1];
}
}
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

