#----------------------------------------------------------------
# Capacitor: Draw a single device
#----------------------------------------------------------------

proc draw_mimcap {parameters width length} {    
    # Epsilon for avoiding round-off errors
    set eps  0.0005

    # Set local default values if they are not in parameters
    set cap_surround 0
    set bot_surround 0
    set top_surround 0
    set end_spacing 0
    set bconnect 0	    ;# bottom plates are connected in array
    set cap_spacing 0	    ;# cap spacing in array
    set top_metal_space 0   ;# top metal spacing (if larger than cap spacing)
    set top_metal_width 0   ;# top metal minimum width
    set contact_size 0	    ;# cap contact minimum size
    set ccov 100	    ;# amount of contact coverage

    # Set a local variable for each parameter (e.g., $l, $w, etc.)
    foreach key [dict keys $parameters] {
        set $key [dict get $parameters $key]
    }

    if {![dict exists $parameters top_metal_space]} {
	set top_metal_space $metal_spacing
    }

    # Draw the device
    pushbox
    box size 0 0

    pushbox
    set w [expr $width]
    set l [expr $length]
    set hw [expr $w]
    set hl [expr $l]
    box grow e ${hw}um
    box grow w ${hw}um
    box grow n ${hl}um
    box grow s ${hl}um
    paint ${cap_type}
    pushbox

    # Find contact width if ccov is other than 100
    set cmaxw [- $w [* $cap_surround 2]]
    set cw [* $cmaxw [/ [expr abs($ccov)] 100.0]]
    # Contact width must meet minimum
    if {$cw < $contact_size} {set cw $contact_size}
    if {$cw < $top_metal_width} {set cw $top_metal_width}
    # Difference between maximum contact width and actual contact width
    set cdif [- $cmaxw $cw]

    # Reduce the box to the maximum contact area
    box grow n -${cap_surround}um
    box grow s -${cap_surround}um
    box grow e -${cap_surround}um
    box grow w -${cap_surround}um

    set anchor [string index $ccov 0]
    if {$anchor == "+"} {
	box grow e -${cdif}um
    } elseif {$anchor == "-"} {
	box grow w -${cdif}um
    } else {
        set cdif [/ ${cdif} 2]
	box grow w -${cdif}um
	box grow e -${cdif}um
    }
    paint ${cap_contact_type}

    pushbox
    box grow n ${top_surround}um
    box grow s ${top_surround}um
    box grow e ${top_surround}um
    box grow w ${top_surround}um
    paint ${top_type}
    set cext [sky130::getbox]
    popbox
    popbox
    pushbox
    box grow n ${bot_surround}um
    box grow s ${bot_surround}um
    box grow e ${bot_surround}um
    box grow w ${bot_surround}um

    paint ${bot_type}
    # Create boundary using properties
    property FIXED_BBOX [box values]
    set cext [sky130::unionbox $cext [sky130::getbox]]

    # Calculate the distance from the top metal on the cap contact
    # to the top metal on the end contact.
    set top_met_sep [+ $end_spacing [- $cdif $top_surround]]

    # Diagnostic!
    puts stdout "cdif = $cdif"
    puts stdout "top_met_sep = $top_met_sep"

    # Increase end spacing if top metal spacing rule is not met
    set loc_end_spacing $end_spacing
    if {$top_met_sep < $top_metal_space} {
	set loc_end_spacing [+ $loc_end_spacing [- $top_metal_space $top_met_sep]]
    }
    # Diagnostic!
    puts stdout "loc_end_spacing = $loc_end_spacing"

    # Extend bottom metal under contact to right
    box grow e ${loc_end_spacing}um
    set chw [/ ${contact_size} 2.0]
    box grow e ${chw}um
    box grow e ${end_surround}um
    paint ${bot_type}

    popbox
    popbox

    pushbox
    box move e ${hw}um
    box move e ${bot_surround}um
    box move e ${loc_end_spacing}um
    set cl [- [+ ${lcont} [* ${bot_surround} 2.0]] [* ${end_surround} 2.0]]
    set cl [- ${cl} ${metal_surround}]  ;# see below
    set cext [sky130::unionbox $cext [sky130::draw_contact 0 ${cl} \
		${end_surround} ${metal_surround} ${contact_size} \
		${bot_type} ${top_contact_type} ${top_type} full]]
    popbox
    popbox

    return $cext

    # cl shrinks top and bottom to accomodate larger bottom metal
    # surround rule for contacts near a MiM cap.  This should be its
    # own variable, but metal_surround is sufficient.
}

proc cap_mim_m3_1_draw {width length} {
    set parameters [sky130::sky130_fd_pr__cap_mim_m3_1_defaults]
    set newdict [dict create \
	    top_type 		m4 \
	    top_contact_type	via3 \
	    cap_type 		mimcap \
	    cap_contact_type	mimcc \
	    bot_type 		m3 \
	    bot_surround	0.5 \
	    cap_spacing		0.5 \
	    cap_surround	0.2 \
	    top_surround	0.005 \
	    end_surround	0.1 \
	    end_spacing		0.1 \
	    contact_size	0.32 \
	    metal_surround	0.08 \
    ]
    set drawdict [dict merge $sky130::ruleset $newdict $parameters]
    return [draw_mimcap $drawdict $width $length]
}

proc cap_mim_m3_2_draw {width length} {
    set parameters [sky130::sky130_fd_pr__cap_mim_m3_2_defaults]
    set newdict [dict create \
	    top_type 		m5 \
	    top_contact_type	via4 \
	    cap_type 		mimcap2 \
	    cap_contact_type	mim2cc \
	    bot_type 		m4 \
	    bot_surround	0.5 \
	    cap_spacing		0.5 \
	    cap_surround	0.2 \
	    top_surround	0.12 \
	    end_surround	0.1 \
	    end_spacing		0.1 \
	    contact_size	1.18 \
	    metal_surround	0.21 \
	    top_metal_width	1.6 \
	    top_metal_space	1.7 \
    ]
    set drawdict [dict merge $sky130::ruleset $newdict $parameters]
    return [draw_mimcap $drawdict $width $length]
}

set cap_width 10
set cap_length 10
cap_mim_m3_2_draw [expr $cap_width] [expr $cap_length]

