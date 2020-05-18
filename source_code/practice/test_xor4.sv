module test_xor4();
  logic a, b, c, d, y;

  xor4_v1 dut(x,y);
  //xor4_v2 dut(x,y);
  //xor4 dut(x,y);

  initial begin
    a = 0; b = 0; c = 0; d = 0; #10;
    assert (y === 0) else $error("0000 failed.");
    d = 1; #10;
    assert (y === 1) else $error("0001 failed.");
    c = 1; d = 0; #10;
    assert (y === 1) else $error("0010 failed.");
    d = 1; #10;
    assert (y === 0) else $error("0011 failed.");
    b = 1; c = 0; d = 0; #10;
    assert (y === 1) else $error("0100 failed.");
    d = 1; #10;
    assert (y === 0) else $error("0101 failed.");
    c = 1; d = 0; #10;
    assert (y === 0) else $error("0110 failed.");
    d = 1; #10;
    assert (y === 1) else $error("0111 failed.");
    a = 1; b = 0; c = 0; d = 0; #10;
    assert (y === 1) else $error("1000 failed.");
    d = 1; #10;
    assert (y === 0) else $error("1001 failed.");
    c = 1; d = 0; #10;
    assert (y === 0) else $error("1010 failed.");
    d = 1; #10;
    assert (y === 1) else $error("1011 failed.");
    b = 1; c = 0; d = 0; #10;
    assert (y === 0) else $error("1100 failed.");
    d = 1; #10;
    assert (y === 1) else $error("1101 failed.");
    c = 1; d = 0; #10;
    assert (y === 1) else $error("1110 failed.");
    d = 1; #10;
    assert (y === 0) else $error("1111 failed.");
  end

endmodule