//Write an immediate assertion to check that a and b are equal.
module tb;
logic a,b;

always_comb begin
a_e : assert (a == b)
$display("at t = %0t is passed",$time);
else
$display("at t = %0t is failed",$time);

end

initial begin
#1 a = 1;
b = 1;
#1;
a = 1;
b = 0;
end
endmodule
