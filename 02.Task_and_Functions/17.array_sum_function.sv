//Write a function that accepts an array and returns the sum of all its elements.  
module tb;
  function int arr_sum(input int a[]);
int sum;
sum = 0;
foreach(a[i])
sum = sum + a[i];

return sum;
endfunction

initial begin
int data[];
int result;
data = '{10,20,30,40,50};
result = arr_sum(data);
$display("result = %d",result);
end
endmodule
