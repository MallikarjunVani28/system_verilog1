/*Create:
rand bit write;
rand bit [7:0] addr;

Constraint:

if write = 1 → addr = 0 to 100
if write = 0 → addr = 200 to 255

Implement this using if-else.*/
class packet;
rand bit write;
rand bit [7:0] addr;


constraint c{ if(write == 1)
addr inside {[0:100]};
else
addr inside {[200:255]};}
endclass

module tb;
packet p;
initial begin
p = new();
repeat(10)begin
if(p.randomize())
$display("write = %d addr = %d",p.write,p.addr);
else
$display("randomization failed");
end
end
endmodule
