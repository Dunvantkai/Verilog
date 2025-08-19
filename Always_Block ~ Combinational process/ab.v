module example_and_gate
(
    input input_1,
    input input_2,
    output reg output_1
);

always @ (input_1 or input_2) 
begin
    output_1 = input_1 & input_2;
end
endmodule