module test_xor4_v1();
  logic [3:0] x;
  logic       y;

  //instantiate device under test
  xor4_v1 dut(x,y);
  //xor4_v2 dut(x,y);
  //xor4 dut(x,y);

  //apply inputs one at a time
  initial begin
    x = 4'b0000; #10;
    assert (y === 0) else $error("000 failed.");
    x = 4'b0001; #10;
    assert (y === 1) else $error("001 failed.");
    x = 4'b0010; #10;
    assert (y === 1) else $error("002 failed.");
    x = 4'b0011; #10;
    assert (y === 0) else $error("003 failed.");
    
    x = 4'b0100; #10;
    assert (y === 1) else $error("004 failed.");
    x = 4'b0101; #10;
    assert (y === 0) else $error("005 failed.");
    x = 4'b0110; #10;
    assert (y === 0) else $error("006 failed.");
    x = 4'b0111; #10;
    assert (y === 1) else $error("007 failed.");
    
    x = 4'b1000; #10;
    assert (y === 1) else $error("008 failed.");
    x = 4'b1001; #10;
    assert (y === 0) else $error("009 failed.");
    x = 4'b1010; #10;
    assert (y === 0) else $error("010 failed.");
    x = 4'b1011; #10;
    assert (y === 1) else $error("011 failed.");
    
    x = 4'b1100; #10;
    assert (y === 0) else $error("012 failed.");
    x = 4'b1101; #10;
    assert (y === 1) else $error("013 failed.");
    x = 4'b1110; #10;
    assert (y === 1) else $error("014 failed.");
    x = 4'b1111; #10;
    assert (y === 0) else $error("015 failed.");
  end

endmodule