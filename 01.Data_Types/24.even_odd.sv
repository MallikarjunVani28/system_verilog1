//Count even and odd numbers.
module even_odd;
  int a[];
  int even;
  int odd;
  initial begin
    a = new[5];
    a = '{10,12,13,14,11};
    foreach(a[i])begin
      if(a[i]%2==0)
        even++;
      else
        odd++;
    end
    $display("even = %d",even);
    $display("odd = %d",odd);
  end
endmodule
           
    
    
      
