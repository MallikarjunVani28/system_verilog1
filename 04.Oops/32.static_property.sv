/*
Create a transaction class containing:

rand bit [7:0] data;
int id;
static int id_count;

Every transaction object must automatically receive a unique ID.

Expected:

Transaction ID = 1
Transaction ID = 2
Transaction ID = 3
...
*/
class transaction;
rand bit [7:0] data;
int id;
static int id_count;

function new();
id_count++;
id = id_count;
endfunction
endclass
module tb;
transaction t1,t2,t3,t4;
initial begin
t1 = new();
t2 = new();
t3 = new();
t4 = new();
$display("transaction id  = %d",t1.id);
$display("transaction id  = %d",t2.id);
$display("transaction id  = %d",t3.id);
$display("transaction id  = %d",t4.id);
end
endmodule
