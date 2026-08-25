/*
8. Create the following hierarchy: 

```
```

```
transaction
    |
    +---- read_transaction
    |
    +---- write_transaction
```

Create an array of `transaction` handles containing both read and write transactions. Use `$cast` to identify whether each object is a read or write transaction.
*/
class transaction;
int id;
endclass
class rd_transaction extends transaction;
int rd_addr;
endclass
class wr_transaction extends transaction;
int wr_addr;
endclass

module tb;
transaction t[4];
rd_transaction r1,r2;
wr_transaction wr1,wr2;
initial begin

r1 = new();
r2 = new();

wr1 = new();
wr2 = new();

t[0] = r1;
t[1] = wr1;
t[2] = r2;
t[3] = wr2;

foreach(t[i])begin
if($cast(r1,t[i]))begin
$display("t[%d] is read transaction",i);

end
else if($cast(wr1,t[i]))begin
$display("t[%d] is write transaction",i);
end
else
$display("transaction failed");
end
end
endmodule
