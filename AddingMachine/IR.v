module IR (data_in, load, clk, data_out);
  input [7:0] data_in;
  input clk, load;
  output [7:0] data_out;
  reg [7:0] data_out;
  
  always @(posedge clk)
  begin
    if (load == 1'b 1)
      data_out <= data_in;
  end
  
endmodule
