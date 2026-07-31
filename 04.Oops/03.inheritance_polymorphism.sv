
class animal;
// virtual function void speak();
  function void speak();
    $display("animal makes sound");
  endfunction
endclass

class dog extends animal;
  function void speak();
    $display("dog barks");
  endfunction
endclass

class cat extends animal;
  function void speak();
    $display("cat meows");
  endfunction
endclass

module inheritance_polymorphism;
 
  
  initial begin
     animal animal_h;
     dog dog_h;
     cat cat_h;
    
    animal_h = new();
    dog_h= new();
    cat_h=new();
    
   // animal_h.speak();
    animal_h = dog_h;
  //  dog_h.speak();
    animal_h.speak();
  end
endmodule
    
