interface mux;
  logic [3:0] a;
  logic [1:0] sel;
  logic y;
  modport dut(input a,input sel,output y);
  modport tb(input y,output a,output sel);
endinterface

module dut(mux.dut intf);
  always_comb begin
    case(intf.sel)
      2'b00 : intf.y = intf.a[0];
      2'b01 : intf.y = intf.a[1];
      2'b10 : intf.y = intf.a[2];
      2'b11 : intf.y = intf.a[3];
    endcase
  end
endmodule

module tb(mux.tb intf);
 
  
  initial begin
    intf.a=4'b0101;
    intf.sel = 2'b01;
    #1;
    intf.sel = 2'b10;
    #1;
    intf.sel = 2'b11;
    #1;
    intf.sel = 2'b00;
  end
    initial 
      $monitor("a = %b sel = %b y = %b",intf.a,intf.sel,intf.y);
endmodule
      
module top;

  mux intf();
dut in1(intf);

  tb test(intf);

endmodule
