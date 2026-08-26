/*Create a parameterized class packet with a parameter WIDTH = 8. Declare a data member:
bit [WIDTH-1:0] data;

Create objects with widths 8, 16, and 32.*/
class packet #(parameter int WIDTH = 8);
bit [WIDTH-1:0] data;
endclass

module tb;
packet #(8) p8;
packet #(16)p16;
packet #(32)p32;

initial begin
p8 = new();
p16 = new();
p32 = new();

p8.data = 8'h12;
p16.data = 16'h1234;
p32.data = 32'h12345678;

$display("p8 data = %h",p8.data);
$display("p16 data = %h",p16.data);
$display("p32 data = %h",p32.data);
end
endmodule
