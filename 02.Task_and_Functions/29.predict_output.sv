// predict the output for the following codes

//code 1
class base;
  static int i;
  static function static get();
    int a;
    a++;
    i++;
    $display(a);
    $display(i);
  endfunction
endclass
module tb;
initial begin
  base b1,b2;
  b1.get();
  b1.get();
  b2.get();
end
endmodule

/*  code1 output
#           1
#           1
#           2
#           2
#           3
#           3
*/


class base;
//  static int i;
  static function static get();
    int a;
    a++;
  //  i++;
    $display(a);
 //   $display(i);
  endfunction
endclass
module tb;
initial begin
  base b1,b2;
  b1.get();
  b1.get();
  b2.get();
end
endmodule 

/*output
#           1
#           2
#           3
*/

//code 3
class base;
 int i;
  static function static get();
    int a;
    a++;
   i++;
    $display(a);
   $display(i);
  endfunction
endclass
module tb;
initial begin
  base b1,b2;
  b1.get();
  b1.get();
  b2.get();
end
endmodule 

// output : 3 -> error
/*int i is an instance variable, so each object of the class has its own copy of i.

A static function belongs to the class rather than a particular object. Therefore, it cannot directly access the non-static instance variable i.

To access i inside a static function, either make i static or access it through an object handle.*/

//code 4
class base;
 int i;
  static function  get();
    int a;
    a++;
 //  i++;
    $display(a);
 //  $display(i);
  endfunction
endclass
module tb;
initial begin
  base b1,b2;
  b1.get();
  b1.get();
  b2.get();
end
endmodule 

/* output 
#           1
#           1
#           1
*/
/*The function get() is a static function, so it is shared by all objects of the class.

The variable 'a' is declared inside the function and is automatic by default. Therefore, a new copy of 'a' is created every time the function is called.

Hence:
b1.get() → a = 1
b1.get() → a = 1
b2.get() → a = 1*/


//code 5
class base;
 static int i;
  static function  get();
   int a;
    a++;
   i++;
    $display(a);
  $display(i);
  endfunction
endclass
module tb;
initial begin
  base b1,b2;
  b1.get();
  b1.get();
  b2.get();
end
endmodule 

/* output 
#           1
#           1
#           1
#           2
#           1
#           3
*/



