interface count_inf(input logic clk);
  logic reset;
  logic [2:0] count;
  clocking cb@(posedge clk);
    default input #1 output #1;
    output reset;
    
    input count;
  endclocking
  modport counter(input reset,input clk,output count);
  modport tb(clocking cb);
endinterface

    module counter(count_inf.counter intf);
  always@(posedge intf.clk)begin
    if(intf.reset)
    intf.count <= 3'b000;
  else
    intf.count <= intf.count + 1'b1;
  end
endmodule

module tb;
  
  logic clk;
  
  always #5 clk = ~clk;
  
  count_inf  inf(clk);
  counter dut(inf);
  initial begin
    clk = 0;
    inf.reset = 1;
    #10;
    inf.reset = 0;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
  end
endmodule
  
  
