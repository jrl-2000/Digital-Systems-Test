`timescale 1ns/1ps
/*
Jonathan Lopez
Worcester Polytechnic Institute
ECE 5724 Spring 2024
Prof. Z. Navabi
Homework 1: 
    Logic design, Verilog modeling, and testbenches
Simualtor:
    Siemens (Mentor Graphics) Questa Intel FPGA Starter Editon 2021.2
Synthesizer:
    Intel Quartus Prime 22.1
Description:
    SSC Testbench Module Sort Selection Circuit
*/

module ssc_tb (
);

reg clk = 1'b1;
reg rst = 1'b0;
reg start = 1'b0;
reg [15:0] Read_data;

wire done;
wire read;
wire write;

wire [15:0] Write_data;
wire [7:0] address;

reg [15:0] memory [0:255];

// Top module Instantiation Device Under Test (DUT)
ssc_top DUT(
    .clk(clk),
    .rst(rst),
    .start(start),
    .Read_data(Read_data),
    .address(address),
    .Write_data(Write_data),
    .read(read),
    .write(write),
    .done(done)
);

// Simulate CLK
always #1
clk = ~clk;

initial begin
    // Powert On Reset
    rst = 1'b0;
    #2;
    rst = 1'b1;
    #2;
    rst = 1'b0;
    #2;
    $readmemb("data.txt", memory);

    // Start Simulation Below
    #2;
    start = 1'b1;
    #2;
    start = 1'b0;
    #2;

    // Estimates about 70000ns
    #70000;
    // Stop
    $stop(); // Use $stop(); instead of $finish so we can see the Waveform.

end

// Mem Buffer
always @(posedge clk, read, write, address) begin
    if (read || !start) begin
        Read_data <= memory[address];
    end
end

// Mem Buffer
always @(posedge clk, read, write) begin
    if (write) begin
        memory[address] <= Write_data;
    end
end
endmodule