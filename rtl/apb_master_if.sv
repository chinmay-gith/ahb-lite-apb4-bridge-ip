module apb_master_if #(
    parameter ADDR_WIDTH = 32,
    parameter DATA_WIDTH = 32,
    parameter NUM_SLAVES = 4
)(
    input  logic [ADDR_WIDTH-1:0] addr_reg,
    input  logic [DATA_WIDTH-1:0] wdata_reg,
    input  logic                  write_reg,

    input  logic [NUM_SLAVES-1:0] PSEL_in,
    input  logic                  PENABLE_in,

    output logic [ADDR_WIDTH-1:0] PADDR,
    output logic [DATA_WIDTH-1:0] PWDATA,
    output logic                  PWRITE,
    output logic [NUM_SLAVES-1:0] PSEL,
    output logic                  PENABLE
);

always_comb begin
    PADDR   = addr_reg;
    PWDATA  = wdata_reg;
    PWRITE  = write_reg;
    PSEL    = PSEL_in;
    PENABLE = PENABLE_in;
end

endmodule
