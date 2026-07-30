//Find the sum of all elements in a dynamic array.
module tb;
  int a[];
 // int sum =0;
  initial begin
    a = new[20];
    foreach(a[i])
      a[i]=i+1;
    //foreach(a[i])
     // sum += a[i];
    $display("sum = %d",a.sum());
  end
endmodule
