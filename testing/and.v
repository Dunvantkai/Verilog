module example_and_gate
(
    input_1,
    input_2,
    output_1
);
    input input_1;
    input input_2;
    output output_1;
    
    wire and_result;
    assign and_result = input_1 & input_2;
    assign output_1 = and_result;
    endmodule