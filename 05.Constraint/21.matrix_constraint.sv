//Write a constraint to generate 7,17,27,37,..,and so on in a 4X4 matrix.
class pattern;
rand int arr[4][4];
constraint c{foreach(arr[i,j])
arr[i][j] == 7 + ((i*4)+j)*10;
}
endclass
module tb;
pattern p;
initial begin
p = new();
if(p.randomize())
begin
foreach(p.arr[i,j])begin
$write("%0d\t",p.arr[i][j]);

if(j == 3)
$display();
end

end
end
endmodule
