//Allocate a dynamic array of size 20 and initialize it with numbers 1–20.
module tb;
  int a[];
  initial begin
    a = new[20];
    foreach(a[i])
      a[i]=i+1;
    foreach(a[i])
      $display("a[%0d] = %0d",i,a[i]);
  end
endmodule


/*
a[0] = 1
a[1] = 2
a[2] = 3
a[3] = 4
a[4] = 5
a[5] = 6
a[6] = 7
a[7] = 8
a[8] = 9
a[9] = 10
a[10] = 11
a[11] = 12
a[12] = 13
a[13] = 14
a[14] = 15
a[15] = 16
a[16] = 17
a[17] = 18
a[18] = 19
a[19] = 20
*/
