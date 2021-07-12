# Pre-check script.

gds noduplicates yes
#load $PDKPATH/libs.ref/sky130_sram_macros/maglef/sky130_sram_4kbyte_1rw1r_32x1024_8.mag
lef read $PDKPATH/libs.ref/sky130_sram_macros/lef/sky130_sram_4kbyte_1rw1r_32x1024_8.lef

#gds read user_analog_project_wrapper_merged_with_sram_gds.gds
gds read user_analog_project_wrapper.gds

set fout [open ./drc_results.log w]
set oscale [cif scale out]
set cell_name user_analog_project_wrapper
magic::suspendall
puts stdout "\[INFO\]: Loading $cell_name\n"
flush stdout

load $cell_name
select top cell
expand
drc euclidean on
drc style drc(full)
drc check
set drcresult [drc listall why]

set count 0
puts $fout "$cell_name"
puts $fout "----------------------------------------"
foreach {errtype coordlist} $drcresult {
	puts $fout $errtype
	puts $fout "----------------------------------------"
	foreach coord $coordlist {
	    set bllx [expr {$oscale * [lindex $coord 0]}]
	    set blly [expr {$oscale * [lindex $coord 1]}]
	    set burx [expr {$oscale * [lindex $coord 2]}]
	    set bury [expr {$oscale * [lindex $coord 3]}]
	    set coords [format " %.3f %.3f %.3f %.3f" $bllx $blly $burx $bury]
	    puts $fout "$coords"
	    set count [expr {$count + 1} ]
	}
	puts $fout "----------------------------------------"
}

puts $fout "\[INFO\]: COUNT: $count"
puts $fout "\[INFO\]: Should be divided by 3 or 4"

puts $fout ""
close $fout

puts stdout "\[INFO\]: COUNT: $count"
puts stdout "\[INFO\]: Should be divided by 3 or 4"
puts stdout "\[INFO\]: DRC Checking DONE (drc_results.log)"
flush stdout

#puts stdout "\[INFO\]: Saving mag view with DRC errors(./user_analog_project_wrapper.magic.drc.mag)"
# WARNING: changes the name of the cell; keep as last step
#save ./user_analog_project_wrapper.magic.drc.mag
#puts stdout "\[INFO\]: Saved"

