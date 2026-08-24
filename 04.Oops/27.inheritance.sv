module test_inheritance;

	// In class account_base;
	class account_base;
		// Declare property balance int type and initialize with value 2000
int balance = 2000;

		// In the function summary_base ,return balance
function int summary_base();
return balance;
endfunction
	
	
	
	
		// In the task deposit, 
		// Pass an input argument 'pay' of int type 
		// Add pay with previous balance
task deposite(input int pay);
balance = pay + balance;
endtask
	endclass: account_base

	// Extend class account_extd from account_base;


	class account_extd extends account_base;
		// Declare property balance of int type and initialize with value 3000
int balance = 3000;


		// In function summary_extd, return balance from extended class
		// the new value returned should be summation of base class balance and extended class balance 
		// Hint: use super to access the base class balance
function int summary_extd();
return super.balance+balance;
endfunction


	endclass: account_extd
	
	// Declare a handle for account_extd class as acc_h
account_extd  acc_h;
	
	// Within initial block,
initial begin

			// Create an object for acc_h
acc_h = new();
	
			// Pass the amount for the method deposit and 
			// Call the method summary_base to display the base class balance
acc_h.deposite(1200);
acc_h.summary_base();
$display("balance = %d",acc_h.summary_base());

	
	
	
	
	
			// Call method summary_extd to display balance
			// Observe that the super.balance returns the base class balance
acc_h.summary_extd();
$display("balance = %d",acc_h.summary_extd);

        
		
	end	
		
endmodule : test_inheritance
