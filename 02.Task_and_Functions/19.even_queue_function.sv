//Write a function that accepts a queue of integers and returns the number of even elements.
module tb;
  function void even_num(input int a[$],output int even[$]);

foreach(a[i])begin
if(a[i] % 2 == 0)

even.push_back(a[i]);

end

endfunction
initial begin
int a[$];
int even[$];
a = '{12,13,14,16,18,190};
even_num(a,even);
$display("even numbers in a are %p",even);
end
endmodule
