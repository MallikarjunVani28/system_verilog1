//class defination for simple transaction
class transaction;
  //properties (variables) of the class
  
  int id;//transaction id
  string source;//transaction source
  string dest;//transaction destination
  bit [31:0] data;//data of the transaction
  
  //transactor with default values
  function new(int id_val = 0,string src = "Unknown" ,string dst ="Unknown" , bit data_val = 32'hAAAA_AAAA);
    this.id = id_val;
    this.source = src;
    this.dest = dst;
    this.data = data_val;
  endfunction
  
  //methods to display the transaction details
  
  function void display();
    $display("trasaction ID : %d",id);
    $display("source : %s",source);
    $display("destination : %s",dest);
    $display("Data : 0x%h",data);
    
  endfunction 
endclass

module test;
  initial begin
    //declare object handles
    transaction t1,t2,t3;
    
    //creating an object with the default constructor (no argument)
    t1 = new();
    t1.display();
    
    //creating an object using the constructor with arguments
    t2 = new(101,"cpu","memory",32'habac_abbb);
    t2.display();
    
    //creating an object using some default values
    t3 = new(102,"dma","peripheral");//data will be default
    t3.display();
  end
endmodule

  
  
