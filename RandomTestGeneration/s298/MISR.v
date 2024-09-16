module misr #(parameter n = 8, poly = 187, seed = 0) (input clk, rst, input [n-1:0] d_in, output reg [n-1:0] d_out);  
    always @(posedge clk) 
         if (rst) 
            d_out = seed; 
         else  
            d_out = d_in ^({n{d_out[0]}} & poly)^ {1'b0, d_out[n-1:1]};  
endmodule