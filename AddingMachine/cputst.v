module test_cpu;
  parameter my_address = 6'h 0b;
  parameter my_deserved_value = 8'h 10;
  parameter max_rum_time = 900;
   reg reset, clk;
   wire [5:0] adr_bus;
   wire rd_mem, wr_mem;
   wire [7:0] data_bus_in, data_bus_out; 
   reg [7:0] mem_data; 
  	reg control;
		
		integer file, check;   

   CPU cpu ( reset, clk, adr_bus, rd_mem, wr_mem, data_bus_in, data_bus_out );

   always #10 clk = ~clk;

   initial
   begin
			
			Convert;
			file = $fopen("memfile.mem", "r+");
      clk=1'b0; reset=1'b1; mem_data=8'b0;
      #25 reset=1'b0;
  		  #max_rum_time 
  		  $display ("Timeout!!!\n");
  		  $fclose(file);
      $stop;
   end
   

  	always @(posedge clk) begin
			#1;
			control = 0;
			if(rd_mem) begin
				#1;
				check = $fseek(file, 4 * adr_bus, 0);
				check = $fscanf(file, "%h", mem_data);
				control = 1;
			end
			if(wr_mem) begin
				#1;
				check = $fseek(file, 4 * adr_bus, 0);
				$fwrite(file, "%h", data_bus_out);
				$fflush(file);
				if (adr_bus == my_address)
				begin
				  $display ("writing in: %h\n", adr_bus);
				  if (data_bus_out == my_deserved_value)
				    $display ("correct write!\n");
				  else
				    $display ("wrong write!\n");
				  $fclose(file);
          $stop;
        end
			end
		end
	
		assign data_bus_in = (control) ? mem_data: 8'hZZ;


	task Convert;
		begin: block
		
			reg [5: 0] addr;
			reg [3 * 8: 1] opCode;
			reg [7: 0] data, writeData;
			reg pure;
		
			integer i, file, inst, check;

			file = $fopen ("memfile.mem","w");
			//$display (file);
			
			for(i = 0; i < 64; i = i + 1)
				$fwrite(file, "00\n");

			$fflush(file);
			$fclose(file);

			inst = $fopen ("inst.mem", "r");
			file = $fopen ("memfile.mem", "r+");

			while ($fscanf(inst, "%h ", addr) != -1) begin

				check = $fseek(file, addr * 4, 0);

				check = $fgets( opCode, inst);

				pure = 0;

				case(opCode)
					"lda": begin
					         writeData[7: 6] = 2'd 1;
					         $display ("lda");
					       end
					"sta": begin
					         writeData[7: 6] = 2'd 2;
					         $display ("sta");
					       end
					"jmp": begin
					         writeData[7: 6] = 2'd 3;
					         $display ("jmp");
					       end
					"add": begin
					         writeData[7: 6] = 2'd 0;
					         $display ("add");
					       end
					"dat": begin
										pure = 1;
										$display ("dat");
										check = $fscanf(inst, " %h", writeData);
									end
					default: begin
					          $display ("def");
										pure = 1;
										check = $fscanf(inst, " %h", writeData);
									end
				endcase
        //$display ("%s", opCode);
				if(pure == 0) begin
					check = $fscanf(inst, " %h", data);
					writeData[5: 0] = data[5: 0];
				end


				$fwrite(file, "%h", writeData);
			
			end

		$fflush(file);
		$fclose(file);
		$fclose(inst);

	end
	endtask

  
endmodule