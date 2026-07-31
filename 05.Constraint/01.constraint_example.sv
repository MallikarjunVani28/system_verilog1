class constraint_example;
  rand bit [7:0] min_value,med_value,max_value;
  constraint range_ex{ 0 < min_value ;
                      med_value > min_value;
                      max_value > med_value;}
endclass

module tb;
  constraint_example const_ex;
  initial begin
    const_ex = new();
    const_ex.randomize();
    $display("the value of min value is %d med_value %d max_value %d",const_ex.min_value,const_ex.med_value,const_ex.max_value);
  end
endmodule
  
