//Write a function that accepts a dynamic array and returns its maximum element.  
module tb;
  function int arr_max(input int a[]);
int max;
max =a[0];
foreach(a[i])
begin
if(a[i]>max)
max = a[i];
end
return max;
endfunction
initial begin
int a[];
int max;
a = '{12,13,15,11,18,1};
max = arr_max(a);
$display("max = %d",max);
end
endmodule
