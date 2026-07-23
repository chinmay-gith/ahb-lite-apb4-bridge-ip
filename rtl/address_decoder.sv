//==============================================================================
// Project : AHB-Lite to APB4 Bridge IP Core
// Module  : address_decoder
// Author  : Chinmay Devaramani
//
// Description:
// Decodes the AHB address and selects one of the APB slaves.
//==============================================================================

module address_decoder #(

    parameter ADDR_WIDTH = 32,
    parameter NUM_SLAVES = 4

)(

    input  logic [ADDR_WIDTH-1:0] addr,

    output logic [NUM_SLAVES-1:0] psel

);

always_comb begin

    psel = '0;

    case (addr[13:12])

        2'b00: psel = 4'b0001;
        2'b01: psel = 4'b0010;
        2'b10: psel = 4'b0100;
        2'b11: psel = 4'b1000;

        default: psel = 4'b0000;

    endcase

end

endmodule

