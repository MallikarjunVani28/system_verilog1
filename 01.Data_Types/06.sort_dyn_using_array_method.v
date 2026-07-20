module sort_dyn_using_array_method;
  int arr[];
  initial begin
    arr = new[10];
    
    arr = '{10,30,21,20,45,11,12,14,15,16};
    
    
    $display("array before sorting %p ",arr);
    
    arr.sort();
    
    $display("array after sorting %p ",arr);
  end
endmodule
