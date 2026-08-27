class packet;
rand bit write;
rand bit [7:0] addr;
endclass

module tb;
packet p;
initial begin
p = new();
repeat(10)begin
if(p.randomize()with { if(write == 1)
addr inside {[0:100]};
else
addr inside {[200:255]};}
)
$display("write = %d addr = %d",p.write,p.addr);
else
$display("randomization failed");
end
end
endmodule
