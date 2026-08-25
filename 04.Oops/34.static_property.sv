/*
Create:

class parent;
  static int count;
endclass

class child extends parent;
endclass

Create objects of both classes and determine whether parent::count and child::count refer to the same static property or different properties.
*/
class parent;
static int count;
function new();
count++;
endfunction
endclass
class child extends parent;
endclass
module tb;
parent p;
child c;
initial begin
p = new();
c = new();
$display("parent = %d",parent::count);
$display("child = %d",child::count);
end
endmodule

