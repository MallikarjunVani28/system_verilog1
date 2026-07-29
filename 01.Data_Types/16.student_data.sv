//Create two student structures and copy one into another.Verify that all fields are copied.

module student_data;
  typedef struct {
    string name;
    int id;
    int marks;
  }student_t;
  
  student_t t1,t2;
  initial begin
    t1 = '{"john",12,88};
    
    t2 = t1;
    
    $display("student 1 ");
    $display("name = %s id = %d marks = %d",t1.name,t1.id,t1.marks);
    
    
    $display("student 2 ");
    $display("name = %s id = %d marks = %d",t2.name,t2.id,t2.marks);
  end
endmodule
    
    
    
