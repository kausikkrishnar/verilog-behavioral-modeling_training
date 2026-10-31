\# Verilog Behavioral Modeling



A collection of digital circuits written in Verilog using behavioral modeling, each verified with a self-written testbench in Xilinx Vivado.



\## Designs



| Category | Design | Testbench |

|---|---|---|

| Arithmetic | Half adder, Full adder | ✅ |

| Arithmetic | Ripple carry adder | ✅ |

| Arithmetic | BCD adder | ✅ |

| Combinational | 2:1 Multiplexer (multiple coding styles) | ✅ |

| Combinational | Demultiplexer | – |

| Combinational | Encoder | ✅ |

| Latches | D latch, SR latch, T latch | ✅ |

| Counters | Mod-3, 32-bit counter | ✅ |

| Counters | Mod-4, multiple-event counter | – |

| Clock dividers | Divide-by-2, divide-by-4, divide-by-3 | ✅ |

| Clock dividers | Divide-by-3 with 50% duty cycle | ✅ |

| FSM | "1010" sequence detector (Mealy and Moore) | ✅ |

| Memory | 8×8 RAM | ✅ |

| Registers | SISO and SIPO shift registers | – |

| Verilog features | `generate` blocks, functions, user-defined primitives (UDP) | – |



\## Repository structure



\- `BehavioralModeling\_with\_testbenches.srcs/sources\_1/new/` → design files

\- `BehavioralModeling\_with\_testbenches.srcs/sim\_1/new/` → testbenches

\- `BehavioralModeling\_with\_testbenches.xpr` → Vivado project file



\## How to run



1\. Clone the repository.

2\. Open the `.xpr` file in Vivado.

3\. In the Sources panel, set the desired testbench as the simulation top.

4\. Run \*\*Behavioral Simulation\*\*.



\## Tools



\- Verilog HDL

\- Xilinx Vivado (behavioral simulation)

