# LVS and parasitic extraction.

set vdd_rail_name "VDD"
set vss_rail_name "VSS"

load analog_top_level.mag
box 0 0 0 0
#flatten analog_top_level_flat
#load analog_top_level_flat
#box 0 0 0 0

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
findlabel vintp
port make
findlabel vintm
port make
findlabel vfiltp
port make
findlabel vfiltm
port make
findlabel vlowA
port make
findlabel vrefA
port make
findlabel q7A
port make
findlabel q6A
port make
findlabel q5A
port make
findlabel q4A
port make
findlabel q3A
port make
findlabel q2A
port make
findlabel q1A
port make
findlabel q0A
port make
findlabel adc_clk
port make
findlabel sample
port make
findlabel vlowB
port make
findlabel vrefB
port make
findlabel q7B
port make
findlabel q6B
port make
findlabel q5B
port make
findlabel q4B
port make
findlabel q3B
port make
findlabel q2B
port make
findlabel q1B
port make
findlabel q0B
port make
findlabel adc_compA
port make
findlabel adc_compB
port make
findlabel vcp
port make
findlabel vcp_sampled
port make
findlabel vpeak_sampled
port make
findlabel vpeak
port make
findlabel vse
port make
findlabel vcomp
port make
findlabel vhpf
port make
findlabel vincm
port make
findlabel vocm
port make
findlabel vocm_filt
port make
findlabel gain_ctrl_0
port make
findlabel gain_ctrl_1
port make
findlabel vbiasp
port make
findlabel vbiasn
port make
findlabel peak_detector_rst
port make
findlabel vampm
port make
findlabel vampp
port make
findlabel adc_vcaparrayB
port make
findlabel adc_vcaparrayA
port make
findlabel rst_n
port make

port vintp index 1
port vintm index 2
port vfiltp index 3
port vfiltm index 4
port vlowA index 5
port vrefA index 6
port q7A index 7
port q6A index 8
port q5A index 9
port q4A index 10
port q3A index 11
port q2A index 12
port q1A index 13
port q0A index 14
port adc_clk index 15
port sample index 16
port vlowB index 17
port vrefB index 18
port q7B index 19
port q6B index 20
port q5B index 21
port q4B index 22
port q3B index 23
port q2B index 24
port q1B index 25
port q0B index 26
port adc_compA index 27
port adc_compB index 28
port vcp index 29
port vcp_sampled index 30
port vpeak_sampled index 31
port vpeak index 32
port vse index 33
port vcomp index 34
port vhpf index 35
port vincm index 38
port vocm index 39
port vocm_filt index 40
port gain_ctrl_0 index 41
port gain_ctrl_1 index 42
port vbiasp index 43
port vbiasn index 44
port peak_detector_rst index 45
port vampm index 46
port vampp index 47
port adc_vcaparrayB index 48
port adc_vcaparrayA index 49
port rst_n index 50
port $vdd_rail_name index 36
port $vss_rail_name index 37
save analog_top_level_flat.mag

extract all
ext2spice lvs
ext2spice -o analog_top_level_lvs_layout.spice

#extract all
#ext2sim labels on
#ext2sim
#extresist tolerance 10
#extresist
#ext2spice lvs
#ext2spice cthresh 0.01
#ext2spice extresist on
#ext2spice -o analog_top_level_pex.spice




