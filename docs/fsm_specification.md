# Bridge FSM Specification

## States

### IDLE

Bridge waits for a valid AHB transaction.

Transition:

IDLE -> SETUP

Condition:

valid_transfer == 1

--------------------------------------------

### SETUP

Generate APB SETUP phase.

Outputs:

PSEL = 1
PENABLE = 0

Transition:

SETUP -> ACCESS

Always after one clock.

--------------------------------------------

### ACCESS

Generate APB ACCESS phase.

Outputs:

PSEL = 1
PENABLE = 1

If PREADY == 0

Remain in ACCESS.

If PREADY == 1

Transfer completes.

Transition:

ACCESS -> IDLE

--------------------------------------------

### ERROR

Entered when PSLVERR == 1.

Outputs:

HRESP = ERROR

Transition:

ERROR -> IDLE
