module tb;
  int que[$];
  initial begin
   que.push_back(10);
   que.push_back(11);
   que.push_back(12);
   que.push_back(13);
   que.push_back(14);
    
    $display("%p",que);
    
    que.insert(1,12);
    $display("%p",que);
    
    que.pop_front();
    $display("%p",que);
    
    que.pop_back();
    $display("%p",que);
    
    que.push_front(40);
    $display("%p",que);
    
    $display("%d",que.size());
    
    //replacing element
    que[1] = 100;
    $display("%p",que);    
  end
endmodule
