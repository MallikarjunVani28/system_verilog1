module test();
  class AB;
    int i;
  endclass

  mailbox #(AB) mbx = new();

  initial begin
    AB a1, a2;
    int x = 0; // Explicitly initialized to 0

    // First loop: Create and put 10 distinct objects
    for(int i = 0; i < 10; i++) begin
      a1 = new();  // Moved INSIDE the loop to allocate a new object each time
      a1.i = i;
      mbx.put(a1);
    end

    // Second loop: Retrieve and count
    for(int i = 0; i < 10; i++) begin
      mbx.get(a2);
      if(a2.i > 8) begin
        x++;
      end
    end

    $display("x = %0d", x);
  end
endmodule
