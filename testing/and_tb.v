`timescale 1ns / 1ns
`include "and.v"

module and_tb;

reg input_1;
reg input_2;
wire output_1;

example_and_gate uut(input_1, input_2, output_1);

initial begin

    $dumpfile("and_tb.vcd");
    $dumpvars(0, and_tb);

    input_1 = 0;
    input_2 = 0;
    #10;

    input_1 = 1;
    #10;

    input_1 = 0;
    input_2 = 1;
    #10;

    input_1 = 1;
    #10;

    $display("Test complete");
end
endmodule