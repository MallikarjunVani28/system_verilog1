//Reverse a queue without using built-in methods. and using built in methods
module tb;
  int q[$];
  int temp;
  int rev_q[$];
  
  
 /* without using bulit in method
 initial begin
    q = '{10,20,30,40,50};
    for(int i = 0;i<q.size()/2;i++)begin
      temp = q[i];
      q[i] = q[q.size()-1-i];
      q[q.size()-1-i] = temp;
    end
    $display("%p",q);
  end
  */
  
  //using built in method
  initial begin
    q = '{10,20,30,40,50};
    while(q.size()>0)begin
      temp=q.pop_back();
      rev_q.push_back(temp);
    end
    $display("%p",rev_q);
  end
    
    
  
endmodule
      
  
