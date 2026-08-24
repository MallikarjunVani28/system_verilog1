module test_polymorphism;


	// In class packet_c
class packet_c;
	
		// In task send
			// Display message "Sending base class packet"
task send;
$display("sending base class packet");
endtask
endclass



	// Extend badpacket_c from packet_c
class badpacket_c extends packet_c;
	
		// Override task send
			// Display message "Sending derived class packet"
task send;
$display("sending derived class packet");
endtask
endclass



	// Within initial
		// Create instances for badpacket_c and packet_c 
initial begin
badpacket_c bad;
packet_c p;
bad = new();
p = new();
		
		// Call send tasks using base and extended class handles
p.send();
bad.send();

		// Assign extended class handle to base class handle
p = bad;
		
		// Call send task using base class object
p.send();
end

		



endmodule
