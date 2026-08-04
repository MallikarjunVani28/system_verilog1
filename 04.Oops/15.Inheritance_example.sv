//Create a class person.Derive student from it.Add:roll number ,marks.

Display all information.
class person;
  int roll_num;
  int marks;
  
  function new(int roll_num, int marks);
    this.roll_num = roll_num;
    this.marks = marks;
  endfunction
  
  function void display();
    $display("roll_num = %d marks = %d",roll_num,marks);
  endfunction
endclass

class student extends person;
  
  function new(int roll_num,int marks);
    super.new(roll_num,marks);
    
  endfunction
endclass

module tb;
  student st;
  initial begin
    st = new(16,19);
    st.display();
  end
endmodule
  
