//Demonstrate the difference between bit and logic when assigning X and Z.
module bit_vs_logic;
  logic l;
  bit b;
  initial begin
    l = 0;
    b = 0;
    #1;
    $display("bit = %b logic = %b",b,l);
    
    l = 1;
    b = 1;
    #1;
    $display("bit = %b logic = %b",b,l);
    
    l = 1'bx;
    b = 1'bx;
    #1;
    $display("bit = %b logic = %b",b,l);
    
    l = 1'bz;
    b = 1'bz;
    #1;
    $display("bit = %b logic = %b",b,l);
  end
endmodule
    
    
    
