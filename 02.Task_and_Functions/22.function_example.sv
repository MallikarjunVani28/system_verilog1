module test;
  int a=2,b=3;
  int d , result;
  
  function   mult( input int a, input int b, output int c);
    c = (a*b)+2;
    a++;
    $display("inside the function a = %0d b = %0d c = %0d",a,b,c);
  endfunction
  
  initial 
    fork
      begin
        #1;
        mult(a,b,d);
        $display("outside the function  at time = %0d a = %0d b = %0d c = %0d",$time,a,b,d);
      end
      begin
      #2;
        mult(a,b,d);
        $display("outside the function  at time = %0d a = %0d b = %0d c = %0d",$time,a,b,d);
      end
    join
  
endmodule














/*
inside the function a = 3 b = 3 c = 8
outside the function  at time = 1 a = 2 b = 3 c = 8
inside the function a = 3 b = 3 c = 8
outside the function  at time = 2 a = 2 b = 3 c = 8
*/
      
      
     
        
        
    
