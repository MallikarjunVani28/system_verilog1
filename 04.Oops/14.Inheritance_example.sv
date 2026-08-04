//Create a base class animal with:name & display().Create a derived class dog.
class animal;
  string name;
  function new(string name);
    this.name = name;
  endfunction
  function void display();
    $display("name = %s",name);
  endfunction
endclass

class dog extends animal;
  function new(string name);
    super.new(name);
  endfunction
endclass

module tb;
  dog d;
  initial begin
    d = new("tommy");
    d.display();
  end
endmodule
