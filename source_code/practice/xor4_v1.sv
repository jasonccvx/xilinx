module xor4_v1(input  logic [3:0] a
               output logic       y);

  assign y = ^a;

endmodule