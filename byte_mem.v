`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2025 01:49:00 PM
// Design Name: 
// Module Name: byte_mem
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


module byte_mem(
    input [7:0] data,
    input en,
    output reg [7:0] mem
    );
    
    always @(data, en) begin
        if(en)
            mem <= data;
    end
    
endmodule
