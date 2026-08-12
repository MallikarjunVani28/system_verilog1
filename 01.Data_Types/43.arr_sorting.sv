module tb;
  int a[];
  initial begin
    a = new[10];
    a = '{1,2,3,4,2,1,2,3,1,0};
    a.sort();
    $display("%p",a);
  end
endmodule
