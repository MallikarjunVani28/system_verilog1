//Find the average of all elements.
module tb;
  int a[];
  int sum =0;
  real avg;
  initial begin
    a = new[20];
    foreach(a[i])
      a[i]=i+1;
    foreach(a[i])
     sum += a[i];
    avg = sum /real'(a.size());
    $display("sum = %d",sum);
    $display("avg = %f",avg);    
  end
endmodule

/*
sum =         210
avg = 10.500000
*/
