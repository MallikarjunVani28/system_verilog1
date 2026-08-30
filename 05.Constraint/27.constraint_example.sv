/* Write constraints for payload such that the size should be randomly
   generated between 10 & 20 and each value of the payload should be greater than the previous value by 2.*/
class packet;
rand byte payload[];
constraint c{ payload.size() inside {[10:20]};}
constraint c_p{foreach(payload[i]){
if(i>0)
payload[i] == payload[i-1]+2;}}
endclass
module tb;
packet p;
initial begin
p = new();
if(p.randomize())
$display("payload = %p",p.payload);
end
endmodule

