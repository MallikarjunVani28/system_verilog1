//For the array “x” which holds random integer values, find the index of the smallest  element using array methods  
class packet;
rand int x[15];
constraint c{foreach(x[i]){
x[i] inside {[1:100]};}}
endclass
module tb;
packet p;

int min_index;
initial begin
 p = new();
if(p.randomize())
$display("%p",p.x);
min_index = 0;

foreach(p.x[i])
begin
if(p.x[i]<p.x[min_index])
min_index = i;
end
$display("minimum value = %d",p.x[min_index]);
end
endmodule

