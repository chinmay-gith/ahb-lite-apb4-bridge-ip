# APB Transaction Timing

Cycle 1

PSEL = 1
PENABLE = 0

This is the SETUP phase.

---------------------------------------

Cycle 2

PSEL = 1
PENABLE = 1

This is the ACCESS phase.

---------------------------------------

If PREADY = 0

Remain in ACCESS.

---------------------------------------

If PREADY = 1

Transaction completes.

Return to IDLE.
