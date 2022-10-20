`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/05 10:14:43
// Design Name: 
// Module Name: regfile1
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


module regfile1(
    input             clk,
    input             wen, //дʹ��
    input            tick,
    input      [4 :0] raddr1, //����ַ
    input      [4 :0] raddr2,
    input      [4 :0] waddr, //д��ַ
    input      [31:0] wdata,
    output     [31:0] rdata1, //������
    output     [31:0] rdata2,
    input             butOn);
    
    reg [31:0] rf[31:0];
    
    //д�˿�
    integer i;
    always @(posedge clk)
    if(wen && tick && waddr!=5'd0 && waddr!=5'd31)
    begin
          rf[waddr] <= wdata;
    end

    always @(posedge clk)
    begin
        if(butOn)
            rf[31]<=32'd1;
    end
 
    //���˿�1
    assign rdata1 = (raddr1==5'd0) ? 32'd0 : rf[raddr1];
 
    //���˿�2
    assign rdata2 = (raddr2==5'd0) ? 32'd0 : rf[raddr2];

endmodule
