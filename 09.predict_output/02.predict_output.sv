module test;

  event ev;

  initial begin
    begin
      #45 $display("Thread_1 with delay : @%0t", $time);

      fork : A
        -> ev;

        #10 $display("Thread A1 with delay : @%0t", $time);

        #10 $display("Thread A2 with delay : @%0t", $time);

        begin : B
          wait(ev.triggered);
          #5 $display("Thread_B with delay : @%0t", $time);
        end
      join_any

      $display("Completed fork thread A : @%0t", $time);
    end
  end

endmodule
