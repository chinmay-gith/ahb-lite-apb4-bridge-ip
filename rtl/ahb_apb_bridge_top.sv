module ahb_apb_bridge_top #(
    parameter ADDR_WIDTH = 32,
    parameter DATA_WIDTH = 32,
    parameter NUM_SLAVES = 4
)(
    input  logic                     HCLK,
    input  logic                     HRESETn,

    // AHB-Lite Slave Interface
    input  logic [ADDR_WIDTH-1:0]    HADDR,
    input  logic [DATA_WIDTH-1:0]    HWDATA,
    input  logic                     HWRITE,
    input  logic [1:0]               HTRANS,
    input  logic                     HREADY,

    output logic [DATA_WIDTH-1:0]    HRDATA,
    output logic                     HREADYOUT,
    output logic                     HRESP,

    // APB4 Master Interface
    output logic [ADDR_WIDTH-1:0]    PADDR,
    output logic [DATA_WIDTH-1:0]    PWDATA,
    output logic                     PWRITE,
    output logic [NUM_SLAVES-1:0]    PSEL,
    output logic                     PENABLE,

    input  logic [DATA_WIDTH-1:0]    PRDATA,
    input  logic                     PREADY,
    input  logic                     PSLVERR
);

logic [ADDR_WIDTH-1:0] addr_reg;
logic [DATA_WIDTH-1:0] wdata_reg;
logic                  write_reg;
logic                  valid_transfer;

logic [NUM_SLAVES-1:0] psel_decoded;
logic                  fsm_psel;
logic                  fsm_penable;

// AHB Interface
ahb_slave_if #(
    .ADDR_WIDTH(ADDR_WIDTH),
    .DATA_WIDTH(DATA_WIDTH)
) u_ahb_slave_if (
    .HCLK(HCLK),
    .HRESETn(HRESETn),
    .HADDR(HADDR),
    .HWDATA(HWDATA),
    .HWRITE(HWRITE),
    .HTRANS(HTRANS),
    .HREADY(HREADY),
    .addr_reg(addr_reg),
    .wdata_reg(wdata_reg),
    .write_reg(write_reg),
    .valid_transfer(valid_transfer)
);

// FSM
bridge_fsm u_bridge_fsm (
    .HCLK(HCLK),
    .HRESETn(HRESETn),
    .valid_transfer(valid_transfer),
    .PREADY(PREADY),
    .PSLVERR(PSLVERR),
    .PSEL(fsm_psel),
    .PENABLE(fsm_penable),
    .HREADYOUT(HREADYOUT),
    .HRESP(HRESP)
);

// Decoder
address_decoder #(
    .ADDR_WIDTH(ADDR_WIDTH),
    .NUM_SLAVES(NUM_SLAVES)
) u_decoder (
    .addr_reg(addr_reg),
    .PSEL(psel_decoded)
);

// APB Master
apb_master_if #(
    .ADDR_WIDTH(ADDR_WIDTH),
    .DATA_WIDTH(DATA_WIDTH),
    .NUM_SLAVES(NUM_SLAVES)
) u_apb_master (
    .addr_reg(addr_reg),
    .wdata_reg(wdata_reg),
    .write_reg(write_reg),
    .PSEL_in(fsm_psel ? psel_decoded : '0),
    .PENABLE_in(fsm_penable),
    .PADDR(PADDR),
    .PWDATA(PWDATA),
    .PWRITE(PWRITE),
    .PSEL(PSEL),
    .PENABLE(PENABLE)
);

// Read Data
assign HRDATA = PRDATA;

endmodule
