/*
Create:

class memory #(parameter int SIZE = 8);

Requirements:

Declare an array of SIZE elements.
Each element should be bit [7:0].
Write a task write(int addr, bit [7:0] data).
Write a function read(int addr) that returns the stored data.
Test it with sizes 8 and 16.*/
class memory #(parameter int size = 8);
bit [7:0] mem[0:size-1];
task write(int addr,bit [7:0] data);
mem[addr] = data;
endtask
function bit [7:0] read(int addr);
return mem[addr];
endfunction
endclass

module tb;
initial begin
memory #(8) m1;
memory #(16) m2;

m1 = new();
m2 = new();

m1.write(5,12);
m2.write(12,18);


$display("mem [%0d] = %0d",5,m1.read(5));
$display("mem [%0d] = %0d",12,m2.read(12));
end
endmodule


