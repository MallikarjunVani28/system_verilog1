class vehical;
  string company;
  function new(string company);
    this.company = company;
  endfunction
  
  function void display();
    $display("company = %s",company);
  endfunction
endclass

class car extends vehical;
  string model;
  
  
  function new(string company,string model);
    super.new(company);
    this.model = model;
  endfunction
  
  function void display();
    super.display();
    $display("model = %s",model);
  endfunction
endclass


module tb;
  car c;
  initial begin
    c = new("toyota","fortuner");
    c.display();
    
  end
endmodule
  
    
