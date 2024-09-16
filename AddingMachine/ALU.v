module ALU ( op1, op2, pass_add, o);
  input [7:0] op1, op2;
  input pass_add;
  output [7:0] o;
   
  assign o = (pass_add == 1'b 1) ? op1 : (op1 + op2);
  
endmodule
