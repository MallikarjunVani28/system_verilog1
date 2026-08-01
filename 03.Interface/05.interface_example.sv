//Create an interface with multiple modports.
interface data_if;
  logic [7:0] data;
  logic valid;
  
  modport prod(output data,output valid);
  modport cons(input data,input valid);
  
endinterface

module producer (data_if.prod intf);
  initial begin
    intf.data = 8'h12;
    intf.valid = 0;
  end
endmodule

module consumer(data_if.cons intf);
  initial begin
    #1;
    $display("data = %h valid = %d",intf.data,intf.valid);
  end
endmodule

module top;
  data_if intf;
  
  producer in1(intf);
  consumer in2(intf);
endmodule
