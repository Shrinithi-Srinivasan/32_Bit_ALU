module ALU_32bit (input [31:0] A,input [31:0] B,input [2:0] opcode,output reg [31:0] result);
always @(*) begin
    case (opcode)
        3'b000: result = A + B;        // Addition
        3'b001: result = A - B;        // Subtract
        3'b010: result = A + 1;        // Increment
        3'b011: result = A - 1;        // Decrement
        3'b100: result = A;            // A (True)
        3'b101: result = ~A;           // A complement (NOT)
        3'b110: result = A | B;        // A OR B (Logical OR)
        3'b111: result = A & B;        // A AND B (Logical AND)
        default: result = 32'h00000000; // Default to 0
    endcase
end
endmodule
