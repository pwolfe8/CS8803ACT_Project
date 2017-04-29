module VariableInputAdd_Tester (inputs, out);
	parameter DATA_WIDTH = 16; // number of bits per input
	parameter FRACT_WIDTH = 8; // number of bits for fraction part of fixed-point num
	parameter N_IN = 3; 				// number of inputs
	
	input [DATA_WIDTH-1:0] inputs[0:N_IN-1];
	output [DATA_WIDTH-1:0] out;
	
	VariableInputAdd #(DATA_WIDTH,FRACT_WIDTH,N_IN) final_answer(
		.inputs(inputs),
		.out(out)
		);

endmodule
