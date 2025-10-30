`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2025 01:49:00 PM
// Design Name: 
// Module Name: mem_system
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


module mem_system(
    input [7:0] in,
    input store,
    input [1:0] addy,
    output [7:0] mem
    );
    wire [7:0] data_demux;
    wire [7:0] store_demux;
    
    demux demux_data(
    .in(in),
    .addy(addy),
    .A(data_demux[0]),
    .B(data_demux[1]),
    .C(data_demux[2]),
    .D(data_demux[3])
    );
    
    demux demux_store(
    .in(store),
    .addy(addy),
    .A(store_demux[0]),
    .B(store_demux[1]),
    .C(store_demux[2]),
    .D(store_demux[3])
    );
    
    byte_mem byte0(
    .data(data_demux[0]),
    .en(store_demux[0]),
    .mem(mem[0])
    );
    
    byte_mem byte1(
    .data(data_demux[1]),
    .en(store_demux[1]),
    .mem(mem[1])
    );
    
    byte_mem byte2(
    .data(data_demux[2]),
    .en(store_demux[2]),
    .mem(mem[2])
    );
    
    byte_mem byte3(
    .data(data_demux[3]),
    .en(store_demux[3]),
    .mem(mem[3])
    );
    
    mux multiplexer(
    .A(mem[0]),
    .B(mem[1]),
    .C(mem[2]),
    .D(mem[3])
    );
    
    
endmodule
