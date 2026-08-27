/*Create a packet class with:
rand bit [7:0] addr;

Add a soft constraint:

addr = 10 to 20

Then use an inline constraint to override it and generate:

addr = 100 to 110*/
class packet;
rand bit[7:0] addr;
constraint addr_c{ soft addr inside {[10:20]};}
endclass
module tb;
packet p;
initial begin
p = new();
if(p.randomize() with {addr inside {[100:200]};})
$display("addr = %d",p.addr);
else
$display("randomization failed");
end
endmodule
