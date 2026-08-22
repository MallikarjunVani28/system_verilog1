/*Create a parameterized class container with:

A type parameter T, default type int
A variable data of type T
A function set_data(T value)
A function display()

Test it with:

int
bit [7:0]*/
class container #(parameter type T = int);
T data;
function void set_data(T value);
data = value;
endfunction

function void display();
$display("data = %0d",data);
endfunction

endclass

module test;
container #(int) c1;
container #(bit [7:0]) c2;
initial begin

c1 = new();
c2 = new();

c1.set_data(12);
c1.display();

c2.set_data(17);
c2.display();
end
endmodule
