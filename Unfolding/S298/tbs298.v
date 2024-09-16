module tbS298();
  reg Clock=0;
  reg  g0,g1,g2,reset;
  wire g117g, g132g, g66g, g118g, g133g, g67g;
  wire g117n, g132n, g66n, g118n, g133n, g67n;
  always #100 Clock=~Clock;
  Circuit298 uutgolden(Clock,reset,g0, g1, g2, g117g, g132g, g66g, g118g, g133g, g67g);
  Circuit298_net uutnetlist(Clock,reset,g0,g1,g2,g117n,g132n,g66n,g118n,g133n,g67n);
  initial
    begin
    reset=1;
    #300
    reset=0;
    {g2, g1, g0}="001";
    #300
    {g2, g1, g0}="110";
    #300
    {g2, g1, g0}="111";
    #300
    {g2, g1, g0}="000";
    end
endmodule