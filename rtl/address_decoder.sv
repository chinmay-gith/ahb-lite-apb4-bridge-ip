module address_decoder #(
    parameter ADDR_WIDTH = 32,
    parameter NUM_SLAVES = 4
)(
    input  logic [ADDR_WIDTH-1:0] addr_reg,
    output logic [NUM_SLAVES-1:0] PSEL
);

always_comb begin
    PSEL = '0;

    case(addr_reg[13:12])
        2'b00: PSEL = 4'b0001;
        2'b01: PSEL = 4'b0010;
        2'b10: PSEL = 4'b0100;
        2'b11: PSEL = 4'b1000;
    endcase
end

endmodule
