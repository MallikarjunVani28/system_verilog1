// Write a task inside an interface that initializes all signals.
interface data_if;
  logic [7:0] data;
  logic valid;
  task inf();
    data = 8'h01;
    valid = 1;
  endtask 
endinterface

module tb;
  data_if intf();
  
  initial begin
    intf.inf();
    $display("data = %h valid = %b",intf.data,intf.valid);
  end
endmodule
