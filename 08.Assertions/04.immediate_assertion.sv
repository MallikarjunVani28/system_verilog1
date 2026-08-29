//Write an immediate assertion to check that fifo_count never exceeds FIFO_DEPTH.
module tb;
parameter int FIFO_DEPTH = 16;
logic [4:0] fifo_count;

initial begin
fifo_count = 10;
assert(fifo_count <= FIFO_DEPTH)
$display("passed fifo_count = %0d is less than fifo_depth",fifo_count);
else
$display("failed fifo_count is greater than fifo depth");


fifo_count = 20;
assert(fifo_count <= FIFO_DEPTH)
$display("passed fifo_count = %0d is less than fifo_depth",fifo_count);
else
$display("failed fifo_count is greater than fifo depth");
end
endmodule
