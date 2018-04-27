################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name clk100 -period 10 [get_ports clk100]
create_clock -name mii_rx_clk -period 10 [get_ports mii_rx_clk]
create_clock -name mii_tx_clk -period 10 [get_ports mii_tx_clk]

################################################################################