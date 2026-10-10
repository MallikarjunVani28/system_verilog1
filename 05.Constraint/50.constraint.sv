/*Write a SystemVerilog class to generate random stimulus for 3 sets of datavalues (a, b, c), each 8 bits wide, stored in an array of size 3. 
The class shouldalso contain a 9-bit variable q which depends on the values of a, b, and c.Apply the following constraints:
● If a is even, then b must be less than 30.● If b is odd, then c must be greater than 30.
● If c is greater than 35, then a must be greater than 10.
● q should equal the sum of (a + b + c) for each element of the array, mustlie between 80 and 300, and must be divisible by 7.
● After randomization, print the values of a, b, c, and q.Also, write a test module that creates the object, randomizes it 3 times, anddisplays the results.*/
class packet;

  rand bit [7:0] a[3];
  rand bit [7:0] b[3];
  rand bit [7:0] c[3];
  rand bit [8:0] q;

  constraint c1 {
    foreach (a[i]) {
      if (a[i] % 2 == 0)
        b[i] < 30;

      if (b[i] % 2 == 1)
        c[i] > 30;

      if (c[i] > 35)
        a[i] > 10;
    }
  }

  constraint c2 {
    q == (int'(a[0]) + int'(b[0]) + int'(c[0]) +
          int'(a[1]) + int'(b[1]) + int'(c[1]) +
          int'(a[2]) + int'(b[2]) + int'(c[2]));

    q inside {[80:300]};
    q % 7 == 0;
  }

  function void display();
    foreach (a[i])
      $display("a[%0d]=%0d, b[%0d]=%0d, c[%0d]=%0d",
               i, a[i], i, b[i], i, c[i]);

    $display("q = %0d", q);
    $display("-----------------------");
  endfunction

endclass


module tb;

  packet p1;

  initial begin
    p1 = new();

    repeat (3) begin
      if (p1.randomize())
        p1.display();
      else
        $display("Randomization failed");
    end

    $finish;
  end

endmodule
