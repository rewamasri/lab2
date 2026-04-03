`include "src/top.sv"
`default_nettype none

module top_tb;
logic clk;
logic [3:0] data;
logic [6:0] bcd_data;

top uut
(
    /** add additional signals */
    .bcd(data),
    .seg7(bcd_data)
);

localparam CLK_PERIOD = 10;

initial begin
    $dumpfile("build/top.vcd");
    $dumpvars(0, top_tb);
end

initial begin
    #(CLK_PERIOD*3);
    // testbench logic goes below
    data = 4'h0; #(CLK_PERIOD*3);
    data = 4'h1; #(CLK_PERIOD*3);
    data = 4'h2; #(CLK_PERIOD*3);
    data = 4'h3; #(CLK_PERIOD*3);
    data = 4'h4; #(CLK_PERIOD*3);
    data = 4'h5; #(CLK_PERIOD*3);
    data = 4'h6; #(CLK_PERIOD*3);
    data = 4'h7; #(CLK_PERIOD*3);
    data = 4'h8; #(CLK_PERIOD*3);
    data = 4'h9; #(CLK_PERIOD*3);
    data = 4'hA; #(CLK_PERIOD*3);
    data = 4'hB; #(CLK_PERIOD*3);
    data = 4'hC; #(CLK_PERIOD*3);
    data = 4'hD; #(CLK_PERIOD*3);
    data = 4'hE; #(CLK_PERIOD*3);
    data = 4'hF; #(CLK_PERIOD*3);

    $finish;
end

endmodule
`default_nettype wire