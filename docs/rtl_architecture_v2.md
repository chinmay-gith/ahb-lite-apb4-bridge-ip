# RTL Architecture V2

## Goal

Design a synthesizable parameterized AHB-Lite to APB4 Bridge IP.

## RTL Modules

1. ahb_apb_bridge_top
    Top-level integration.

2. ahb_slave_if
    Captures AHB transactions.

3. bridge_fsm
    Controls APB protocol.

4. apb_master_if
    Generates APB bus signals.

5. address_decoder
    Selects APB slave.

## Data Flow

AHB Master
      |
      V
AHB Slave Interface
      |
      V
Bridge FSM
      |
      +------+
      |      |
      V      V
Address Decoder
      |
      V
APB Master Interface
      |
      V
APB4 Slaves

## Verification

- Reset
- Write
- Read
- Wait States
- Error Response

## ASIC Flow

RTL
Simulation
Synthesis
STA
Floorplan
Placement
CTS
Routing
DRC
LVS
GDSII
