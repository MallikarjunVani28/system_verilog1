/*Create a class named student with:
roll number
marks
Create one object and display its values.*/


class student;
  int roll_num;
  int marks;
endclass

module tb;
  student st;
  initial begin
  st = new();
  st.roll_num = 10;
  st.marks = 89;
    $display("roll_num = %d marks = %d",st.roll_num,st.marks);
  end
endmodule
  
  
  
