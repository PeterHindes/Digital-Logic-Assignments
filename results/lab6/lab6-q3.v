module hexEncode(
  input [3:0] bin, 
  output [7:0] hex
);
    assign hex =
      (bin == 4'h0) ? 'b11000000 :
      (bin == 4'h1) ? 'b11111001 :
      (bin == 4'h2) ? 'b10100100 :
      (bin == 4'h3) ? 'b10110000 :
      (bin == 4'h4) ? 'b10011001 :
      (bin == 4'h5) ? 'b10010010 :
      (bin == 4'h6) ? 'b10000010 :
      (bin == 4'h7) ? 'b11111000 :
      (bin == 4'h8) ? 'b10000000 :
      (bin == 4'h9) ? 'b10010000 :
      (bin == 4'hA) ? 'b10001000 :
      (bin == 4'hB) ? 'b10000011 :
      (bin == 4'hC) ? 'b11000110 :
      (bin == 4'hD) ? 'b10100001 :
      (bin == 4'hE) ? 'b10000110 :
      (bin == 4'hF) ? 'b10001110 :
        			'b11111111;
endmodule

module main(
        input [15:0] sw
        ,input [3:0] btn
        ,output [7:0] D1_seg
        ,output [3:0] D1_a
    );
    assign D1_a = 
        btn[3] ? 'b0111 :
        btn[2] ? 'b1011 :
        btn[1] ? 'b1101 :
        btn[0] ? 'b1110 :
                 'b1111;
    wire [3:0] nibble;
    assign nibble = 
        btn[3] ? sw[15:12] :
        btn[2] ? sw[11: 8] :
        btn[1] ? sw[ 7: 4] :
        btn[0] ? sw[ 3: 0] :
                 4'bzzzz;
    hexEncode h1( nibble , D1_seg );
endmodule