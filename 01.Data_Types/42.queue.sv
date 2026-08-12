//create the two queues assign values to q1(1,2,3,4),and for q2(5,6,7,8),combine both and elements of q2 should appear first
module tb;
  int q1[$];
  int q2[$];
  
  initial begin
  /*  q1.push_back(1);
    q1.push_back(2);
    q1.push_back(3);
    q1.push_back(4);
    
    q2.push_back(5);
    q2.push_back(6);
    q2.push_back(7);
    q2.push_back(8);
    
    
    q2 = {q2,q1};*/
    
    for(int i = 1;i<5;i =i+1)
      q1.push_back(i);
    
    for(int i = 5;i<9;i=i+1)
      q2.push_back(i);
    
    
    q2 = {q2,q1};
    
    
    $display("q2 = %p",q2);
  end
endmodule
   
    
  
