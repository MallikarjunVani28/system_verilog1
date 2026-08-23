/*
Create an array of class handles and perform a shallow copy.

Observe the behavior.
*/

class student;
 
  int usn;
  int marks;
endclass

module tb;
  student s1[],s2[];
  
  initial begin
    s1 = new[3];
    s2 = new[3];
    
    
    foreach(s1[i])
      s1[i] = new();
    
    s1[0].usn = 123;
    s1[0].marks = 82;
    
    s1[1].usn = 122;
    s1[1].marks = 80;
    
    s1[2].usn = 113;
    s1[2].marks = 85;
    
    
    s2 = s1;
    
    s2[0].usn = 144;
    
    $display("s1 = %p s2 = %p",s1,s2);
  end
endmodule
    
    
