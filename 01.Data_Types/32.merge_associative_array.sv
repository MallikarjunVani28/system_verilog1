//Merge two associative arrays.
module merge_associative_array;
  int arr1[int];
  int arr2[int];
  
  initial begin
    arr1[1] = 21;
    arr1[2] = 22;
    arr1[3] = 23;
    
    arr2[4] = 24;
    arr2[5] = 25;
    arr2[6] =26;
    
    $display("before merge");
    foreach(arr1[i])
      $display("index = %d element =%d",i,arr1[i]);
    
    $display("after merge");
    
    foreach(arr2[i])
      arr1[i] = arr2[i];
    foreach(arr1[i])
    $display("index = %d element =%d",i,arr1[i]);
  end
endmodule
