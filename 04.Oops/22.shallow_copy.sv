/*Create a class:

class student;
  int roll;
  int marks;
endclass

Create s1 and s2.

Assign:

s2 = s1;

Modify s2.marks.

Observe s1.marks.*/
class student;
  int roll_num;
  int marks;
endclass

module tb;
  student s1,s2;
  initial begin
    s1 = new();
    s1.roll_num  = 12;
    s1.marks = 88;
    
    s2 = s1;
    s2.marks = 89;
    
    $display("s1 = %p and s2 = %p",s1,s2);
  end
  
endmodule
