## LEDs
set_property -dict {PACKAGE_PIN T22 IOSTANDARD LVCMOS18} [get_ports {leds_3bits_tri_o[0]}];  # "LD0"
set_property -dict {PACKAGE_PIN T21 IOSTANDARD LVCMOS18} [get_ports {leds_3bits_tri_o[1]}];  # "LD1"
set_property -dict {PACKAGE_PIN U22 IOSTANDARD LVCMOS18} [get_ports {leds_3bits_tri_o[2]}];  # "LD2"
