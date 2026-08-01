//sort a queue without using built-in methodsand using built in methods
module sorting;
  int q[$];
  int temp;
  
  /*without using built in method
  initial begin
    q ='{10,20,30,22,32,9};
    
    for(int i = 0;i<q.size()-1;i++)
      begin
        for(int j = 0;j<q.size()-1;j++)begin
          if(q[j]>q[j+1])
            begin
              temp = q[j];
              q[j] = q[j+1];
              q[j+1] = temp;
            end
        end
      end
    $display("%p",q);
  end
  */
  //using bulit in method
  initial begin
    q ='{10,20,30,22,32,9};
    q.sort();
    $display("%p",q);
    q.rsort();
    $display("%p",q);
  end
endmodule
  
  
