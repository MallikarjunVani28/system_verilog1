module test_deep_copy;


	// In class parity_calc_c
	
	class parity_calc_c;

		// Declare parity (bit type, size 8), initialize it with some random value
bit [7:0] parity = 12;

		// Write copy method that returns parity_calc_c class type
function parity_calc_c copy();
parity_calc_c p;
p = new();


			// Create copy instance

			// Copy all the current properties into copy object
p.parity = this.parity;
	return p;
endfunction

	endclass: parity_calc_c

	// In class packet_c

	class packet_c;
		
		// Declare header (bit type , size 8), initialize it with some random value
bit [7:0] header = 72;

		
		// Declare data (bit type , size 8), initialize it with some random value
		bit [7:0] data = 34;
		// Declare and create an instance of parity_calc_c
parity_calc_c p;

		// Define copy method that returns packet_c class type
function packet_c copy();
packet_c c;

			// Create copy instance
c = new();

			// Copy all the current class properties into copy object
c.header = this.header;
c.data = this.data;
c.p = this.p.copy();
return c;
endfunction
	endclass: packet_c

	// Declare 2 handles pkt_h1 & pkt_h2 for packet_c class 
packet_c pkt_h1,pkt_h2;
	

	// Within initial
initial begin
		// Create pkt_h1 object
pkt_h1 = new();
pkt_h1.p = new();
		
		// Use shallow copy method to copy pkt_h1 to pkt_h2 
pkt_h2 = pkt_h1;
		
		// Display the properties of parent class and sub class properties of pkt_h1 and pkt_h2
$display("pkt_h1 = %p pkt_h2 = %P",pkt_h1,pkt_h2);
		
		// Assign random value to the header of pkt_h2
pkt_h2.header = 23;


		// Display the properties of parent class and sub-class properties of pkt_h1 and pkt_h2
		// observe pkt_h1.header does not change
$display("pkt_h1 = %p pkt_h2 = %p pkt_h1.header= %d pkt_h2.header = %d",pkt_h1,pkt_h1,pkt_h1.header,pkt_h2.header);

		// Change parity of pkt_h2 using subclass handle from the parent class packet_c
		// Ex: pkt_h2.par.parity=19;
pkt_h2.p.parity = 19;
		// Display the properties of parent class and sub-class properties of pkt_h1 and pkt_h2
		// observe that change reflected in pkt_h1 as the subclass handle in pkt_h1 and pkt_h2 are pointing to same subclass object
$display("pkt_h1 = %p pkt_h2 = %p pkt_h1.p.parity =%0d pkt_h2.p.parity = %0d",pkt_h1,pkt_h2,pkt_h1.p.parity,pkt_h2.p.parity  );

		// Perform deep copy by calling parent class copy method
		// Ex: pkt_h2=pkt_h1.copy;
pkt_h2 = pkt_h1.copy();
		// Display the properties of parent class and sub-class properties of pkt_h1 and pkt_h2
		// observe the parent and subclass properties
$display("pkt_h1 = %p pkt_h2 = %p ",pkt_h1,pkt_h2);

		// Change parity of pkt_h2
		// Ex: pkt_h2.par.parity=210;
pkt_h2.p.parity = 210;

		
		// Display the properties of parent class and sub-class properties of pkt_h1 and pkt_h2
		// observe that parity doesnot change for pkt_h1 as they are two different subclass objects
$display("pkt_h1 = %p pkt_h2 = %p pkt_h1.p.parity = %d pkt_h2.p.parity = %d",pkt_h1,pkt_h2,pkt_h1.p.parity,pkt_h2.p.parity  );
end


	
	
endmodule
