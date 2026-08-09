//Store a structure in a mailbox.
module tb;
  typedef struct{
    int id;
    string name;
    int marks;
  }student_t;
  
  mailbox #(student_t) mb;
  
  student_t student;
  initial begin
    mb = new();
    student.id = 13;
    student.name = "alice";
    student.marks = 69;
    mb.put(student);
    
    student.id = 12;
    student.name = "mob";
    student.marks = 78;
    
    mb.put(student);
    
    
    student.id = 14;
    student.name = "peter";
    student.marks = 99;
    
    mb.put(student);
    
    $display("mail box size %0d",mb.num());
    
    for(int i = 0;i<3;i=i+1)
      begin
        mb.get(student);
        $display("student id = %d",student.id);
        $display("student name = %s",student.name);
        $display("student marks = %d",student.marks);
      end
 $display("mailbox size after getting the data %0d",mb.num());
  end
endmodule
        
