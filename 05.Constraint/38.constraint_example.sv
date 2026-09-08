/*Declare a dynamic array of int-type and randomize that array with thefollowing constraints
1) The array size should be 20
2) in that array the first 2 elements should be even and the next 2 elementsshould be odd so on..  */
class packet;
rand int a[];
constraint C1{a.size() == 20;}
constraint C2{foreach(a[i]){
if((i/2)%2 == 0)
a[i]%2 == 0;
else
a[i]%2 == 1;
}
}
constraint C3{foreach(a[i])
a[i] inside {[1:100]};}
endclass

module tb;
packet p;
initial begin
p = new();
if(p.randomize())
$display("%p",p.a);
else
$display("failed");
end
endmodule 
