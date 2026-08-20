//deep copy example
class address;
  int house_no;
  function new(int h);
    house_no = h;
  endfunction
endclass

class student;
  string name;
  int age;
  address addr;
  
  function new(string n,int a,int h);
    name = n;
    age = a;
    addr = new(h);
  endfunction
  
  function student deep_copy();
    student s;
    s = new(this.name,this.age,this.addr.house_no);
    return s;
  endfunction
endclass

module tb;
  student s1,s2;
  
  initial begin
    s1 = new("mallu",22,101);
    
    s2 = s1.deep_copy();
    
    $display("before modification");
    $display("s1 : name = %s age = %d house_no = %d",s1.name,s1.age,s1.addr.house_no);
    $display("s2 : name = %s age = %d house_no = %d",s2.name,s2.age,s2.addr.house_no);
    
    
   s1.name = "rahul";
    s1.age = 25;
    s1.addr.house_no = 202;
    $display("after modification");
    $display("s1 : name = %s age = %d house_no = %d",s1.name,s1.age,s1.addr.house_no);
    $display("s2 : name = %s age = %d house_no = %d",s2.name,s2.age,s2.addr.house_no);
    
  end
endmodule


/* output
before modification
s1 : name = mallu age =          22 house_no =         101
s2 : name = mallu age =          22 house_no =         101
after modification
s1 : name = rahul age =          25 house_no =         202
s2 : name = mallu age =          22 house_no =         101
*/
  
