
module array_sorting_without_array_method;
  int arr[];
  initial begin
    arr = new[10];
    arr = '{10,12,9,2,11,76,21,13,43,15};
    $display("before sorting %p",arr);
    
    for(int i = 0;i<arr.size()-1;i = i+1)begin
      for(int j = 0;j<arr.size()-1-i;j=j+1)begin
        if(arr[j]>arr[j+1])
          begin
            int temp;
            temp = arr[j];
            arr[j] = arr[j+1];
            arr[j+1] = temp;
          end
      end
    end
    $display("after sorting %p",arr);
  end
endmodule
