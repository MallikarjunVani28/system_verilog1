/*Create a packet class with a constraint that addr must be between 10 and 20. 
Write code to disable the constraint using constraint_mode(), randomize the object, and observe the result.*/
class packet;
rand int a;

constraint a_c{a inside  {[10:30]};}
endclass

module tb;

packet p;
initial begin
p = new();
 p.constraint_mode(1);

if(p.randomize())
$display("constraint enabled = %d",p.a);

p.constraint_mode(0);
if(p.randomize())
$display("constraint disabled = %d",p.a);
end
endmodule
