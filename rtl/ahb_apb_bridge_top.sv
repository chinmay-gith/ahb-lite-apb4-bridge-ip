//==============================================================================
// Project : AHB-Lite to APB4 Bridge IP Core
// Module  : ahb_apb_bridge_top
// Author  : Chinmay Devaramani
//
// Description:
// Top-level module for the AHB-Lite to APB4 Bridge.
// Connects the AHB interface, Bridge FSM, Address Decoder,
// and APB interface.
//
// Revision History:
// v1.0 - Initial module skeleton
//==============================================================================

module ahb_apb_bridge_top #(

    parameter ADDR_WIDTH = 32,
    parameter DATA_WIDTH = 32,
    parameter NUM_SLAVES = 4

)(

    //==========================================================================
    // AHB-Lite Interface
    //==========================================================================

    input  logic                     HCLK,
    input  logic                     HRESETn,

    input  logic [ADDR_WIDTH-1:0]    HADDR,
    input  logic [DATA_WIDTH-1:0]    HWDATA,

    input  logic                     HWRITE,
    input  logic [1:0]               HTRANS,
    input  logic [2:0]               HSIZE,
    input  logic                     HREADY,

    output logic [DATA_WIDTH-1:0]    HRDATA,
    output logic                     HREADYOUT,
    output logic                     HRESP,

    //==========================================================================
    // APB4 Interface
    //==========================================================================

    output logic [ADDR_WIDTH-1:0]    PADDR,
    output logic [DATA_WIDTH-1:0]    PWDATA,

    output logic                     PWRITE,
    output logic                     PSEL,
    output logic                     PENABLE,

    input  logic [DATA_WIDTH-1:0]    PRDATA,
    input  logic                     PREADY,
    input  logic                     PSLVERR

);

//=============================================================================
// Internal signals
//=============================================================================

// (To be added in the next step)

endmodule
