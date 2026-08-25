/*Create a student class with:

id as a normal property
count as a static property

Increment count whenever a new student object is created. Create 5 objects and display the total number of objects.*/
class student;
int id;
static int count;
function new(int id);
this.id = id;
count++;
endfunction
endclass    
    
module tb;
student s1,s2,s3,s4,s5;
initial begin
s1 = new(101);
s2 = new(102);
s3 = new(103);
s4 = new(104);
s5 = new(105);
$display("count = %0d",student::count);

end
endmodule
