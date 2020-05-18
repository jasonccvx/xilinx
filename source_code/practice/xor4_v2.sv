module xor4_v2(input  logic [3:0] a
               output logic       y);
  always_comb
    y = ^a;

endmodule