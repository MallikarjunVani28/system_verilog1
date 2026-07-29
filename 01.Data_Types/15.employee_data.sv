//Create a structure representing an employee containing:ID,Salary,Department Number.Initialize it using an assignment pattern.
module employe_data;
  typedef struct packed{
    int id;
    int salary;
    int dep_num;
  }employe;
  
  employe emp;
  
  initial begin
    emp = '{100,20000,11};
    $display("id = %d salary = %d dep_num = %d",emp.id,emp.salary,emp.dep_num);
  end
endmodule
