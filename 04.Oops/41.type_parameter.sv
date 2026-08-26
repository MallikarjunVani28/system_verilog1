/*5. Create a parameterized class using a **type parameter**: 
class container #(parameter type T = int);
Create objects using:
int
byte
bit [7:0]
Store and display values.*/
class container #(parameter type T = int);
T data;
function void display();
$display("data = %d ",data);
endfunction
endclass

module tb;
container #(int) c1;
container #(byte) c2;
container #(bit[7:0]) c3;

initial begin
c1 = new();
c2 = new();
c3 = new();

c1.data = 12;
c2.data = 13;
c3.data = 128;

c1.display();
c2.display();
c3.display();
end
endmodule
