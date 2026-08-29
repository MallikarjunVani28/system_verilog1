//Write an immediate assertion to check that data is not zero.
module tb;
logic data;

always_comb begin
a_e : assert (data != 0)
$display("at t = %0t is passed",$time);
else
$display("at t = %0t is failed",$time);

end

initial begin
data = 0;
#1;
data = 1;
#1;
data = 0;
end
endmodule
