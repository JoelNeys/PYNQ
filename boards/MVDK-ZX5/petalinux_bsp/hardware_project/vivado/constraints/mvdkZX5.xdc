## LEDs
set_property PACKAGE_PIN W12 [get_ports mmcm_lock]
set_property IOSTANDARD LVCMOS18 [get_ports mmcm_lock]

# PCI Express reset (perst)
set_property PACKAGE_PIN D5  [get_ports {perst[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {perst[0]}]

# disable_ssd2_pwr
set_property PACKAGE_PIN A7  [get_ports {disable_ssd2_pwr[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {disable_ssd2_pwr[0]}]

# PCI Express reference clock 100MHz
set_property PACKAGE_PIN U9   [get_ports {ref_clk_clk_p[0]}]
set_property PACKAGE_PIN V9   [get_ports {ref_clk_clk_n[0]}]
create_clock -period 10.000 -name ref_clk_clk_p -waveform {0.000 5.000} [get_ports ref_clk_clk_p]

# MGT locations
#set_property PACKAGE_PIN AB7  [get_ports {pcie_7x_mgt_rxn[0]}]
#set_property PACKAGE_PIN AA7  [get_ports {pcie_7x_mgt_rxp[0]}]
#set_property PACKAGE_PIN Y8   [get_ports {pcie_7x_mgt_rxn[1]}]
#set_property PACKAGE_PIN W8   [get_ports {pcie_7x_mgt_rxp[1]}]
#set_property PACKAGE_PIN AB9  [get_ports {pcie_7x_mgt_rxn[2]}]
#set_property PACKAGE_PIN AA9  [get_ports {pcie_7x_mgt_rxp[2]}]
#set_property PACKAGE_PIN Y6   [get_ports {pcie_7x_mgt_rxn[3]}]
#set_property PACKAGE_PIN W6   [get_ports {pcie_7x_mgt_rxp[3]}]

#set_property PACKAGE_PIN AB3  [get_ports {pcie_7x_mgt_txn[0]}]
#set_property PACKAGE_PIN AA3  [get_ports {pcie_7x_mgt_txp[0]}]
#set_property PACKAGE_PIN Y4   [get_ports {pcie_7x_mgt_txn[1]}]
#set_property PACKAGE_PIN W4   [get_ports {pcie_7x_mgt_txp[1]}]
#set_property PACKAGE_PIN AB5  [get_ports {pcie_7x_mgt_txn[2]}]
#set_property PACKAGE_PIN AA5  [get_ports {pcie_7x_mgt_txp[2]}]
#set_property PACKAGE_PIN Y2   [get_ports {pcie_7x_mgt_txn[3]}]
#set_property PACKAGE_PIN W2   [get_ports {pcie_7x_mgt_txp[3]}]
