exec netgen -batch lvs "../../simulations/latched_comparator_folded_lvs.spice latched_comparator_folded_lvs" "latched_comparator_folded_lvs_layout.spice latched_comparator_folded_flat" $PDKPATH/libs.tech/netgen/sky130A_setup.tcl > netgen.log 2> netgen_err.log