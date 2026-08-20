interface fa;
  logic a;
  logic b;
  logic cin;
  logic sum;
  logic cout;
  
  modport dut(input a,b,cin,output sum,cout);
  modport tb(input sum,cout,output a,b,cin);
endinterface

module full_adder(fa.dut intf);
 assign intf.sum = intf.a^intf.b^intf.cin;
 assign intf.cout = (intf.a&intf.b)|(intf.cin&intf.a)|(intf.b & intf.cin);
endmodule

module tb(fa.tb intf);
  initial begin
  integer i;
  for(i = 0;i<8;i=i+1)
    begin
      {intf.a,intf.b,intf.cin} = i;
      #12;
      $display("a = %b b = %b cin = %b sum = %b cout = %b ",intf.a,intf.b,intf.cin,intf.sum,intf.cout);
    end
  end
endmodule
module top;
  fa intf();
  full_adder dut(intf);
  tb test(intf);
endmodule


