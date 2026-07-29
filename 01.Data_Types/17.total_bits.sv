/*Create a packed structure:
typedef struct packed {
    logic [7:0] addr;
    logic [31:0] data;
    logic write;
} packet_t;

Display:

Total bits
Binary value
Hex value*/

module tb;
 typedef struct packed {
    logic [7:0] addr;
    logic [31:0] data;
    logic write;
} packet_t;
  packet_t pkt;
  
  initial begin
    pkt.addr = 8'h12;
    pkt.data = 32'h12121212;
    pkt.write = 1;
    
    $display("total number of bit = %d",$bits(pkt));
    $display("%b",pkt);
    $display("%h",pkt);
  end
endmodule
