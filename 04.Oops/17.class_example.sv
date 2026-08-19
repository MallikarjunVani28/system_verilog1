module tb;
  class account_h;
    int balance;
    bit [1:0] a;
    function new(input int open_bal);
      balance = open_bal;
    endfunction
  endclass
  initial begin
    account_h ac;
    ac = new(1);
    ac.a = 1;
    $display("%p",ac);
    $display("%d",ac);
  end
endmodule
//output:
//'{balance:'h1, a:'h1}
2404099504
