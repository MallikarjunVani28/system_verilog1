//Count occurrences of each number in an array using an associative array.
module count;
  int arr[];
  int count[int];
  initial begin
    arr = '{1,1,2,1,2,3,5,2,1,2,5,3,6,1};
    foreach(arr[i])
      count[arr[i]]++;
    foreach(count[i])
      $display("%d -> %d",i,count[i]);
  end
endmodule
