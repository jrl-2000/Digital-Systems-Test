//------------------------------------------------------------------------------
// Course : ECE 5724 - Digital Systems Testing and Testable Design
// Title:   Homework 1: Logic design, Verilog modeling and testbenches
// Author:  Mozhgan Rezaie
// Date:    21-02-2024
//------------------------------------------------------------------------------

module counter #(parameter N = 8)(co, enbC, clk, rst,iniCnt, dataOut, initValue);
  input  clk, rst,enbC,iniCnt;
  input  [N-1:0] initValue;
  output [N-1:0] dataOut;
  output co;
  reg    [N-1:0] dataOut;

  always @(posedge clk, posedge rst) begin
    if(rst)
      dataOut <=  {(N){1'b0}};
	  
    else if(iniCnt)
      dataOut <=  initValue;
	  
    else if(enbC)
      dataOut <=  dataOut + 1;
	  
    else
      dataOut <=  dataOut;
  end
  
  assign co = &{dataOut};
endmodule

