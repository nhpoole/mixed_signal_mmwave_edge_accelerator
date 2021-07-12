# Set up power rails, guard rings, wells, etc.

proc shift_to_center {} {
	set res1 [box size]
	move [expr {-[lindex $res1 0] / 2}]i [expr {-[lindex $res1 1] / 2}]i
}

proc place_nmos {x_center y_center width length nf index} {
	puts $x_center
	select clear
	box [expr $x_center]um [expr $y_center]um [expr $x_center]um [expr $y_center]um  
	magic::gencell sky130::sky130_fd_pr__nfet_01v8 [format "xm%d" $index] w $width l $length nf $nf m 1 diffcov 100 polycov 60 poverlap 0 doverlap 1 topc 1 botc 1 guard 0 full_metal 0 viagate 50
	shift_to_center
}

proc place_pmos {x_center y_center width length nf index} {
	select clear
	box [expr $x_center]um [expr $y_center]um [expr $x_center]um [expr $y_center]um  
	magic::gencell sky130::sky130_fd_pr__pfet_01v8_lvt [format "xm%d" $index] w $width l $length nf $nf m 1 diffcov 100 polycov 60 poverlap 0 doverlap 1 topc 1 botc 1 guard 0 full_metal 0 viagate 50
	shift_to_center
}

# Draw guard ring for 01V8_lvt PMOS.
proc draw_nguard {lx ly ux uy} {

	set center_x [expr ($lx + $ux)/2]
	set center_y [expr ($ly + $uy)/2]

	box [expr $center_x]um [expr $center_y]um [expr $center_x]um [expr $center_y]um
	pushbox
	# Load dict.

	set parameters [sky130::sky130_fd_pr__pfet_01v8_lvt_defaults]
	# Param dict copied from sky130::sky130_fd_pr__pfet_01v8_lvt_draw.
	set newdict [dict create \
	    gate_type		pfetlvt \
	    diff_type 		pdiff \
	    diff_contact_type	pdc \
	    plus_diff_type	nsd \
	    plus_contact_type	nsc \
	    poly_type		poly \
	    poly_contact_type	pc \
	    sub_type		nwell \
	    dev_sub_type	nwell \
	    gate_to_polycont	0.32 \
	    min_effl		0.185 \
	    min_allc		0.26 \
	]
	set drawdict [dict merge $sky130::ruleset $newdict $parameters]
	dict set drawdict viagb 100
	dict set drawdict viagt 100
	dict set drawdict viagr 90
	dict set drawdict viagl 90
	dict set drawdict contact_size 0.5
	dict set drawdict via_size 0.5
	dict set drawdict full_metal 1

	set contact_size [dict get $drawdict contact_size]
	set diff_surround [dict get $drawdict diff_surround]
	set sub_surround [dict get $drawdict sub_surround]

	# Calculate gx and gy. 

	set gw [expr ($ux-$lx - ($contact_size + $diff_surround + $diff_surround + $sub_surround + $sub_surround) - 0.3)]
	set gh [expr ($uy-$ly - ($contact_size + $diff_surround + $diff_surround + $sub_surround + $sub_surround) - 0.3)]


	#sky130::guard_ring $gw $gh $drawdict
    
	# Finish painting metal.
	#box [expr $center_x - $gw/2 - $contact_size/2 - 0.03]um [expr $center_y - $gh/2 - $contact_size/2 - 0.03]um [expr $center_x - $gw/2 + $contact_size/2 + 0.03]um [expr $center_y + $gh/2 + $contact_size/2 + 0.03]um
	#paint m1
	#box [expr $center_x + $gw/2 - $contact_size/2 - 0.03]um [expr $center_y - $gh/2 - $contact_size/2 - 0.03]um [expr $center_x + $gw/2 + $contact_size/2 + 0.03]um [expr $center_y + $gh/2 + $contact_size/2 + 0.03]um
	#paint m1

	# Connection to m4 power rail.
	# 3x1.5 via in the corners
	# Bottom right via.
	box [expr $center_x + $gw/2 - $contact_size/2 - 0.03 -3]um [expr $center_y + $gh/2 - $contact_size/2 - 0.03 - 1.5]um [expr $center_x + $gw/2 - $contact_size/2 - 0.03]um [expr $center_y + $gh/2 - $contact_size/2 - 0.03]um
	sky130::via1_draw
	sky130::via2_draw
	sky130::via3_draw

	box [expr $center_x - $gw/2 + $contact_size/2 + 0.03]um [expr $center_y + $gh/2 - $contact_size/2 - 0.03 - 1.5]um [expr $center_x - $gw/2 + $contact_size/2 + 0.03 + 3]um [expr $center_y + $gh/2 - $contact_size/2 - 0.03]um
	sky130::via1_draw
	sky130::via2_draw
	sky130::via3_draw
}

# Draw guard ring for 01V8 NMOS.
# If you place pguard and nguard too close things get oddly shifted.
proc draw_pguard {lx ly ux uy} {

	set center_x [expr ($lx + $ux)/2]
	set center_y [expr ($ly + $uy)/2]

	box [expr $center_x]um [expr $center_y]um [expr $center_x]um [expr $center_y]um
	pushbox
	# Load dict.

	set parameters [sky130::sky130_fd_pr__nfet_01v8_defaults]
	# Param dict copied from sky130::sky130_fd_pr__nfet_01v8_draw.
	set newdict [dict create \
	    gate_type		nfet \
	    diff_type 		ndiff \
	    diff_contact_type	ndc \
	    plus_diff_type	psd \
	    plus_contact_type	psc \
	    poly_type		poly \
	    poly_contact_type	pc \
	    sub_type		psub \
	    min_effl		0.185 \
	    min_allc		0.26 \
    ]
	set drawdict [dict merge $sky130::ruleset $newdict $parameters]
	dict set drawdict viagb 100
	dict set drawdict viagt 100
	dict set drawdict viagr 90 
	dict set drawdict viagl 90
	dict set drawdict contact_size 0.5
	dict set drawdict via_size 0.5
	dict set drawdict full_metal 1

	set contact_size [dict get $drawdict contact_size]
	set diff_surround [dict get $drawdict diff_surround]
	set sub_surround [dict get $drawdict sub_surround]

	# Calculate gx and gy .

	set gw [expr ($ux-$lx - ($contact_size + $diff_surround + $diff_surround + $sub_surround + $sub_surround) - 0.3)]
	set gh [expr ($uy-$ly - ($contact_size + $diff_surround + $diff_surround + $sub_surround + $sub_surround) - 0.3)]

	#sky130::guard_ring $gw $gh $drawdict

	# Finish painting metal.
	#box [expr $center_x - $gw/2 - $contact_size/2 - 0.03]um [expr $center_y - $gh/2 - $contact_size/2 - 0.03]um [expr $center_x - $gw/2 + $contact_size/2 + 0.03]um [expr $center_y + $gh/2 + $contact_size/2 + 0.03]um
	#paint m1
	#box [expr $center_x + $gw/2 - $contact_size/2 - 0.03]um [expr $center_y - $gh/2 - $contact_size/2 - 0.03]um [expr $center_x + $gw/2 + $contact_size/2 + 0.03]um [expr $center_y + $gh/2 + $contact_size/2 + 0.03]um
	#paint m1

	# Connection to m4 power rail.
	# 3x1.5 via in the corners
	# Bottom right via.
	box [expr $center_x + $gw/2 - $contact_size/2 - 0.03 -3]um [expr $center_y - $gh/2 + $contact_size/2 + 0.03]um [expr $center_x + $gw/2 - $contact_size/2 - 0.03]um [expr $center_y - $gh/2 + $contact_size/2 + 0.03 + 1.5]um
	sky130::via1_draw
	sky130::via2_draw
	sky130::via3_draw
    
	box [expr $center_x - $gw/2 + $contact_size/2 + 0.03]um [expr $center_y - $gh/2 + $contact_size/2 + 0.03]um [expr $center_x - $gw/2 + $contact_size/2 + 0.03 + 3]um [expr $center_y - $gh/2 + $contact_size/2 + 0.03 + 1.5]um
	sky130::via1_draw
	sky130::via2_draw
	sky130::via3_draw
}

# Define cell boundaries.
# Variable cell width and height.

set cell_lx -17
set cell_ux 16.2

set cell_ly -16
set cell_uy 12

set nguard_lx [expr $cell_lx]
set nguard_ux [expr $cell_ux]
set nguard_uy [expr $cell_uy]
set pguard_lx [expr $cell_lx]
set pguard_ly [expr $cell_ly]
set pguard_ux [expr $cell_ux]
set np_boundary_y -0.4

set power_rail_width 4
set power_rail_layers "m4"

set vdd_rail_name "VDD"
set vss_rail_name "VSS"

# Draw guard ring for PFETs.
draw_nguard [expr $nguard_lx] [expr $np_boundary_y + 0.2] [expr $nguard_ux] [expr $nguard_uy]

# Draw guard ring for NFETs.
draw_pguard [expr $pguard_lx] [expr $pguard_ly] [expr $pguard_ux] [expr $np_boundary_y - 0.2]


# Place power rails. This should not need to be modified.

# Top power rail.
# lx ly ux xy
box [expr $cell_lx]um [expr $cell_uy - $power_rail_width]um [expr $cell_ux]um [expr $cell_uy]um
paint $power_rail_layers
# Label rail.
#box [expr $cell_lx]um [expr $cell_uy - $power_rail_width]um [expr $cell_lx]um [expr $cell_uy]um
#label $vdd_rail_name FreeSans 200

# Bottom power rail.
box [expr $cell_lx]um [expr $cell_ly]um [expr $cell_ux]um [expr $cell_ly + $power_rail_width]um
paint $power_rail_layers
# Label rail.
#box [expr $cell_lx]um [expr $cell_ly]um [expr $cell_lx]um [expr $cell_ly + $power_rail_width]um
#label $vss_rail_name FreeSans 200




