//Split one dynamic array into two equal halves.

module tb;
  int arr[];
  int first_half[];
  int second_half[];
  
  initial begin
    arr = new[10];
    
    first_half = new[arr.size()/2];
    second_half = new[arr.size()/2];
    
    arr = '{1,2,3,4,5,6,7,8,9,10};
    
    foreach(first_half[i])
      first_half[i] = arr[i];
    foreach(second_half[i])
      second_half[i] = arr[i+arr.size()/2];
    
    $display("arr = %p",arr);
    $display("first_half = %p",first_half);
    $display("seconde_half = %p",second_half);
  end
endmodule
