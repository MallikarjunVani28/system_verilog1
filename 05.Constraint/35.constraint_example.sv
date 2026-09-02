// write a snippet of code to randomize an 8-bit dynamic array with the following 
constraints.                                                                                            
 
• The size of an array should be in between 10 to 20. 
•  The sum of any three consecutive elements of an array should be an even 
number. */
class packet;
rand bit[7:0] a[];
constraint c{foreach(a[i]){
a[i] inside {[1:20]};}}
constraint size{a.size() inside {[10:20]};}
constraint sum{foreach(a[i]){
if(i<=a.size()-3)
(a[i] + a[i+1] + a[i+2] )%2 == 0;}}
endclass
module tb;
packet p;
initial begin
p = new();
if(p.randomize())
$display("a = %p",p.a);
end
endmodule
