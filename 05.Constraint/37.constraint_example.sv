/*Six people are playing a dice game. Each time the dice is rolled, thenumber must be unique (no number can repeat). 
If someone rolls a numberthat has already appeared:What rule or action should the group follow to keepthe game fair.*/
class packet;
rand bit [2:0] roll[6];
constraint a{ 
foreach(roll[i]){
roll[i] inside {[1:6]};}

unique {roll};}

endclass
module tb;
packet p;
initial begin
p = new();
if(p.randomize())
$display("%p",p.roll);
else
$display("randomization failed");
end
endmodule
