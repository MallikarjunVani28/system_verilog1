//Find the smallest element.

module largest;
  int a[];
  int smallest;
  initial begin
    a = new[5];
    a = '{10,30,40,5,50};
    smallest = a[0];
    foreach(a[i])
      if(a[i]<smallest)
        smallest= a[i];
    $display("smallest = %d",smallest);
  end
endmodule
