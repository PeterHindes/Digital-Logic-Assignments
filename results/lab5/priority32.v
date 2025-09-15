// Code your design here
module priorityEncoder8(input [7:0]in, output [2:0] out, output valid);
  assign out = 
    in[7] ? 3'b111 :
    in[6] ? 3'b110 : 
    in[5] ? 3'b101 : 
    in[4] ? 3'b100 : 
    in[3] ? 3'b011 : 
    in[2] ? 3'b010 : 
    in[1] ? 3'b001 : 
    in[0] ? 3'b000 : 
    		3'b000;
  
  assign valid = |in;
endmodule


module priorityEncoder16(input [15:0]in, output [3:0] out, output valid);
  wire [2:0] out_l;
  wire uselow;
  wire [2:0] out_u;
  wire useup;
  priorityEncoder8 p1(
    .in(in[7:0]),
    .out(out_l[2:0]),
    .valid(uselow)
  );
  priorityEncoder8 p2(
    .in(in[15:8]),
    .out(out_u[2:0]),
    .valid(useup)
  );
  assign out = useup ? {1'b0,out_u} + 8 : {1'b0,out_l};
  assign valid = uselow | useup;
endmodule

module priorityEncoder32(input [31:0]in, output [4:0] out, output valid);
  wire [3:0] out_l;
  wire uselow;
  wire [3:0] out_u;
  wire useup;
  priorityEncoder16 p1(
    .in(in[15:0]),
    .out(out_l[3:0]),
    .valid(uselow)
  );
  priorityEncoder16 p2(
    .in(in[31:16]),
    .out(out_u[3:0]),
    .valid(useup)
  );
  assign out = useup ? {1'b0,out_u} + 16 : {1'b0,out_l};
  assign valid = uselow | useup;
endmodule