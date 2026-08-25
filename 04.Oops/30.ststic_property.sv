/*Create a class memory containing:

int address;
int data;
static int object_count;

Increment object_count inside the constructor. Create 4 memory objects and display the total number of objects.*/
class memory;
int addr;
int data;
static int obj_count;
function new();
obj_count++;
endfunction
endclass

module tb;
memory m1,m2,m3,m4;
initial begin
m1 = new();
m2 = new();
m3 = new();
m4 = new();

$display("obj_count = %d",memory::obj_count);
end
endmodule
