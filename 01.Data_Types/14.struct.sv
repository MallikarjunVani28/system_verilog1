//Create a structure representing a student with: Roll Number,Age,Marks .Assign values and display them.

module tb;
 typedef struct packed {
    int roll_num;
    int age;
    int marks;
  }progress_t;
  
  initial begin
    progress_t p;
    
    p.roll_num = 12;
    p.age = 13;
    p.marks = 79;
    
    $display("roll_num = %d age = %d marks = %d",p.roll_num,p.age,p.marks);
  end
endmodule
  
