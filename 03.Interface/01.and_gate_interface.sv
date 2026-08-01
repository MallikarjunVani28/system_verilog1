//Create an interface and connect it to an AND gate module and simulate it
interface and_if;
  logic a;
  logic b;
  logic y;
endinterface

module and_gate(and_if intf);
   assign intf.y = intf.a & intf.b;
endmodule

module and_gate_tb;
  and_if intf();
  
  and_gate dut(intf);
  
  initial begin
    intf.a = 0;intf.b = 0;
    #10;
    intf.a = 0;intf.b =1;
    #10;
    intf.a = 1;
    intf.b = 0;
    #10;
    intf.a = 1;
    intf.b = 1;
  end
  initial 
    $monitor("a = %b b = %b y = %b",intf.a,intf.b,intf.y);
endmodule
