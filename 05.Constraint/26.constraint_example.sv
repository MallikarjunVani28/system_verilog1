/* In the below transaction class definition, write your own logic in the space provided for you to meet the following requirements.              -- 10 Marks a. The dynamic array should contain 20 items. b. Out of 20 items, the values of 3 items should be equal to 5 at random positions. c.
The values of 5 items must be 10 at random positions d. The values of 8 items must be 15 and the remaining 4 items must be 20. */
class packet;
  rand int a[];
  constraint c{ a.size() == 20;}
  constraint c_num{
    a.sum() with (int'(item == 5)) == 3;
    a.sum() with (int'(item == 10)) == 5;
    a.sum() with (int'(item == 15)) == 8;
    a.sum() with (int'(item == 20)) == 4;
  }
endclass

module tb;
  packet p;
  initial begin
    p = new();
    if(p.randomize())
      begin
      
          $display("a = %p",p.a);
      end
    else
      $display("failed");
  end
endmodule
