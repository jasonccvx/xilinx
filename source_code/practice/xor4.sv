module xor2(input  logic [1:0] a,
            output logic       y)

  assign y = ^a;
endmodule


module xor4(input  logic [3:0] a,
            output logic       y);
  logic q, w;

  always_comb
    begin
      xor2 temp1(a[1:0],q);
      xor2 temp2(a[3:2],w);
      xor3 final(q,w,y);
    end

endmodule