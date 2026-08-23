//Create a copy() method that performs a shallow copy.

class address;
  int addr;
  int pin;
endclass
class student ;
  int marks;
  address add;
  
  function student copy();
    student s;
    s = new();
    s.marks = this.marks;
    s.add = this.add;
    return s;
    
  endfunction
endclass

module tb;
  student s1,s2;
  
  initial begin
    s1 = new();
    s1.add = new();
    
    s1.marks = 100;
    s1.add.addr = 12;
    s1.add.pin = 420;
    
    s2 = s1.copy();
    
    s2.add.pin = 412;
    
    $display("s1 = %p s2 = %p",s1,s2);
  end
endmodule
