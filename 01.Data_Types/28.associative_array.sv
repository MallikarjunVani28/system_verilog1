//Declare an associative array indexed by integer.Insert five values.Display them.
module tb;
  int student[int];
  initial begin
    student[101] = 84;
    student[102] = 98;
    student[103] = 76;
    student[121] = 88;
    student[212] = 99;
    foreach(student[i])
      $display("student id = %d marks = %d",i,student[i]);
  end
endmodule
