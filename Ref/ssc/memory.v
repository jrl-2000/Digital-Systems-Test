//------------------------------------------------------------------------------
// Course : ECE 5724 - Digital Systems Testing and Testable Design
// Title:   Homework 1: Logic design, Verilog modeling and testbenches
// Author:  Mozhgan Rezaie
// Date:    21-02-2024
//------------------------------------------------------------------------------

module memory(clk, rst, readMem, writeMem, addrBus, inBus, outBus);

  input clk, rst, readMem, writeMem;
  input [15:0] inBus; 
  input [7:0]addrBus;
  output [15:0] outBus;
  //memory declarations
  reg [15:0] memData[0:256];
  reg [15:0] outReg;
  integer i;

  initial begin
    for(i = 0; i < 256; i = i+1)
      memData[i] = 16'b0; 
      $readmemb( "data.txt" ,memData,0 ,255 );   
  end

  always @(posedge clk, posedge rst)
    begin
      if(rst == 1'b1)
        begin
          for(i = 0; i < 256; i = i+1)
            memData[i] = 16'b0; // initialize to zero
            $readmemb( "data.txt" ,memData,0 ,255 );//initialize memory
        end
      else if(clk == 1'b1)
        begin
          if(writeMem == 1'b1)
            begin
              memData[addrBus] = inBus;
              $writememb("SortedData.txt",memData,0 ,255);
            end
      
        end
      
    end

  always @(posedge readMem, addrBus) // Async read
  begin
    if(readMem == 1'b1) 
        outReg = memData[addrBus];
  end
  
  assign outBus = ( writeMem == 1'b0) ? outReg :16'bz;

endmodule





