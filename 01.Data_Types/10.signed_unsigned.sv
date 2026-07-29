//Declare signed and unsigned logic datatype.
//Perform addition and subtraction.
module signed_unsigned;
  logic signed [3:0] a;
  logic signed [3:0] b;
  logic  [4:0] c;
  initial begin
    a = 4'b0101;
    b = 4'b1000;
    c = a + b;
    #1;
    $display("a = %d b = %d c = %d",a,b,c);
    
    c = a - b;
    #1;
   $display("a = %d b = %d c = %d",a,b,c);
  end
endmodule
/*
a =  5 b = -8 c = 29
a =  5 b = -8 c = 13
*/
