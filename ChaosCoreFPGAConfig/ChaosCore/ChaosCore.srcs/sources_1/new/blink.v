`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/02/2025 06:54:05 PM
// Design Name: 
// Module Name: blink
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


module blink(
    input clk,
    output blink
    );
    reg [25:0] counter = 0;
    reg led = 0;
    always @(posedge clk) begin
        if (counter == 10000000) begin
            led <= ~led;
            counter = 0;
        end
        counter <= counter + 1;
    end
    assign blink = led;
endmodule
