//Randomize two variables such that:a < b
class example;
rand int a;
rand int b;
constraint c{ a<b ;
}
constraint siz{ a inside {[1:100]};}
constraint sma{ b inside {[1:200]};}
endclass

module tb;
example ex;

initial begin
ex = new();
repeat(4)begin
if(ex.randomize())
$display("a = %d b = %d ",ex.a,ex.b);
else
$display("failed");
end
end
endmodule  
