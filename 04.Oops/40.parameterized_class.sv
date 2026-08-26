/*Create a parameterized class packet #(parameter int WIDTH = 8) containing data and a display() function. Display the value for an 8-bit and 16-bit packet.*/
class packet #(parameter int WIDTH = 8);
bit [WIDTH-1:0] data;
function  void display();
$display("number of bits in data = %d",$bits(data));
endfunction

endclass

module tb;

packet p1;
packet #(16) p2;
initial begin
 p1 = new();
p2 = new();
p1.display();
p2.display();
end
endmodule
