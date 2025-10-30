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
    wire [7:0] data_demux_a, data_demux_b, data_demux_c, data_demux_d;
    wire store_demux_a, store_demux_b, store_demux_c, store_demux_d;
    wire [7:0] mem0, mem1, mem2, mem3;
    
    demux demux_data(
    .in(in),
    .addy(addy),
    .A(data_demux_a),
    .B(data_demux_b),
    .C(data_demux_c),
    .D(data_demux_d)
    );
    
    demux1bit demux_store(
    .in(store),
    .addy(addy),
    .A(store_demux_a),
    .B(store_demux_b),
    .C(store_demux_c),
    .D(store_demux_d)
    );
    
    byte_mem byte0(
    .data(data_demux_a),
    .en(store_demux_a),
    .mem(mem0)
    );
    
    byte_mem byte1(
    .data(data_demux_b),
    .en(store_demux_b),
    .mem(mem1)
    );
    
    byte_mem byte2(
    .data(data_demux_c),
    .en(store_demux_c),
    .mem(mem2)
    );
    
    byte_mem byte3(
    .data(data_demux_d),
    .en(store_demux_d),
    .mem(mem3)
    );
    
    mux multiplexer(
    .A(mem0),
    .B(mem1),
    .C(mem2),
    .D(mem3),
    .addy(addy),
    .y(mem)
    );
    
    
endmodule
