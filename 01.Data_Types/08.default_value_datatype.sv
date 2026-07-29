module default_tb;
  logic a;
  bit b;
  byte by;
  int in;
  shortint shint;
  longint lonint;
  
  initial begin
    $display("the default value of logic is %d",a);
    $display("the default value of bit is %d",b);
    $display("the default value of byte is %d",by);
    $display("the default value of int is %d",in);
    $display("the default value of shortint is %d",shint);
    $display("the default value of longint is %d",lonint);
  end
endmodule

/*
output
the default value of logic is x
the default value of bit is 0
the default value of byte is    0
the default value of int is           0
the default value of shortint is      0
the default value of longint is                    0
*/
