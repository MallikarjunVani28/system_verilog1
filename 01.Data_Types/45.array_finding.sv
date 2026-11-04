/*write a code to generate the random dynamic array and also find the element greater then 30 and print them*/

module tb;
int a[],q[$];
initial begin
a = new[$urandom_range(20,5)];
foreach(a[i])
a[i] = i*8;
$display("%p",a);
q = a.find with (item>30);
$display("%p",q);
end
endmodule
