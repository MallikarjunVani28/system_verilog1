module tb;
  function void modify(int a[5]);
    a[0] = 100;
    $display("inside the function a = %p",a);
  endfunction
  
  initial begin
    int a[5] = '{1,2,3,4,5};
    modify(a);
    $display("outside the function a = %p",a);
  end
endmodule

/*
inside the function a = '{'h64, 'h2, 'h3, 'h4, 'h5}
outside the function a = '{'h1, 'h2, 'h3, 'h4, 'h5}
*/
