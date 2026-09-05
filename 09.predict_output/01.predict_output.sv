module semaphore_ex;

  semaphore sem;

  initial begin
    sem = new(1);

    fork
      display("Th1");
      #30 display("Th2");
    join

  end

  task automatic display(string s);
    sem.get();

    $display($time, "\t%s", s);

    sem.put();
  endtask

endmodule



//0th1
0th2
