//Write a function inside an interface to return the value of a signal.
interface data_if;
  logic [7:0] data;
  logic valid;
  function logic [7:0] get_data();
   return data;
  endfunction 
endinterface

module tb;
  data_if intf();
  logic [7:0] value;
  
 
  
  initial begin
    intf.data = 8'h11;
     value = intf.get_data();
    #1;
    
    $display("value = %h",value);
  end
endmodule
