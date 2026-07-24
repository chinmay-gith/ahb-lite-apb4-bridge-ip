`timescale 1ns/1ps

module bridge_tb;

parameter ADDR_WIDTH = 32;
parameter DATA_WIDTH = 32;
parameter NUM_SLAVES = 4;

// Clock & Reset
logic HCLK;
logic HRESETn;

// AHB Signals
logic [ADDR_WIDTH-1:0] HADDR;
logic [DATA_WIDTH-1:0] HWDATA;
logic HWRITE;
logic [1:0] HTRANS;
logic HREADY;

logic [DATA_WIDTH-1:0] HRDATA;
logic HREADYOUT;
logic HRESP;

// APB Signals
logic [ADDR_WIDTH-1:0] PADDR;
logic [DATA_WIDTH-1:0] PWDATA;
logic PWRITE;
logic [NUM_SLAVES-1:0] PSEL;
logic PENABLE;

logic [DATA_WIDTH-1:0] PRDATA;
logic PREADY;
logic PSLVERR;

// DUT
ahb_apb_bridge_top #(
    .ADDR_WIDTH(ADDR_WIDTH),
    .DATA_WIDTH(DATA_WIDTH),
    .NUM_SLAVES(NUM_SLAVES)
) dut (
    .HCLK(HCLK),
    .HRESETn(HRESETn),
    .HADDR(HADDR),
    .HWDATA(HWDATA),
    .HWRITE(HWRITE),
    .HTRANS(HTRANS),
    .HREADY(HREADY),
    .HRDATA(HRDATA),
    .HREADYOUT(HREADYOUT),
    .HRESP(HRESP),
    .PADDR(PADDR),
    .PWDATA(PWDATA),
    .PWRITE(PWRITE),
    .PSEL(PSEL),
    .PENABLE(PENABLE),
    .PRDATA(PRDATA),
    .PREADY(PREADY),
    .PSLVERR(PSLVERR)
);

// Clock
always #5 HCLK = ~HCLK;

// Test
initial begin
    HCLK = 0;
    HRESETn = 0;

    HADDR = 0;
    HWDATA = 0;
    HWRITE = 0;
    HTRANS = 2'b00;
    HREADY = 1;

    PRDATA = 32'h12345678;
    PREADY = 1;
    PSLVERR = 0;

    // Reset
    #20;
    HRESETn = 1;

    // Write Transaction
    @(posedge HCLK);
    HADDR  <= 32'h0000_1000;
    HWDATA <= 32'hDEADBEEF;
    HWRITE <= 1;
    HTRANS <= 2'b10;

    @(posedge HCLK);
    HTRANS <= 2'b00;

    // Wait
    repeat(5) @(posedge HCLK);

    // Read Transaction
    @(posedge HCLK);
    HADDR  <= 32'h0000_1004;
    HWRITE <= 0;
    HTRANS <= 2'b10;

    @(posedge HCLK);
    HTRANS <= 2'b00;

    repeat(5) @(posedge HCLK);

    $finish;
end

// Waveform Dump
initial begin
    $dumpfile("bridge.vcd");
    $dumpvars(0, bridge_tb);
end

endmodule
