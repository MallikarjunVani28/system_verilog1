class packet #(size = 32);

  static bit [size-1:0] a;
  bit [size-1:0] b;

  function new();
    a++;
    b++;
  endfunction

endclass : packet


packet #(8)  p1;
packet        p2;
packet #(8)  p3;
packet #(32) p4;


module top();

  initial begin

    p1 = new();
    p2 = new();
    p3 = new();
    p4 = new();

    $display("p1.a = %0d, p1.b = %0d", p1.a, p1.b);
    $display("p2.a = %0d, p2.b = %0d", p2.a, p2.b);
    $display("p3.a = %0d, p3.b = %0d", p3.a, p3.b);
    $display("p4.a = %0d, p4.b = %0d", p4.a, p4.b);

  end

endmodule : top
