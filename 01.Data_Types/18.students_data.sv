//Create an array of structures containing five students.Display all students using a loop.

module tb;
  typedef struct{
    string name;
    int num;
    int marks;
  }student_t;
  
  student_t student[5];
  
  initial begin
    student[0] = '{"mallu",12,88};
    student[1] = '{"john",23,78};
    student[2] = '{"abc",22,79};
    student[3] = '{"xyz",24,89};
    student[4] = '{"uyg",28,87};
    
    foreach(student[i])
      begin
        $display("student[%d] = name = %s num = %d marks = %d",i,student[i].name,student[i].num,student[i].marks);
      end
  end
endmodule
    
                   
