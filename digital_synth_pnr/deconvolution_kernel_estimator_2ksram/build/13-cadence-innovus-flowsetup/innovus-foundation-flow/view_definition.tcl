#
# INITIALIZING MMMC TIMING
#
#
# CREATING RC CORNERS ...
#
# <BEGIN TAG> init,create_rc_corner
create_rc_corner -name typical -cap_table inputs/adk/rtk-typical.captable -T 25

# <END TAG> init,create_rc_corner
#------------------------------------------------
# Additional (unused) options ....
#------------------------------------------------
# -preRoute_res $vars(typical,pre_route_res_factor)
# -preRoute_cap $vars(typical,pre_route_cap_factor)
# -preRoute_clkres $vars(typical,pre_route_clk_res_factor)
# -preRoute_clkcap $vars(typical,pre_route_clk_cap_factor)
# -postRoute_res $vars(typical,post_route_res_factor)
# -postRoute_cap $vars(typical,post_route_cap_factor)
# -postRoute_res $vars(typical,post_route_clk_res_factor)
# -postRoute_clkcap $vars(typical,post_route_clk_cap_factor)
# -postRoute_xcap $vars(typical,post_route_xcap_factor)
#------------------------------------------------
#
# <FF> CREATING LIBRARY SETS ...
#
# <BEGIN TAG> init,create_library_set
create_library_set -name libs_typical \
   -timing [list inputs/adk/stdcells.lib inputs/sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib]

# <END TAG> init,create_library_set
# <BEGIN TAG> init,create_library_set
create_library_set -name libs_bc \
   -timing [list inputs/adk/stdcells-bc.lib inputs/adk/stdcells-bc.lib]

# <END TAG> init,create_library_set
#
# <FF> CREATING DELAY CORNERS ...
#
# <BEGIN TAG> init,create_delay_corner
create_delay_corner -name delay_default \
   -early_library_set libs_bc \
   -late_library_set libs_typical \
   -rc_corner typical

# <END TAG> init,create_delay_corner
#
# <FF> CREATING CONSTRAINT MODES ...
#
# <BEGIN TAG> init,create_constraint_mode
create_constraint_mode -name constraints_default \
   -sdc_files [list ./inputs/design.sdc]

# <END TAG> init,create_constraint_mode
# <BEGIN TAG> init,create_analysis_view
#
# <FF> CREATING ANALYSIS VIEWS ...
#
create_analysis_view -name analysis_default \
   -constraint_mode constraints_default \
   -delay_corner delay_default

# <END TAG> init,create_analysis_view
# <BEGIN TAG> init,update_library_set



# <END TAG> init,update_library_set
set_analysis_view -setup [list analysis_default] -hold [list analysis_default]

