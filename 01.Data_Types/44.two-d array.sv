//write 2-d array to display in the form of matrics 
/* ex 
1 2 3
4 5 6
7 8 9
*/

module tb;

int a[3][3]={'{1,2,3},'{4,5,6},'{7,8,9}};
initial begin
for(int i =0;i<3;i++)begin
for(int j=0;j<3;j++)begin
$write("%0d",a[i][j]);
end
$display("");
end
end
endmodule
