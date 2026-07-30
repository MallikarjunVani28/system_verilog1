//Find the largest element.

module largest;
  int a[];
  int largest;
  initial begin
    a = new[5];
    a = '{10,20,30,40,50};
    foreach(a[i])
      if(a[i]>a[i+1])
        largest = a[i];
    $display("largest = %d",largest);
  end
endmodule
      
