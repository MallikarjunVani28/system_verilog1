class packet;
rand int num;
constraint C1{num inside {[100:999]};}
constraint C2{(num/100) == (num%10);}
endclass
module tb;
packet p;
initial begin
p = new();
if(p.randomize())
$display("%d",p.num);
else
$display("failed");
end
endmodule
