/*Create a parameterized class with a default parameter value:
parameter int WIDTH = 8

Create one object without specifying the parameter. Find which width is used.*/
class packet #(parameter int WIDTH = 8);
bit [WIDTH-1:0] data;
endclass

module tb;

packet p;
initial begin
 p = new();
$display("number of bits in data = %d",$bits(p.data));
end
endmodule
