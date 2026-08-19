class transaction;
  bit [31:0] src,dst;
  function new();
    src = 4;
    dst = 2;
  endfunction
endclass

module tb;
  initial begin
    transaction tran_h;
    tran_h = new();
    $display("%p",tran_h);
  end
endmodule

/*
class transaction;
  bit [31:0] src,dst;
  function new(int x,y=4);
    src = x;
    dst = y;
  endfunction
endclass

module tb;
  initial begin
    transaction tran_h,t2,t3;
    tran_h = new(3,2);
    t2 = new(4);
    t3 = new(2);
    $display("%p",tran_h);
    $display("%p",t2);
    $display("%p",t3);
  end
endmodule
*/
