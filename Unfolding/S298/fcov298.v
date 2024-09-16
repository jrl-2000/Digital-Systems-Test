module Tester ();
  reg g0,g1,g2;
  
  wire    g117g, g132g, g66g, g118g, g133g, g67g;
  
  wire    g117n, g132n, g66n, g118n, g133n, g67n;
  reg detected;
  integer i;
  integer testFile, faultFile, status;
  real faultCount, detectedFault;
  reg[3:0] testVector;
  reg [8*60:1] wireName;
  reg stuckAtVal;
    Circuit298_net  GUT(g0,g1,g2,g117g, g132g, g66g, g118g, g133g, g67g);
    Circuit298_net  FUT(g0,g1,g2,g117n, g132n, g66n, g118n, g133n, g67n);
    
    
  initial begin
    faultCount = 0;
    detectedFault = 0;
    faultFile = $fopen("Circuit298.flt", "w");
    $FaultCollapsing(Tester.FUT, "Circuit298.flt");
    $fclose(faultFile);
    faultFile = $fopen("Circuit298.flt", "r");
    while( !$feof(faultFile))begin
      detected = 1'b0;
      status = $fscanf(faultFile,"%s s@%b\n",wireName, stuckAtVal);
      $injectFault ( wireName , stuckAtVal);
      testFile = $fopen("Circuit298.tst", "r");
      while((!$feof(testFile))&(detected == 0)) begin
         #30;
        status = $fscanf(testFile,"%b\n", testVector);
        $display("testVec = %b\n", testVector);
        {in256, in239, in222, in205, in188, in171, in154, in137, 
                 in120, in103, in86, in69, in52, in35, in18, in1,
                 in528, in511, in494, in477, in460, in443, in426, in409,
                 in392, in375, in358, in341, in324, in307, in290, in273} = testVector;
        #60;
        if ({out6287g, out6288g, out6280g, out6270g,
                 out6260g, out6250g, out6240g, out6230g, 
                 out6220g, out6210g, out6200g, out6190g, 
                 out6180g, out6170g, out6160g, out6150g, 
                 out6123g, out5971g, out5672g, out5308g, 
                 out4946g, out4591g, out4241g, out3895g,
                 out3552g, out3211g, out2877g, out2548g,
                 out2223g, out1901g, out1581g, out545g} != 
                 {out6287n, out6288n, out6280n, out6270n,
                 out6260n, out6250n, out6240n, out6230n, 
                 out6220n, out6210n, out6200n, out6190n, 
                 out6180n, out6170n, out6160n, out6150n, 
                 out6123n, out5971n, out5672n, out5308n, 
                 out4946n, out4591n, out4241n, out3895n,
                 out3552n, out3211n, out2877n, out2548n,
                 out2223n, out1901n, out1581n, out545n}) begin
          detected = 1'b1;
          detectedFault = detectedFault + 1;
          $display("Fault:%s SA%b detected by %b at %t.",
          wireName, stuckAtVal, {in256, in239, in222, in205, in188, in171, in154, in137, 
                 in120, in103, in86, in69, in52, in35, in18, in1,
                 in528, in511, in494, in477, in460, in443, in426, in409,
                 in392, in375, in358, in341, in324, in307, in290, in273}, $time);
        end//if
      end //while eof test
      $removeFault(wireName);
      $display("fault removed");
      #30;
     faultCount = faultCount+ 1;
      $display("faultcount%d",faultCount);
      $fclose(testFile);
    end//while eof faults
    $display("coverage = %f\n", detectedFault/faultCount);
    $stop;
    end// end of initial
endmodule

