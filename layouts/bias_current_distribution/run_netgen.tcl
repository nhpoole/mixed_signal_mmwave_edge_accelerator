exec netgen -batch lvs "../../simulations/bias_current_distribution_lvs.spice bias_current_distribution_lvs" "bias_current_distribution_lvs_layout.spice bias_current_distribution_flat" $PDKPATH/libs.tech/netgen/sky130A_setup.tcl > netgen.log 2> netgen_err.log