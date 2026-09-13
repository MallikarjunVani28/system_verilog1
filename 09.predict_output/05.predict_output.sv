
class packet;
  static int ID = 0;
  int aid = 0;

  function new();
    ID++;
    aid++;
    $display("ID = %0d \t aid = %0d", ID, aid);
  endfunction
endclass : packet


class generator;

  task start();
    packet pkt_h = new();
    $display("%0d", pkt_h);
  endtask : start

endclass : generator


module sp_test();

  generator gen[4];

  initial begin

    foreach (gen[i]) begin
      gen[i] = new;
      $display(gen[i]);
    end

    gen[0].start();
    gen[1].start();

    repeat(10)
      gen[2].start();

    gen[3].start();

  end

endmodule
