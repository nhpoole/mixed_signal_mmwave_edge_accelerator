# Port setup.

set vdd_rail_name "VDD"
set vss_rail_name "VSS"

# Power ports.
findlabel $vdd_rail_name
port make 
port use power
port class inout
findlabel $vss_rail_name
port make
port use ground
port class inout

# Cell-specific ports.

# diff_fold_casc_ota
findlabel vop
port make
findlabel vom
port make
findlabel vip
port make
findlabel vim
port make
findlabel vocm
port make
findlabel ibiasn
port make