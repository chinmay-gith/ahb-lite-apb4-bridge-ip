//==============================================================================
// Project : AHB-Lite to APB4 Bridge IP Core
// Module  : apb_master_if
// Author  : Chinmay Devaramani
//
// Description:
// Generates APB4 transactions from captured AHB-Lite requests.
//==============================================================================

module apb_master_if #(

    parameter ADDR_WIDTH = 32,
    parameter DATA_WIDTH = 32

)(

    input  logic                     clk,
    input  logic                     rst_n,

    input  logic [ADDR_WIDTH-1:0]    addr_reg,
    input  logic [DATA_WIDTH-1:0]    wdata_reg,

    input  logic                     write_reg,

    input  logic                     psel_in,
    input  logic                     penable_in,

    output logic [ADDR_WIDTH-1:0]    PADDR,
    output logic [DATA_WIDTH-1:0]    PWDATA,

    output logic                     PWRITE,
    output logic                     PSEL,
    output logic                     PENABLE

);

always_comb begin

    PADDR   = addr_reg;
    PWDATA  = wdata_reg;

    PWRITE  = write_reg;

    PSEL    = psel_in;
    PENABLE = penable_in;

end

endmodule
