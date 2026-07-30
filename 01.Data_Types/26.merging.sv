//merge 2 dynamic arrays
module tb;
  int a[];
  int b[];
  int c[];
  int i;
  initial begin
    a = new[3];
    
    b = new[2];
    a = '{1,2,3};
    b = '{4,5};
    
    c = new[a.size()+b.size()];
    
    for(i = 0;i<a.size();i++)
      c[i] = a[i];
    
    for(i = 0 ;i<b.size();i++)
      c[a.size()+i]=b[i];
    
    $display("a = %p",a);
    $display("b = %p",b);
    $display("merged = %p",c);
  end
endmodule
    
   
