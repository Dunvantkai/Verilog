`include "ab.v"
module tb_example_and_gate;

    reg A;
    reg B;
    wire Y;

    example_and_gate uut (
        .input_1(A),
        .input_2(B),
        .output_1(Y)
    );

    initial begin
        $dumpfile("ab_tb.vcd");
        $dumpvars(0, tb_example_and_gate);

        A = 0; B = 0; #10;
        $display("A=%b B=%b Y=%b", A, B, Y);
        A = 0; B = 1; #10;
        $display("A=%b B=%b Y=%b", A, B, Y);
        A = 1; B = 0; #10;
        $display("A=%b B=%b Y=%b", A, B, Y);
        A = 1; B = 1; #10;
        $display("A=%b B=%b Y=%b", A, B, Y);

        $display("Test complete");
        $finish;
        end
endmodule