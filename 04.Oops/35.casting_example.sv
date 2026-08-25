//Create a base class packet and derived class data_packet. Create a data_packet object, assign it to a base-class handle, and use $cast to convert the base handle back to data_packet.
class packet;
int data;
endclass

class data_packet extends packet;
int address;
endclass

module tb;
packet p;
data_packet dp1,dp2;
initial begin
dp1 = new();
dp1.data=100;
dp1.address = 120;
p = dp1;
$display("base class data = %0d",p.data);

if($cast(dp2,p))
begin
$display("down cast successfull");
$display("dp2 data = %d" ,dp2.data);
$display("dp2 address = %d",dp2.address);
end
else
$display("down cast failed");
end
endmodule
