//Create base class vehicle.Derived classes:car,bike .Each should have its own display method.

class vehicle;
  string company;
  function new(string company);
    this.company = company;
  endfunction
  
  function void display();
    $display("comapay = %s",company);
  endfunction
  
    
endclass

class car extends vehicle;
  string model;
  function new(string company,string model);
    super.new(company);
    this.model = model;
  endfunction
  
  function void display();
   $display("model = %s company = %s" ,model ,company);
  endfunction
  
endclass
   
    class bike extends vehicle;
      
      string model;
      function new(string company,string model);
        super.new(company);
        this.model = model;
      endfunction
    
      function void display();
        $display("model = %s company = %s" ,model ,company);
      endfunction
    endclass
    
    module tb;
      car c;
      bike b;
      initial begin
      c = new("toyota","fortuner");
      b = new("herohonda","nxg");
        
        c.display();
        b.display();
      end
    endmodule
      
    
      
      
    
    
  
