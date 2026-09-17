class packet;
rand int a;
rand int num;
constraint C1{a inside {[1:10]};
num == (a*(a+1))/2;
}
endclass
module tb;
packet p;
initial begin
p = new();
if(p.randomize())
$display("a = %d num = %d",p.a,p.num);
else
$display("failed");
end
endmodule
