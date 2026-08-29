//Write a constraint to print values between 3.000 to 5.000
class packet;
rand real a;
constraint c{a inside {[3.000:5.000]};}
endclass
module tb;
packet p;
initial begin
p = new();
repeat(10)begin
if(p.randomize());
$display("%f",p.a);
end
end
endmodule
