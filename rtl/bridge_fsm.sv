module bridge_fsm (
    input  logic HCLK,
    input  logic HRESETn,
    input  logic valid_transfer,
    input  logic PREADY,
    input  logic PSLVERR,

    output logic PSEL,
    output logic PENABLE,
    output logic HREADYOUT,
    output logic HRESP
);

typedef enum logic [1:0] {
    IDLE   = 2'b00,
    SETUP  = 2'b01,
    ACCESS = 2'b10,
    ERROR  = 2'b11
} state_t;

state_t state, next_state;

// State register
always_ff @(posedge HCLK or negedge HRESETn) begin
    if (!HRESETn)
        state <= IDLE;
    else
        state <= next_state;
end

// Next-state logic
always_comb begin
    next_state = state;

    case (state)
        IDLE:
            if (valid_transfer)
                next_state = SETUP;

        SETUP:
            next_state = ACCESS;

        ACCESS:
            if (PSLVERR)
                next_state = ERROR;
            else if (PREADY)
                next_state = IDLE;

        ERROR:
            next_state = IDLE;
    endcase
end

// Output logic
always_comb begin
    PSEL      = 1'b0;
    PENABLE   = 1'b0;
    HREADYOUT = 1'b1;
    HRESP     = 1'b0;

    case (state)
        IDLE: begin
            HREADYOUT = 1'b1;
        end

        SETUP: begin
            PSEL      = 1'b1;
            PENABLE   = 1'b0;
            HREADYOUT = 1'b0;
        end

        ACCESS: begin
            PSEL      = 1'b1;
            PENABLE   = 1'b1;
            HREADYOUT = PREADY;
        end

        ERROR: begin
            HRESP     = 1'b1;
            HREADYOUT = 1'b1;
        end
    endcase
end

endmodule
