module ahb_slave_if #(
    parameter ADDR_WIDTH = 32,
    parameter DATA_WIDTH = 32
)(
    input  logic                  HCLK,
    input  logic                  HRESETn,

    input  logic [ADDR_WIDTH-1:0] HADDR,
    input  logic [DATA_WIDTH-1:0] HWDATA,
    input  logic                  HWRITE,
    input  logic [1:0]            HTRANS,
    input  logic                  HREADY,

    output logic [ADDR_WIDTH-1:0] addr_reg,
    output logic [DATA_WIDTH-1:0] wdata_reg,
    output logic                  write_reg,
    output logic                  valid_transfer
);

always_ff @(posedge HCLK or negedge HRESETn) begin
    if (!HRESETn) begin
        addr_reg <= '0;
        wdata_reg <= '0;
        write_reg <= 1'b0;
    end
    else if (HREADY && HTRANS[1]) begin
        addr_reg <= HADDR;
        wdata_reg <= HWDATA;
        write_reg <= HWRITE;
    end
end

always_comb begin
    valid_transfer = HREADY && HTRANS[1];
end

endmodule
