//Find duplicate elements using an associative array.
module duplicate_num;
  int arr[];
  int count[int];
  initial begin
    arr = '{1,1,2,1,2,3,5,2,1,2,5,3,6,1};
    foreach(arr[i])
      count[arr[i]]++;
    foreach(count[i])begin
      if(count[i]>1)
        $display("%d occured  %d times",i,count[i]);
         end
  end
endmodule
