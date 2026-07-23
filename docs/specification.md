# AHB-Lite to APB4 Bridge IP Core Specification

## Project Overview

This IP Core converts transactions from an AHB-Lite Master into APB4 transactions,
allowing high-speed AHB masters to communicate with low-speed APB peripherals.

---

## Features

- Parameterized Address Width
- Parameterized Data Width
- Supports AHB-Lite Single Transfers
- Supports APB4 Protocol
- FSM-based Protocol Conversion
- Wait-State Handling
- Error Response Handling
- Multiple APB Slave Support
- Synthesizable SystemVerilog RTL

---

## Supported Parameters

ADDR_WIDTH = 32

DATA_WIDTH = 32

NUM_SLAVES = 4

---

## AHB-Lite Interface

Inputs

HCLK

HRESETn

HADDR

HWRITE

HTRANS

HSIZE

HWDATA

HREADY

Outputs

HRDATA

HREADYOUT

HRESP

---

## APB4 Interface

Outputs

PADDR

PWDATA

PWRITE

PSEL

PENABLE

Inputs

PRDATA

PREADY

PSLVERR

---

## FSM States

IDLE

SETUP

ACCESS

---

## Verification Goals

Read Transactions

Write Transactions

Wait-State Handling

Error Handling

Reset Verification

---

## ASIC Flow

RTL

↓

Simulation

↓

Synthesis

↓

Static Timing Analysis

↓

Floorplanning

↓

Placement

↓

Clock Tree Synthesis

↓

Routing

↓

DRC

↓

LVS

↓

GDSII
