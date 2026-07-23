# AHB-Lite to APB4 Bridge IP Architecture

## Top-Level Architecture

                 AHB-Lite Master
                        │
                        ▼
             +-------------------+
             |  AHB Slave IF     |
             +-------------------+
                        │
                        ▼
             +-------------------+
             |    Bridge FSM     |
             +-------------------+
                │            │
                │            ▼
                │     +-------------+
                │     | APB Master  |
                │     | Interface   |
                │     +-------------+
                │            │
                ▼            ▼
          +-----------------------+
          |   Address Decoder     |
          +-----------------------+
                        │
                        ▼
                  APB4 Slaves

----------------------------------------------------

RTL Modules

1. ahb_apb_bridge_top.sv

Top-level integration.

------------------------------------

2. bridge_fsm.sv

Controls protocol conversion.

States

IDLE

SETUP

ACCESS

------------------------------------

3. ahb_slave_if.sv

Receives AHB-Lite transactions.

Captures

HADDR

HWRITE

HWDATA

HTRANS

------------------------------------

4. apb_master_if.sv

Generates APB4 transactions.

Outputs

PADDR

PWDATA

PWRITE

PSEL

PENABLE

------------------------------------

5. address_decoder.sv

Selects APB slave according to address.

Example

0x0000_0000 -> Slave0

0x0000_1000 -> Slave1

0x0000_2000 -> Slave2

0x0000_3000 -> Slave3
