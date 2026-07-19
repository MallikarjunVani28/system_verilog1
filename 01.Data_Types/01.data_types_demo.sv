//Q1. Declare every SystemVerilog data type (bit, logic, byte, shortint, int, longint, integer, time, realtime, string) and display their values.


module data_types_demo;
  bit b;
  logic lo;
  byte by;
  shortint short;
  int in;
  longint long;
  time tim;
  realtime reatime;
  string str;
  
  initial begin
    b = 1'b0;
    lo = 1;
    by = 8'h10;
    short = 12;
    in = 12;
    long = 12;
    
    #24;
    tim = $time;
    reatime = 12.12212;
    str = "hello sv";
    
    $display("bit = %b ",b);
    $display("byte = %b",by);
    $display("short int = %b",short);
    $display("int = %b",in);
    $display("long = %b",long);
    $display("time = %0t",tim);
    $display("realtime = %0f",reatime);
    $display("str = %s",str);
  end
endmodule
             
             
    
