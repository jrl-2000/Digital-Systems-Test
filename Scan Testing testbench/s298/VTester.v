module VTester ();
	
	parameter ff = 25;
	parameter inWidth = 3;
	parameter outWidth = 6;
	
	
	reg [1:inWidth] PI;
	reg NbarT, Si;
	reg clk = 1'b 0;
	reg [1:ff] pre_expected_st, cur_expected_st, scanIn, saved_st;
	wire So;
	wire [outWidth - 1:0] PO;
	reg [outWidth - 1:0] expected_PO, SampledPO;
	reg [outWidth + inWidth + (2 * ff):1] line;
	
	reg [8*50:1] wireName; 
    reg stuckAtVal; 
	
	integer testFile, faultFile, status, index, numOfDetected;
	reg detected = 1'b 0;
	reg flag = 1'b 0;

	s298_net FUT (1'b 0, clk, PI[1], PI[2], PI[3], PO[0], PO[1], PO[2], PO[3], PO[4], PO[5], Si, So, NbarT);  
    always #30 clk = ~clk; 

	initial begin
	 // $display($time);
		numOfDetected = 0;
		faultFile = $fopen ("s298-sc.flt", "w");
		$FaultCollapsing(VTester.FUT,"s298-sc.flt");
		$fclose(faultFile);
		#10;
		
		faultFile = $fopen ("s298-sc.flt", "r");
		
        while( !$feof(faultFile)) 
		begin 
			status = $fscanf(faultFile, "%s s@%b\n", wireName, stuckAtVal); 
			detected = 1'b 0;
			testFile = $fopen ("s298-fixed1.tst", "r");
			flag = 1'b 0;
			$inject(wireName, stuckAtVal);
			#2
			while((!$feof(testFile))&&(!detected))
			begin 
				pre_expected_st = cur_expected_st;  
				//status = $fscanf(testFile,"%b\n",PI, scanIn, cur_expected_st, expected_PO);
				status = $fscanf(testFile,"%b\n", line);
				PI = line[outWidth + inWidth + (2 * ff):outWidth + 1 + (2 * ff)];
				scanIn = line[outWidth + (2 * ff):outWidth + ff + 1];
				cur_expected_st = line[outWidth + ff: outWidth + 1];
				expected_PO = line[outWidth:1];
				$display ("hey");
				NbarT = 1'b1;  
				#10;  

				index = 1;
				repeat(ff) begin 
					Si = scanIn[ff]; 
					@(posedge clk);  
					saved_st[index] = So;  
					index = index + 1; 
					scanIn = scanIn >> 1;
				end 

				NbarT = 1'b0;  
				@(posedge clk);  
					SampledPO = PO;  
				if (flag == 1'b 0)
				begin
					flag = 1'b 1;
					if(expected_PO != SampledPO)  
					begin 
						//numOfDetected = numOfDetected + 1;  
						detected = 1; 
						$display ("missmatch ", $time);
				//		$stop;
					end
					else
					$display ("OKto1");	
				end
				else
				begin
					if({pre_expected_st, expected_PO} != {saved_st, SampledPO})  
					begin 
						//numOfDetected = numOfDetected + 1;  
						detected = 1;  
						$display ("missmatch ", $time);
			//			$stop;
					end 
					else
						$display ("OKto2");
				end
				#5;  

            end//test 
			
			if (detected != 1)
			begin
				NbarT = 1;
				index = 1;
				repeat(ff) begin 
					Si = scanIn[ff]; 
					@(posedge clk);  
					saved_st[index] = So;  
					index = index + 1; 
					scanIn = scanIn >> 1;
				end 		
				if (saved_st != cur_expected_st)
					detected = 1;
			end
			
			$fclose (testFile);
			if (detected == 1)
				numOfDetected = numOfDetected + 1;
			$remove(wireName); 
			#3;
				
         
        end//fault 
		$display ("detected faults: ", numOfDetected);
		$display($time);
		$stop;
		
    end//initial 
endmodule 