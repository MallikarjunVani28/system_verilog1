//Create a student database using an array of structures.
module tb;
  typedef struct{
    int roll_num;
    int marks;
    string name;
  }student_t;
  
  student_t student[3];
  
  initial begin
    
    //sudent 1
    student[0].roll_num = 12;
    student[0].marks = 88;
    student[0].name = "aaaa";
    
    $display("roll_num = %d marks = %d name = %s",student[0].roll_num,student[0].marks, student[0].name);
    
    //student 2
    student[1].roll_num = 22;
    student[1].marks = 78;
    student[1].name = "bbbb";
    
    $display("roll_num = %d marks = %d name = %s",student[1].roll_num,student[1].marks, student[1].name);
    
    
    //student 3
    student[2].roll_num = 2;
    student[2].marks = 98;
    student[2].name = "cccc";
    
    $display("roll_num = %d marks = %d name = %s",student[2].roll_num,student[2].marks, student[2].name);
  end
endmodule
    
    
    
  
