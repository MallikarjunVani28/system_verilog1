/*Write a program that uses $cast inside a loop:
foreach (trans[i])

and prints:

Transaction 0 : READ
Transaction 1 : WRITE
Transaction 2 : READ*/
class transaction;
int id;
endclass
class read_transaction extends transaction;
int rd_addr;
endclass
class write_transaction extends transaction;
int wr_addr;
endclass
module tb;
transaction t[3];
read_transaction r1,r2;
write_transaction wr1,wr2;
initial begin
r1 = new();
r2 = new();
wr1 = new();
wr2 = new();

t[0] = r1;
t[1] = wr1;
t[2] = r2;

foreach(t[i])begin
if($cast(r1,t[i]))
$display("transaction[%0d] = READ",i);
else if($cast(wr1,t[i]))
$display("transaction[%0d] = WRITE",i);
else
$display("transaction failed");
end
end
endmodule
