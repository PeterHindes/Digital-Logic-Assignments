
module priorityEncoder32_tb;
  // Signals
  reg [31:0] in_data;
  wire [4:0] out;
  wire valid;
  
  reg [4:0] expectedout;
  reg fail;

  // Instantiate the module under test
  priorityEncoder32 dut (
    .in(in_data),
    .out(out),
    .valid(valid)
  );

  // Stimulus
  initial begin
    fail = 0;
    // Iterate over all possible inputs
    // for (reg [33:0] i = 0; i < 4294967296; i = i + 1) begin 
    // We cant use all the inputs because it takes to long with 32bits
    // so lets multiply by sqrt(2) to test the middle values and the multiples of two
    for (reg [33:0] i = 2; i < 4294967296; i = i * 1.4142135623730950488) begin 
      // $display(i);
      // if (i == 0) begin
      //   $finish;
      // end
      in_data = i;
      #20;
      
      expectedout = 
	    in_data >= 2147483648 ? 31 :
            in_data >= 1073741824 ? 30 :
            in_data >= 536870912  ? 29 :
            in_data >= 268435456  ? 28 :
            in_data >= 134217728  ? 27 :
            in_data >= 67108864   ? 26 :
            in_data >= 33554432   ? 25 :
            in_data >= 16777216   ? 24 :
            in_data >= 8388608    ? 23 :
            in_data >= 4194304    ? 22 :
            in_data >= 2097152    ? 21 :
            in_data >= 1048576    ? 20 :
            in_data >= 524288     ? 19 :
            in_data >= 262144     ? 18 :
            in_data >= 131072     ? 17 :
            in_data >= 65536      ? 16 :
            in_data >= 32768      ? 15 :
            in_data >= 16384      ? 14 :
            in_data >= 8192       ? 13 :
            in_data >= 4096       ? 12 :
            in_data >= 2048       ? 11 :
            in_data >= 1024       ? 10 :
            in_data >= 512        ? 9  :
            in_data >= 256        ? 8  :
            in_data >= 128        ? 7  :
            in_data >= 64         ? 6  :
            in_data >= 32         ? 5  :
            in_data >= 16         ? 4  :
            in_data >= 8          ? 3  :
            in_data >= 4          ? 2  :
            in_data >= 2          ? 1  :
            in_data >= 1          ? 0  :
                                    0  ;
      
      #20;
      
      if (out != expectedout) begin
        $display("Err: input %b produced %b", in_data, out);
        fail = 1;
      end
    end
    if (fail) begin
      $display("Tests Failed, Review Your Design");
    end 
    if (~fail) begin
      $display("All tests passed successfully!");
	end
    
    $finish; // Finish the simulation
  end

endmodule
