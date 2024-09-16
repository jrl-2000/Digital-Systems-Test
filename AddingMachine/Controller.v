`define reset_s 2'b 00
`define fetch_s 2'b 01
`define decode_s 2'b 10
`define execute_s 2'b 11

module Controller ( reset, clk, op_code, rd_mem, wr_mem, ir_on_adr,
                    pc_on_adr, ld_ir, ld_ac, ld_pc, inc_pc, clr_pc, pass_add);

  input reset, clk;
  input [1:0] op_code;
  output rd_mem, wr_mem, ir_on_adr, pc_on_adr, ld_ir, ld_ac, ld_pc;
  output inc_pc, clr_pc, pass_add;
  reg rd_mem, wr_mem, ir_on_adr, pc_on_adr, ld_ir, ld_ac;
  reg ld_pc, inc_pc, clr_pc, pass_add;
  reg [1:0] ps, ns;
  
  always @(posedge clk)
  begin
    if (reset)
      ps <= `reset_s;
    else
      ps <= ns;
  end
  
  always @(ps)
  begin
    rd_mem = 1'b 0; wr_mem = 1'b 0; ir_on_adr = 1'b 0; pc_on_adr = 1'b 0; ld_ir = 1'b 0; ld_ac = 1'b 0; ld_pc = 1'b 0; inc_pc = 1'b 0;
    clr_pc = 1'b 0; pass_add = 1'b 1;
    
    case (ps)
      `reset_s :
      begin
        ns = `fetch_s;
        clr_pc = 1'b 1;
      end
      `fetch_s:
      begin
        ns = `decode_s;
        pc_on_adr = 1'b 1;
        rd_mem = 1'b 1;
        ld_ir = 1'b 1;
        inc_pc = 1'b 1;
      end
      `decode_s:
      begin
        ns = `execute_s;
      end
      `execute_s:
      begin
        ns = `fetch_s;
        case (op_code)
          2'b 01: begin
            ir_on_adr = 1'b 1;
            rd_mem = 1'b 1;
            ld_ac = 1'b 1;
          end
          2'b 10: begin
            ir_on_adr = 1'b 1;
            pass_add = 1'b 1;
            wr_mem = 1'b 1;
          end
          2'b 11: ld_pc = 1'b 1;
          2'b 00: begin
            pass_add = 1'b 0;
            ld_ac = 1'b 1;
          end
        endcase
      end
    endcase
  end
endmodule
            
  
