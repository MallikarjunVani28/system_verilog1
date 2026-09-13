/*Write an assertion to the following condition: 
                   When the positive edge of signal “a” is detected, in the next cycle check signal “b” has to   
                   be high continuously until signal “c” goes low. */
module tb;
logic a,b,c;
logic clk;
initial begin
clk = 0;
forever
#5 clk = ~clk;
end
property ppt;
@(posedge clk)
$rose(a) |=> b until !c;
endproperty

acc : assert property (ppt)
$display("assertion passed");
else
$display("assertion failed");

initial begin
   a = 0;
    b = 0;
    c = 1;

    repeat (2) @(posedge clk);

    // Positive edge of a
    a = 1;

    // Next cycle: b must be high
    @(posedge clk);
    b = 1;

    // b must remain high
    @(posedge clk);
    b = 1;

    @(posedge clk);
    b = 1;

    // c goes low
    @(posedge clk);
    c = 0;
    b = 1;

    @(posedge clk);

    $finish;
  end
endmodule
