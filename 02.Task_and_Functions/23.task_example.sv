module test;
  int a=2,b=3;
  int d , result;
  
  task automatic  mult( input int a, input int b, output int c);
    #5;
    c = (a*b)+2;
    a++;
    $display("inside the function time = %0d a = %0d b = %0d c = %0d",$time ,a,b,c);
  endtask
  
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
inside the function time = 6 a = 3 b = 3 c = 8
outside the function  at time = 6 a = 2 b = 3 c = 8
inside the function time = 7 a = 3 b = 3 c = 8
outside the function  at time = 7 a = 2 b = 3 c = 8
*/
      
      
     
        
        
    
