//Write an immediate assertion to check that a 4-bit signal `data` is within the range `0` to `10`.  
module tb;
logic [3:0]data;

always_comb begin
a_e : assert (data inside {[0:10]})
$display("at t = %0t is passed",$time);
else
$display("at t = %0t is failed",$time);

end

initial begin
data = 0;
#1;
data = 1;
#1;
data = 12;
end
endmodule
