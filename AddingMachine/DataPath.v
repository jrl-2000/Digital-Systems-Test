module DataPath (clk, ir_on_adr, pc_on_adr, ld_ir, ld_ac, ld_pc, inc_pc, 
                clr_pc, pass_add, adr_bus, op_code, data_bus_in, data_bus_out);
  input clk, ir_on_adr, pc_on_adr, ld_ir, ld_ac, ld_pc, inc_pc, clr_pc,
        pass_add;
  output [5:0] adr_bus;
  output [1:0] op_code;
  input [7:0] data_bus_in;
  output [7:0] data_bus_out;
  
  wire [7:0] alu_out, ac_in;
  wire [7:0] ir_out;
  wire [5:0] pc_out;
  wire [7:0] a_side;
  
  IR dp_ir ( data_bus_in, ld_ir, clk, ir_out);
  PC dp_pc ( ir_out[5:0], ld_pc, inc_pc, clr_pc, clk, pc_out);
  AC dp_ac ( ac_in, ld_ac, clk, a_side);
  ALU dp_alu (a_side, {2'b 00, ir_out[5:0]}, pass_add, alu_out);
  
  assign adr_bus =  ir_on_adr ? ir_out[5:0] : 
                    pc_on_adr ? pc_out :
                    6'd 0;
  assign op_code = ir_out[7:6];
  assign ac_in = pass_add ? data_bus_in : alu_out;
  assign data_bus_out = alu_out;
endmodule
  
  
  
