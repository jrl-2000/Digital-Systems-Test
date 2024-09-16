module TB();
  parameter det = 1;
  parameter rnd_cnt = 10;
  parameter n = 8;
  reg signed [n - 1:0] op1, op2;
  reg clk = 1'b 0, start;
  wire signed [2*n - 1:0] o;
  reg[2*n - 1:0] res;
  wire busy;
  integer cnt = 0;
  integer i;
  reg[4*n - 1:0] my_rom [1:10];
  
  Booth #(n) UUT (op1, op2, clk, start, o, busy);
  
  always @(clk)
    #10 clk <= ~clk;
  
  initial
  begin
    if (det == 1)
    begin  
      $readmemh ("mult.txt", my_rom);
      #0
      for (i = 1; i < 9; i = i + 1)
      begin
        op1 <= my_rom[i][4*n - 1:3*n];
        op2 <= my_rom[i][3*n - 1:2*n];
        res <= my_rom[i][2*n - 1:0];
        start <= 1'b 1;
        @(posedge clk)
        start <= 1'b 0;
        @(negedge busy)
        @(posedge clk)
        if (o != res)
        begin
          $display ("wrong answer! ", op1, " * ", op2, " != ", o);
          $stop;
        end
        else
          $display ("correct answer! ", op1, " * ", op2, " = ", o);
      end
      
    end  
    while (1'b 1)
    begin
      cnt = cnt + 1;
      op1 <= $random;
      op2 <= $random;
      start <= 1'b 1;
      @(posedge clk)
      start <= 1'b 0;
      @(negedge busy)
      @(posedge clk)
      if (o != op1*op2)
      begin
        $display ("wrong answer! ", op1, " * ", op2, " != ", o);
        $stop;
      end
      else
        $display ("correct answer! ", op1, " * ", op2, " = ", o);
      if (cnt == rnd_cnt)
      begin
        $display ("all multiplications were correct!");
        $stop;
      end
    end
  end
endmodule