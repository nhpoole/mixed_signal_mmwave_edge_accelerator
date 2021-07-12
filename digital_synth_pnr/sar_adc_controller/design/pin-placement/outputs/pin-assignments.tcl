#=========================================================================
# pin-assignments.tcl
#=========================================================================
# The ports of this design become physical pins along the perimeter of the
# design. The commands below will spread the pins along the left and right
# perimeters of the core area. This will work for most designs, but a
# detail-oriented project should customize or replace this section.
#
# Author : Nikhil Poole
# Date   : June 05, 2021

#-------------------------------------------------------------------------
# Pin Assignments
#-------------------------------------------------------------------------

# Here pin assignments are done keeping in mind the location of the pins.
# If you update pin assignments below you should rerun the pin-placement step 
# before re-running init step

# We are assigning pins clockwise here, starting from the top side we go left
# to right, then on the right side we go top to bottom, then on the bottom
# side, we go right to left, then on the left side we go bottom to top.

# Pins on the top side. The first pin in this list is on the top left and the
# last pin is on the top right.
set pins_top {\
    clk rst_n adc_start\
}

# Pins on the right side.
set pins_right {\
    out_valid\
}

# Pins on the bottom side from right to left.
set pins_bottom []

# Pins on the left side from bottom to top.
set pins_left {\
    run_adc_n\
}
for {set i 7} {$i >= 0} {set i [expr {$i - 1}]} {
    lappend pins_left "adc_val[$i]"
}
lappend pins_left "comparator_val"

# Spread the pins evenly along the sides of the block
set ports_layer M3

editPin -layer $ports_layer -pin $pins_right  -side RIGHT  -spreadType SIDE
editPin -layer $ports_layer -pin $pins_left   -side LEFT   -spreadType SIDE
# editPin -layer $ports_layer -pin $pins_bottom -side BOTTOM -spreadType SIDE
editPin -layer $ports_layer -pin $pins_top    -side TOP    -spreadType SIDE

