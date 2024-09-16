module Booth #(parameter n = 8) (op1, op2, clk, start, o, busy);
  
  input[n-1:0] op1, op2;
  input clk, start;
  
  output[2*n - 1:0] o;
  output busy;
  
  reg[n - 1:0] a, m;
  reg[n:0] q;
  wire[n:0] sum, dif;
  reg[n:0] count;
  
  assign sum = {a[n - 1], a[n - 1:0]} + {m[n - 1], m[n - 1:0]};
  assign dif = {a[n - 1], a[n - 1:0]} - {m[n - 1], m[n - 1:0]};
  
  assign o = {a, q[n:1]};
  assign busy = ( count < n);
  
  always @(posedge clk)
  begin
    if (start == 1'b 1)
      count <= 4'd 0;
    else if (count < n)
      count <= count + 4'd 1;
  end
  
  always @(posedge clk)
  begin
    if (start == 1'b 1)
      begin
        a <= 8'd 0;
        m <= op1;
        q <= {op2, 1'b 0};
      end
    else if (count < n)
      case (q[1:0])
        2'b 01:
        begin
          q <= {sum[0], q[n:1]};
          a <= {sum[n:1]};
        end
        2'b 10:
        begin
          q <= {dif[0], q[n:1]};
          a <= {dif[n:1]};
        end
        default:
        begin
          q <= {a[0], q[n:1]};
          a <= {a[n - 1], a[n - 1:1]};
        end
      endcase 
    end
         
endmodule
      
