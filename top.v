module top(
    input [15:0] sw,
    input btnC,
    output [15:0] led

);
    dlatch lock(
    .D(sw[0]),
    .E(btnC),
    .Q(led[0]),
    .NQ(led[1])
    ); 

    wire [7:0] data;
    wire [1:0] address;
    wire store;
    
    assign data = sw[15:8];
    assign address = sw[7:6];
    assign store = btnC;
    
    mem_system mem(
    .in(data),
    .store(store),
    .addy(address),
    .mem(led[15:8])
    );
        
endmodule        