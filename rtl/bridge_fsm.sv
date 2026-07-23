//==============================================================================
// Project : AHB-Lite to APB4 Bridge IP Core
// Module  : bridge_fsm
// Description :
// FSM controlling AHB-Lite to APB4 protocol conversion.
//==============================================================================

module bridge_fsm (

    input  logic clk,
    input  logic rst_n,

    input  logic ahb_valid,
    input  logic pready,
    input  logic pslverr,

    output logic psel,
    output logic penable,
    output logic hreadyout,
    output logic hresp

);

typedef enum logic [1:0] {
    IDLE,
    SETUP,
    ACCESS
} state_t;

state_t state, next_state;

//------------------------------------------------------------
// State Register
//------------------------------------------------------------
always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        state <= IDLE;
    else
        state <= next_state;
end

//------------------------------------------------------------
// Next-State Logic
//------------------------------------------------------------
always_comb begin

    next_state = state;

    case (state)

        IDLE:
            if (ahb_valid)
                next_state = SETUP;

        SETUP:
            next_state = ACCESS;

        ACCESS:
            if (pready)
                next_state = IDLE;
            else
                next_state = ACCESS;

        default:
            next_state = IDLE;

    endcase

end

//------------------------------------------------------------
// Output Logic
//------------------------------------------------------------
always_comb begin

    psel      = 1'b0;
    penable   = 1'b0;
    hreadyout = 1'b1;
    hresp     = 1'b0;

    case (state)

        IDLE: begin
            psel      = 1'b0;
            penable   = 1'b0;
            hreadyout = 1'b1;
        end

        SETUP: begin
            psel      = 1'b1;
            penable   = 1'b0;
            hreadyout = 1'b0;
        end

        ACCESS: begin
            psel      = 1'b1;
            penable   = 1'b1;
            hreadyout = pready;
            hresp     = pslverr;
        end

    endcase

end

endmodule

