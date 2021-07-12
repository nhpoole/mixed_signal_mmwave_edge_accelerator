# LVS and parasitic extraction.

set vdd_rail_name "VDD"
set vss_rail_name "VSS"

load bias_current_distribution.mag
box 0 0 0 0
flatten bias_current_distribution_flat
load bias_current_distribution_flat
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
findlabel vbiasp
port make
findlabel input_amplifier_ibiasn1
port make
findlabel input_amplifier_ibiasn2
port make
findlabel diff_to_se_converter_ibiasn
port make
findlabel peak_detector_ibiasn1
port make
findlabel peak_detector_ibiasn2
port make
findlabel sample_and_hold_ibiasn_A
port make
findlabel dac_8bit_ibiasn_A
port make
findlabel sample_and_hold_ibiasn_B
port make
findlabel dac_8bit_ibiasn_B
port make
findlabel comparator_ibiasn
port make
findlabel biquad_gm_c_filter_ibiasn1
port make
findlabel biquad_gm_c_filter_ibiasn2
port make
findlabel biquad_gm_c_filter_ibiasn3
port make
findlabel biquad_gm_c_filter_ibiasn4
port make
findlabel low_freq_pll_ibiasn
port make
findlabel vbiasn
port make
findlabel dac_8bit_ibiasp_A
port make
findlabel dac_8bit_ibiasp_B
port make

port vbiasp index 3
port input_amplifier_ibiasn1 index 4
port input_amplifier_ibiasn2 index 5
port diff_to_se_converter_ibiasn index 6
port peak_detector_ibiasn1 index 7
port peak_detector_ibiasn2 index 8
port sample_and_hold_ibiasn_A index 9
port dac_8bit_ibiasn_A index 10
port sample_and_hold_ibiasn_B index 11
port dac_8bit_ibiasn_B index 12
port comparator_ibiasn index 13
port biquad_gm_c_filter_ibiasn1 index 14
port biquad_gm_c_filter_ibiasn2 index 15
port biquad_gm_c_filter_ibiasn3 index 16
port biquad_gm_c_filter_ibiasn4 index 17
port low_freq_pll_ibiasn index 18
port vbiasn index 19
port dac_8bit_ibiasp_A index 20
port dac_8bit_ibiasp_B index 21
port $vdd_rail_name index 1
port $vss_rail_name index 2
save bias_current_distribution_flat.mag

extract all
ext2spice lvs
ext2spice -o bias_current_distribution_lvs_layout.spice

extract all
ext2sim labels on
ext2sim
#extresist tolerance 10
#extresist
ext2spice lvs
ext2spice cthresh 0.01
#ext2spice extresist on
ext2spice -o bias_current_distribution_pex.spice




