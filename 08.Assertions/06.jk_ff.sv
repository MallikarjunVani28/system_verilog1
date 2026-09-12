//assertion for the jk flipflop
module jk_ff;

  input j, k;
  input clk;
  input Q;

  // Hold
  property ppt_hold;
    @(posedge clk)
    (j == 0 && k == 0) |=> $stable(Q);
  endproperty

  assert property(ppt_hold);

  // Reset
  property ppt_reset;
    @(posedge clk)
    (j == 0 && k == 1) |=> Q == 0;
  endproperty

  assert property(ppt_reset);

  // Set
  property ppt_set;
    @(posedge clk)
    (j == 1 && k == 0) |=> Q == 1;
  endproperty

  assert property(ppt_set);

  // Toggle
  property ppt_toggle;
    @(posedge clk)
    (j == 1 && k == 1) |=> Q == ~$past(Q);
  endproperty

  assert property(ppt_toggle);

endmodule
