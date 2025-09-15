module priorityEncoder8_tb;
  reg [7:0] in_data;
  wire [2:0] out;
  wire valid;
  
  reg [2:0] expectedout;
  reg fail;

  // Instantiate the module under test
  priorityEncoder8 dut (
    .in(in_data),
    .out(out),
    .valid(valid)
  );

  initial begin
    fail = 0;
    // Iterate over all possible inputs
    for (int i = 1; i < 256; i = i + 1) begin
      in_data = i;
      #20;
      
      expectedout = 
      	in_data >= 128 ? 7 :
      	in_data >=  64 ? 6 :
      	in_data >=  32 ? 5 :
      	in_data >=  16 ? 4 :
      	in_data >=   8 ? 3 :
      	in_data >=   4 ? 2 :
      	in_data >=   2 ? 1 :
      	in_data >=   1 ? 0 :
      					 0 ;
      
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
    
    $finish;
  end

endmodule
