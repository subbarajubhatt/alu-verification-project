module alu_tb;

reg [7:0] a;
reg [7:0] b;
reg [2:0] opcode;
wire [7:0] result;
wire zero;

alu dut (
    .a(a),
    .b(b),
    .opcode(opcode),
    .result(result),
    .zero(zero)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, alu_tb);

    a = 10; b = 5;

    opcode = 3'b000; #10; $display("ADD: %d", result);
    opcode = 3'b001; #10; $display("SUB: %d", result);
    opcode = 3'b010; #10; $display("AND: %d", result);
    opcode = 3'b011; #10; $display("OR: %d", result);
    opcode = 3'b100; #10; $display("XOR: %d", result);

    $finish;
end

endmodule
