/*
Create a packet class with:

int data;
static int max_size;

Set max_size = 1024. Create multiple packet objects and demonstrate that all objects see the same max_size.*/

class packet;
int data;
static int max_size;
endclass
module tb;
packet p1,p2,p3;
initial begin

packet::max_size = 1024;
p1 = new();
p2 = new();
p3 = new();

p1.data = 101;
p2.data = 123;
p3.data = 124;

$display("p1 data = %d p1 max_size = %d",p1.data,p1.max_size);
$display("p2 data = %d p2 max_size = %d",p2.data,p2.max_size);
$display("p3 data = %d p3 max_size = %d",p3.data,p3.max_size);
end
endmodule
