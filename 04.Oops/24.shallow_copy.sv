/*Create a class containing:

int
int
dynamic array
nested object

Perform shallow copying and determine which members are independent and which are shared.*/
class address;
  int house_num;
  int pin;
endclass

class student;
  int score[];
  address addr;
  
  function student copy();
    student s;
    s = new();
    s.score = this.score;
    s.addr = this.addr;
    return s;
  endfunction
endclass

module tb;
  student s1,s2;
  initial begin
    s1 = new();
    s1.addr = new();
    s1.score = '{12,13};
    s1.addr.house_num = 12;
    s1.addr.pin = 13;
    
    s2 = s1.copy();
    s2.addr.pin = 144;
    s2.addr.house_num = 154;
    
    $display("s1 = %p s2 = %p",s1,s2);
  end
endmodule
