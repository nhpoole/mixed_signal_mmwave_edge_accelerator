# LVS and parasitic extraction.

set vdd_rail_name "VDD"
set vss_rail_name "VSS"

load diff_fold_casc_ota_dnwell.mag
box 0 0 0 0
flatten diff_fold_casc_ota_flat
load diff_fold_casc_ota_flat
box 0 0 0 0

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

port vop index 1 
port vom index 2
port vip index 3
port vim index 4
port vocm index 5
port ibiasn index 6
port $vdd_rail_name index 7
port $vss_rail_name index 8
save diff_fold_casc_ota_flat.mag

extract all
ext2spice lvs
ext2spice -o diff_fold_casc_ota_lvs_layout.spice

extract all
ext2sim labels on
ext2sim
extresist tolerance 10
extresist
ext2spice lvs
ext2spice cthresh 0.01
#ext2spice extresist on
ext2spice -o diff_fold_casc_ota_pex.spice

#exec cp diff_fold_casc_ota_lvs_layout.spice diff_fold_casc_ota_lvs_layout_ndum.spice
#if {[catch {exec grep -q "VDD VDD VDD VDD" diff_fold_casc_ota_lvs_layout_ndum.spice} output] == 0} {
#    puts "Removing VDD-shorted dummy devices..."
#    exec grep -v "VDD VDD VDD VDD" diff_fold_casc_ota_lvs_layout_ndum.spice > tmpfile
#    exec mv tmpfile diff_fold_casc_ota_lvs_layout_ndum.spice
#} else {
#    puts "No VDD-shorted dummy devices found."
#}
#if {[catch {exec grep -q "VSS VSS VSS VSS" diff_fold_casc_ota_lvs_layout_ndum.spice} output] == 0} {
#    puts "Removing VSS-shorted dummy devices..."
#    exec grep -v "VSS VSS VSS VSS" diff_fold_casc_ota_lvs_layout_ndum.spice > tmpfile
#    exec mv tmpfile diff_fold_casc_ota_lvs_layout_ndum.spice
#} else {
#    puts "No VSS-shorted dummy devices found."
#}




