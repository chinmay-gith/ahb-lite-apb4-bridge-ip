# Module Interface Specification

## 1. ahb_apb_bridge_top

Purpose:
Top-level integration module.

Submodules:
- ahb_slave_if
- bridge_fsm
- address_decoder
- apb_master_if

----------------------------------------------------

## 2. ahb_slave_if

Inputs

HCLK
HRESETn
HADDR[31:0]
HWRITE
HTRANS[1:0]
HSIZE[2:0]
HBURST[2:0]
HWDATA[31:0]
HREADY

Outputs

addr_reg
write_reg
wdata_reg
valid_transfer

----------------------------------------------------

## 3. bridge_fsm

Inputs

valid_transfer
PREADY
PSLVERR

Outputs

PENABLE
transfer_done
HREADYOUT
HRESP

----------------------------------------------------

## 4. address_decoder

Inputs

addr_reg

Outputs

PSEL[NUM_SLAVES-1:0]

----------------------------------------------------

## 5. apb_master_if

Inputs

PSEL
PENABLE
addr_reg
write_reg
wdata_reg

Outputs

PADDR
PWDATA
PWRITE

