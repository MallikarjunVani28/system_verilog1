module size_of_datatype;
  logic a;
  bit b;
  byte by;
  int in;
  shortint shint;
  longint lonint;
  
  initial begin
    $display("the size of logic is %d",$bits(a));
    $display("the size  of bit is %d",$bits(b));
    $display("the size  of byte is %d",$bits(by));
    $display("the size  of int is %d",$bits(in));
    $display("the size  of shortint is %d",$bits(shint));
    $display("the size of longint is %d",$bits(lonint));
  end
endmodule

/* 
the size of logic is          1
the size  of bit is          1
the size  of byte is          8
the size  of int is         32
the size  of shortint is         16
the size of longint is         64
*/
