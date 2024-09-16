module PC (data_in, load, inc, clr, clk, data_out);
  input [5:0] data_in;
  input load, inc, clr, clk;
  output [5:0] data_out;
  reg [5:0] data_out;
  
  always @(posedge clk)
  begin
    if (load == 1'b 1)
      data_out <= data_in;
    else if (inc == 1'b 1)
      data_out <= data_out + 6'd 1;
    else if (clr == 1'b 1)
      data_out <= 6'd 0;
  end
endmodule
