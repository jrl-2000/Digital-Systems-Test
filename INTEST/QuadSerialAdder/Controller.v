module Controller (clk, rst, start, 
				   enbA, enbB, enbR, loadA, loadB, loadR, zeroA, zeroB, zeroR, zeroD,
				   done);

	input clk, rst, start;
	output reg enbA, enbB, enbR, loadA, loadB, loadR, zeroA, zeroB, zeroR, zeroD;
	output reg done;
	
	reg [1:0] p_state,n_state;
	parameter [1:0] IDLE = 2'b00, START = 2'b01, INIT = 2'b10, ADD = 2'b11;
	reg zeroCntr, loadCntr, enCntr;
	wire co;
	wire [3:0] count;
	
	Counter counter_4bit (clk, rst, zeroCntr, loadCntr, enCntr, 4'b0000, count, co);

// Combinational part of Huffman coding	
	always @(p_state, start, co) begin 
		n_state = IDLE;
		done = 1'b0;
		enbA = 1'b0; enbB = 1'b0; enbR = 1'b0;
		loadA = 1'b0; loadB = 1'b0; loadR = 1'b0;
		zeroA = 1'b0; zeroB = 1'b0; zeroR = 1'b0; zeroD = 1'b0;
		zeroCntr = 1'b0; loadCntr = 1'b0; enCntr = 1'b0;
		
		case (p_state)
			IDLE : begin
				done = 1'b1;
				zeroA = 1'b1; 
				zeroB = 1'b1; 
				zeroD = 1'b1;
				zeroCntr = 1'b1;
				if (start)
					n_state = START;
				else
					n_state = IDLE;
			end
			
			START : begin
				if (start)		
					n_state = START;
				else
					n_state = INIT;
			end
				
			INIT : begin
				loadA = 1'b1;
				loadB = 1'b1;
				zeroR = 1'b1;
				
				n_state = ADD;
			end
			
			ADD : begin
				enbA = 1'b1;
				enbB = 1'b1;
				enbR = 1'b1;
				enCntr = 1'b1;
				if (co)
					n_state = IDLE;
				else
					n_state = ADD;
			end
			
		endcase	
	end

// Sequential part of Huffman coding
	always @(posedge clk, posedge rst) begin
		if (rst)
			p_state <= IDLE;
		else
			p_state <= n_state;
	end

endmodule
