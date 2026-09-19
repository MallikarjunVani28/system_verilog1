//Without using randomization method or rand keyword(modifiers),generate an array of unique values.
module tb;
  int unsigned a[];
  initial begin
    a = new[10];
    foreach(a[i])
      a[i]=i*i;
    a.shuffle();
    $display("%p",a);
  end
endmodule
