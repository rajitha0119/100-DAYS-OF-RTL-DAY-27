`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2023 20:03:00
// Design Name: 
// Module Name: async_4bit_down_counter_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module async_4bit_down_counter_tb(

    );
    reg clk,j1,k1,j2,k2,j3,k3,j4,k4;
    wire q1,q2,q3,q4,q1bar,q2bar,q3bar,q4bar;
    async_4bit_down_counter uut(clk,j1,k1,j2,k2,j3,k3,j4,k4,q1,q2,q3,q4,q1bar,q2bar,q3bar,q4bar);
    initial begin
    clk=1'b0;
    forever #10 clk=~clk;
    end
    initial begin
    j1=1;k1=1;
    j2=1;k2=1;
    j3=1;k3=1;
    j4=1;k4=1;
    end
endmodule
