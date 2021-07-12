proc draw_sq_mimcap {} {    
    set cap_x -200
    set cap_y -60
    set cap_sq_w 24

    box [expr $cap_x]um [expr $cap_y]um [expr $cap_x]um [expr $cap_y]um
    box grow center [expr $cap_sq_w/2]um
    box grow e 2um
    paint mimcap
    box grow center 0.5um
    paint m3
    paint m4
    box [expr $cap_x]um [expr $cap_y]um [expr $cap_x]um [expr $cap_y]um
    box grow n [expr $cap_sq_w/2]um
    box grow s [expr $cap_sq_w/2]um
    box grow e 2um
    move e [expr $cap_sq_w/2]um
    box shrink center 0.25um
    paint mimcapcontact

    box [expr $cap_x]um [expr $cap_y]um [expr $cap_x]um [expr $cap_y]um
    box grow center [expr $cap_sq_w/2]um
    box grow s 2um
    paint mimcap2
    box grow center 0.5um
    paint m4
    paint m5
    box [expr $cap_x]um [expr $cap_y]um [expr $cap_x]um [expr $cap_y]um
    box grow e [expr $cap_sq_w/2]um
    box grow w [expr $cap_sq_w/2]um
    box grow s 2um
    move s [expr $cap_sq_w/2]um
    box shrink center 0.25um
    paint mimcap2contact
}

proc draw_gen_mimcap {} {    
    set cap_x -100
    set cap_y -6
    set cap_w 2
    set cap_l 29

    box [expr $cap_x]um [expr $cap_y]um [expr $cap_x]um [expr $cap_y]um
    box grow w [expr $cap_w/2]um
    box grow e [expr $cap_w/2]um
    box grow n [expr $cap_l/2]um
    box grow s [expr $cap_l/2]um
    box grow e 2um
    paint mimcap
    box grow center 0.5um
    paint m3
    paint m4
    box [expr $cap_x]um [expr $cap_y]um [expr $cap_x]um [expr $cap_y]um
    box grow n [expr $cap_l/2]um
    box grow s [expr $cap_l/2]um
    box grow e 2um
    move e [expr $cap_w/2]um
    box shrink center 0.25um
    paint mimcapcontact

    box [expr $cap_x]um [expr $cap_y]um [expr $cap_x]um [expr $cap_y]um
    box grow w [expr $cap_w/2]um
    box grow e [expr $cap_w/2]um
    box grow n [expr $cap_l/2]um
    box grow s [expr $cap_l/2]um
    box grow s 2um
    paint mimcap2
    box grow center 0.5um
    paint m4
    paint m5
    box [expr $cap_x]um [expr $cap_y]um [expr $cap_x]um [expr $cap_y]um
    box grow e [expr $cap_w/2]um
    box grow w [expr $cap_w/2]um
    box grow s 2um
    move s [expr $cap_l/2]um
    box shrink center 0.25um
    paint mimcap2contact
}

#draw_sq_mimcap
draw_gen_mimcap


