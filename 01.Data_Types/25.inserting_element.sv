//Insert an element at a given index without using array methods.
module tb;
  int arr[];
  int temp[];
  int index = 2;
  int value = 99;
  initial begin
    arr = new[5];
    
    arr = '{10,12,13,14,15};
    
    temp = new[arr.size()+1];
    
    // copying the elemnets before the index
    foreach(index[i])
      temp[i] = arr[i];
    //inserting the element
      temp[index] = value;
    //copyint the remaing element
    for(int i = index;i<arr.size();i++)
      temp[i+1]=arr[i];
    
    arr= temp;
    $display("arr = %p",arr);
  end
endmodule
    
