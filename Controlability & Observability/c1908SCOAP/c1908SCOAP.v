`timescale 1ns / 100ps

module c1908_SCOAP();
  reg [0:32] in;
  wire [24:0] out;
 
  initial begin
    $getSystemTime("start");
    $CombinationalScoap(c1908SCOAP.DUT, "c1908_SCOAP.txt");
    $getSystemTime("end");
  end
  
  c1908_fo DUT ( in[0], in[1], in[2], in[3], in[4], in[5], in[6], in[7], in[8], in[9], in[10], in[11],
                 in[12], in[13], in[14], in[15], in[16], in[17], in[18], in[19], in[20], in[21], in[22],
                 in[23], in[24], in[25], in[26], in[27], in[28], in[29], in[30], in[31], in[32], 
                 out[0], out[1], out[2], out[3], out[4], out[5], out[6], out[7], out[8], out[9], out[10],
                 out[11], out[12], out[13], out[14], out[15], out[16], out[17], out[18], out[19], out[20],
                 out[21], out[22], out[23], out[24]);
    

endmodule