`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2025 08:58:26 PM
// Design Name: 
// Module Name: ctrl0
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


module ctrl0(
    input [31:0] reg_in,
    output reset_out,
    output custom_boot,
    output misc0,
    output misc1,
    output misc2,
    output misc3
    );
    assign reset_out = reg_in[0];
    assign custom_boot = reg_in[1];
    assign misc0 = reg_in[2];
    assign misc1 = reg_in[3];
    assign misc2 = reg_in[4];
    assign misc3 = reg_in[5];
endmodule
