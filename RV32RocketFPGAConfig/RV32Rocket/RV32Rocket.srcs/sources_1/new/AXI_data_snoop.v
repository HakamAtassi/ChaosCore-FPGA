`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2025 07:37:04 PM
// Design Name: 
// Module Name: AXI_data_snoop
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


module AXI_data_snoop(
    input clk,
    input rst,
    input rsp_valid,
    input [63:0] rdata,
    output [31:0] rdata_out_0,
    output [31:0] rdata_out_1
    );
    reg [63:0] last_resp;
    
    always @(posedge clk) begin
        if (rst) begin
            last_resp <= 64'hffffffffffffffff;
        end else if (rsp_valid) begin
            last_resp <= rdata;
        end
    
    end
    
    assign rdata_out_0 = last_resp[31:0];
    assign rdata_out_1 = last_resp[63:32];
endmodule
