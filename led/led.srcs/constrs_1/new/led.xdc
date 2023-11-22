# clock
create_clock -period 20.000 [get_ports sys_clk]
# sys_clk
set_property PACKAGE_PIN N18 [get_ports sys_clk]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clk]
# sys_rstn
set_property PACKAGE_PIN T12 [get_ports sys_rstn]
set_property IOSTANDARD LVCMOS33 [get_ports sys_rstn]
# led[1:0]
set_property PACKAGE_PIN P15 [get_ports {led[0]}]
set_property PACKAGE_PIN U12 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[*]}]