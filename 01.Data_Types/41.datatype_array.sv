// all array method relocator methods
module test_array();

	// Declare a dynamic array data_da of int data type
int data_da[];
		
	// Declare queues data_q & addr_q of int data type
int data_q[$];
int addr_q[$];


	// Declare associative array data_mem of int data type and indexed with bit[7:0]
int data_mem[bit[7:0]];

	
	// Declare int variable result,and and an 8 bit variable idx
int result;
bit [7:0] idx;

	

	initial
		begin
	
			// Allocate 10 memory locations for dynamic array & initialize
			// all the locations with some random values less than 20 & display the array
data_da = new[10];
foreach(data_da[i])
data_da[i] = {$random}%20;
$display("data_da = %p",data_da);


	
			
				
			
			// Call the array reduction method sum which returns the sum
			// of all elements of array and collect the return value to the variable result
result = data_da.sum();

			
			
			// Display the sum of elements, result
$display("sum of element = %d",result);
			
	
			// Similarly explore other array reduction methods 
			// product,or,and & xor
$display("product of elements = %0d and or = %d and =%d xor=%d",data_da.product(),data_da.or(),data_da.and(),data_da.xor());


	
	
			// Call the array reduction method sum with "with" clause which returns 
			// total number of elements satisfying the condition within the "with" clause 

			result = data_da.sum with (int'(item>7));
    			
			// Display the value of the result
			
			$display(" no. of items greater than 7 = %0d", result);
			
			// Similarly explore other array reduction methods with "with"clause 


		
			
	
			// Sorting Methods
	
			// call all the sorting methods like reverse, sort, rsort & 
			// shuffle & display the array after execution of each method to 
			// understand the behaviour of the array methods
 data_da.reverse();
$display("reverse of array %p ",data_da);
 data_da.sort();
$display("sort of an array %p",data_da);
 data_da.rsort();
$display("reverse sort of the array %p",data_da);
 data_da.shuffle();
$display("array after sorting %p",data_da);
	
			
	
			// Call Array locator methods like min, max, unique,find_* with,
			// find_*_index with using dynamic array & display 
			// the contents of data_q after execution of each method to 
			// understand the behaviour of the array methods
data_q = data_da.min();
$display("after calling min data_q = %p",data_q);
data_q = data_da.max();
$display("after calling max data_q = %p",data_q);
data_q = data_da.unique();
$display("after calling unique data_q =%p",data_q);
data_q = data_da.find_first with (item>4);
$display("after calling find_first item>4 = %p",data_q);
data_q = data_da.find_last with (item>4);
$display("after calling find last item>4 data_q = %p",data_q);
data_q = data_da.find_first_index with (item>4);
$display("after calling find_first_index with (item>4) data_q = %p",data_q);
data_q = data_da.find_last_index with (item<4);
$display("after calling find last index with item>4 data_q = %p",data_q);

 
			
			
			//Generate some 10 random address less than 100 within a repeat loop 
			//push the address in to the addr_q
			
repeat(10)begin
result = {$random}%100;
addr_q.push_back(result);

end
$display("random address in addr_q = %p",addr_q);
			
			//Display the addr_q
			
			
			
			
			// With in for loop update the associate array with random data less than 200
			// based on the address stored in addr_q
			// Hint: To get the address use pop method 
for(int i = 0;i<10;i=i+1)
data_mem[addr_q.pop_front()] = {$random}%200;

foreach(data_mem[i])
$display("data_mem[%d] = %d",i,data_mem[i]);

			
			
			// Display the contents of associate array using foreach loop
			
			
			// Display the first index of the array by using associative array method first
if(data_mem.first(idx))
$display("first index of the associative array is %d",idx);

			

			// Display the first element of the array
$display("first element of the associative array is %d",data_mem[idx]);
				
			// Display the last index of the array by using associative array method last
if(data_mem.last(idx))
$display("last index of the associative array is %d",idx);

			

			// Display the last element of the array
$display("last element of the associative array is %d",data_mem[idx]);

				
		end
	
endmodule
