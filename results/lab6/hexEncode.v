module hexEncode(
  input [3:0] bin, 
  output [7:0] hex
);
    assign hex =
      (bin == 'h0) ? 'b11000000 :
      (bin == 'h1) ? 'b11111001 :
      (bin == 'h2) ? 'b10100100 :
      (bin == 'h3) ? 'b10110000 :
      (bin == 'h4) ? 'b10011001 :
      (bin == 'h5) ? 'b10010010 :
      (bin == 'h6) ? 'b10000010 :
      (bin == 'h7) ? 'b11111000 :
      (bin == 'h8) ? 'b10000000 :
      (bin == 'h9) ? 'b10010000 :
      (bin == 'hA) ? 'b10001000 :
      (bin == 'hB) ? 'b10000011 :
      (bin == 'hC) ? 'b11000110 :
      (bin == 'hD) ? 'b10100001 :
      (bin == 'hE) ? 'b10000110 :
      (bin == 'hF) ? 'b10001110 :
        			'b11111111;
endmodule