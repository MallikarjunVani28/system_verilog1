/*There is an 8 bit vector (bit[7:0] data_in) which takes some random value. 
Write a constraint in  such a way that every time it is randomized, total no. of bits toggled (data_in) should be 5 with  respect to the previous value of data_in. */ 
class packet;
rand bit[7:0] data;
bit [7:0] previous_data;
constraint toggle{$countones(previous_data^data)==5;}
endclass
module tb;
packet p;
initial begin
p = new();
repeat(5)begin
if(p.randomize())begin
$display("previous_data = %b data = %b",p.previous_data,p.data);
p.previous_data = p.data;
end
end
end
endmodule
