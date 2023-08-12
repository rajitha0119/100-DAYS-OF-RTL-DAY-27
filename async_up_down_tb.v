`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2023 20:53:03
// Design Name: 
// Module Name: async_up_down_tb
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


module async_up_down_tb(

    );
    reg clk,m,j1,k1,j2,k2,j3,k3;
    wire q1,q2,q3,q1bar,q2bar,q3bar;
    async_up_down uut(clk,j1,k1,j2,k2,j3,k3,m,q1,q2,q3,q1bar,q2bar,q3bar);
    initial begin
    m=1'b1;
    end
    initial begin
    clk=1'b0;
    forever #10 clk=~clk;
    end
    initial begin
    j1=1;k1=1;
    j2=1;k2=1;
    j3=1;k3=1;
    end
endmodule
