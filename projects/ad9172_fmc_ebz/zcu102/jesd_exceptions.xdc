# exceptions
# We can't place the sysref in IOB, instead limit the input delay of the signal
# to the first sampling FF
set_property IOB FALSE [get_cells -hierarchical -filter { NAME =~  "*sysref_r*" } ]
set_max_delay -from [get_ports tx_sysref_*] \
              -to [get_pins i_system_wrapper/system_i/axi_ad9172_jesd/tx/inst/i_lmfc/sysref_r_reg/D] 2.0 \
              -datapath_only

