`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/20 19:52:46
// Design Name: 
// Module Name: tb
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

module tb();

    reg clk;
    reg rst;
    reg go;
    wire [7:0] SEG;
    wire [7:0] AN;
    wire  VGA_HS_tb;
    wire  VGA_VS_tb;
    wire [3:0]  VGA_R_tb;
    wire [3:0]  VGA_G_tb;
    wire [3:0]  VGA_B_tb;
    reg  button_tb;
    
    initial 
    begin
        rst=0;
        clk=0;
        go=1;
        button_tb=0;
    end

    always
    begin
        #5 clk=~clk;
    end
    
    LogisimToplevelShell tbins(.FPGA_GlobalClock(clk),
        .FPGA_INPUT_PIN_0(go), 
        .FPGA_INPUT_PIN_1(rst),
        .FPGA_OUTPUT_PIN_1(AN),
        .FPGA_OUTPUT_PIN_0(SEG),
        .VGA_HS_O_one(VGA_HS_tb),
        .VGA_VS_O_one(VGA_VS_tb),
        .VGA_R_one(VGA_R_tb),
        .VGA_G_one(VGA_G_tb),
        .VGA_B_one(VGA_B_tb),
        .buttonOn_one(button_tb));
endmodule