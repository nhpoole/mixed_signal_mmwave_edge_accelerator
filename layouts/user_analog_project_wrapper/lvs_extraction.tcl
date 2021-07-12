# LVS and parasitic extraction.

#load user_analog_project_wrapper.mag
box 0 0 0 0
#flatten user_analog_project_wrapper_flat
#load user_analog_project_wrapper_flat
#box 0 0 0 0

#port adc_vcaparrayA index 49
#save user_analog_project_wrapper_flat.mag

select top cell
extract no all
extract do local
extract unique
extract
ext2spice lvs
ext2spice -o user_analog_project_wrapper_lvs_layout.spice

#extract all
#ext2sim labels on
#ext2sim
#extresist tolerance 10
#extresist
#ext2spice lvs
#ext2spice cthresh 0.01
#ext2spice extresist on
#ext2spice -o user_analog_project_wrapper_pex.spice




