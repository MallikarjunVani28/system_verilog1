//Write a single constraint to generate random values for bit [8:0] variable in the below range, 1-34, 127, 129-156, 192-202,257-260.
class packet;
rand bit [7:0] a;
constraint C1{a inside {[1:34],127,[129:156],[192:202],[257:260]};}
endclass
module tb;
packet p;
initial begin
p = new();
repeat(10)begin
if(p.randomize())
$display("%0d",p.a);
end
end
endmodule
