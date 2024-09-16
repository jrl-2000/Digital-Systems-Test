//------------------------------------------------------------------------------
// Course : ECE 5724 - Digital Systems Testing and Testable Design
// Title:   Homework 1: Logic design, Verilog modeling and testbenches
// Author:  Mozhgan Rezaie
// Date:    21-02-2024
//------------------------------------------------------------------------------

module register #(parameter N = 16)(in, clk, rst, load, outREG);
  input  [N-1:0] in;
  input  clk, rst, load;
  output reg [N-1:0] outREG;
  
  always @(posedge clk, posedge rst) begin
    if (rst)
        outREG <= {(N){1'b0}};
    else if (load)
         outREG <= in;
  end //always
                           
endmodule
