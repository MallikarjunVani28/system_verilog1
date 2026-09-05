package pkg;
  int trans;

  function void display(string s);
    $display($time, " %s, n=%d", s, trans);
  endfunction

endpackage


module A;

  import pkg::trans;

  initial begin
    #1;
    trans = 10;
    #5;
    $display("From Module A");
  end

endmodule


module B;

  import pkg::*;

  initial begin
    #2;
    trans = 20;
    #3;
    display("From Module B");
  end

endmodule
