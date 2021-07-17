#=========================================================================
# Makefile
#=========================================================================
# Generator : /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/backends/make_backend.py

SHELL=/usr/bin/env bash -euo pipefail

# $1 -- $dst
# $2 -- $src
# $3 -- $stamp

define cpdir
	rm -rf ./$1
	cp -aL $2 $1 || true
	chmod -R +w $1
	touch $3
endef

# $1 -- $dst
# $2 -- $src
# $3 -- $stamp

define cpdir-and-parameterize
	rm -rf ./$1
	cp -aL $2 $1 || true
	chmod -R +w $1
	cp .mflowgen/$1/configure.yml $1
	touch $3
endef

# $1 -- $dst
# $2 -- $src
# $3 -- $stamp

define mkdir-and-symlink
	rm -rf ./$1
	mkdir -p $1
	cd $1 && ln -sf ../$2/* . && cd ..
	rm $1/configure.yml && cp .mflowgen/$1/configure.yml $1
	touch $3
endef

# $1 -- $dst_dir
# $2 -- $dst
# $3 -- $src
# $4 -- $stamp

define symlink
	mkdir -p $1
	cd $1 && ln -sf $3 $2 && touch $4
endef

# $1 -- $stamp

define stamp
	touch $1
endef

# Default

default: lvs_setup premerge skywater-130nm mentor-calibre-comparison mentor-calibre-comparison-nobbox mentor-calibre-gdsmerge netgen-lvs-gds open-magic-gds2spice open-magic-gds2spice-nobbox

# ------------------------------------------------------------------------
# lvs_setup
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 0-lvs_setup/.prebuilt)","")
0-lvs_setup/.stamp:
	$(call cpdir-and-parameterize,0-lvs_setup,../design/lvs-setup,0-lvs_setup/.stamp)
endif

# collect inputs

# execute

ifeq ("$(wildcard 0-lvs_setup/.prebuilt)","")

define 0_lvs_setup_commands_rule
	mkdir -p 0-lvs_setup/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t lvs_setup && chmod +x .mflowgen/0-lvs_setup/mflowgen-run && cp -f .mflowgen/0-lvs_setup/mflowgen-run 0-lvs_setup && if [[ -e .mflowgen/0-lvs_setup/mflowgen-debug ]]; then chmod +x .mflowgen/0-lvs_setup/mflowgen-debug && cp -f .mflowgen/0-lvs_setup/mflowgen-debug 0-lvs_setup; fi && if [[ -e .mflowgen/0-lvs_setup/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/0-lvs_setup/mflowgen-check-preconditions.py && cp -f .mflowgen/0-lvs_setup/mflowgen-check-preconditions.py 0-lvs_setup; fi && if [[ -e .mflowgen/0-lvs_setup/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/0-lvs_setup/mflowgen-check-postconditions.py && cp -f .mflowgen/0-lvs_setup/mflowgen-check-postconditions.py 0-lvs_setup; fi && cd 0-lvs_setup && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 0-lvs_setup/outputs/*
endef

0-lvs_setup/.execstamp: 0-lvs_setup/.stamp
	$(call 0_lvs_setup_commands_rule)
	touch $@

0-lvs_setup/outputs/.execstamp.deconv.lvs.v: 0-lvs_setup/.execstamp
	touch $@
0-lvs_setup/outputs/.execstamp.deconv.nofillerlvs.v: 0-lvs_setup/.execstamp
	touch $@
0-lvs_setup/outputs/.execstamp.deconv.flatbuslvs.v: 0-lvs_setup/.execstamp
	touch $@
0-lvs_setup/outputs/.execstamp.deconv.nofillerflatbuslvs.v: 0-lvs_setup/.execstamp
	touch $@
0-lvs_setup/outputs/.execstamp.adc_controller.lvs.v: 0-lvs_setup/.execstamp
	touch $@
0-lvs_setup/outputs/.execstamp.adc_controller.nofillerlvs.v: 0-lvs_setup/.execstamp
	touch $@
0-lvs_setup/outputs/.execstamp.adc_controller.flatbuslvs.v: 0-lvs_setup/.execstamp
	touch $@
0-lvs_setup/outputs/.execstamp.adc_controller.nofillerflatbuslvs.v: 0-lvs_setup/.execstamp
	touch $@
0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef: 0-lvs_setup/.execstamp
	touch $@
0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp: 0-lvs_setup/.execstamp
	touch $@
0-lvs_setup/outputs/.execstamp.design_extracted.spice: 0-lvs_setup/.execstamp
	touch $@
0-lvs_setup/outputs/.execstamp.user_analog_project_wrapper.spice: 0-lvs_setup/.execstamp
	touch $@

endif

# collect outputs

0-lvs_setup/outputs/.stamp.deconv.lvs.v: 0-lvs_setup/.execstamp 0-lvs_setup/outputs/.execstamp.adc_controller.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.lvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.deconv.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.lvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.design_extracted.spice 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 0-lvs_setup/outputs/.execstamp.user_analog_project_wrapper.spice
	$(call stamp,0-lvs_setup/outputs/.stamp.deconv.lvs.v)

0-lvs_setup/outputs/.stamp.deconv.nofillerlvs.v: 0-lvs_setup/.execstamp 0-lvs_setup/outputs/.execstamp.adc_controller.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.lvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.deconv.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.lvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.design_extracted.spice 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 0-lvs_setup/outputs/.execstamp.user_analog_project_wrapper.spice
	$(call stamp,0-lvs_setup/outputs/.stamp.deconv.nofillerlvs.v)

0-lvs_setup/outputs/.stamp.deconv.flatbuslvs.v: 0-lvs_setup/.execstamp 0-lvs_setup/outputs/.execstamp.adc_controller.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.lvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.deconv.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.lvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.design_extracted.spice 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 0-lvs_setup/outputs/.execstamp.user_analog_project_wrapper.spice
	$(call stamp,0-lvs_setup/outputs/.stamp.deconv.flatbuslvs.v)

0-lvs_setup/outputs/.stamp.deconv.nofillerflatbuslvs.v: 0-lvs_setup/.execstamp 0-lvs_setup/outputs/.execstamp.adc_controller.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.lvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.deconv.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.lvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.design_extracted.spice 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 0-lvs_setup/outputs/.execstamp.user_analog_project_wrapper.spice
	$(call stamp,0-lvs_setup/outputs/.stamp.deconv.nofillerflatbuslvs.v)

0-lvs_setup/outputs/.stamp.adc_controller.lvs.v: 0-lvs_setup/.execstamp 0-lvs_setup/outputs/.execstamp.adc_controller.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.lvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.deconv.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.lvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.design_extracted.spice 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 0-lvs_setup/outputs/.execstamp.user_analog_project_wrapper.spice
	$(call stamp,0-lvs_setup/outputs/.stamp.adc_controller.lvs.v)

0-lvs_setup/outputs/.stamp.adc_controller.nofillerlvs.v: 0-lvs_setup/.execstamp 0-lvs_setup/outputs/.execstamp.adc_controller.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.lvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.deconv.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.lvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.design_extracted.spice 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 0-lvs_setup/outputs/.execstamp.user_analog_project_wrapper.spice
	$(call stamp,0-lvs_setup/outputs/.stamp.adc_controller.nofillerlvs.v)

0-lvs_setup/outputs/.stamp.adc_controller.flatbuslvs.v: 0-lvs_setup/.execstamp 0-lvs_setup/outputs/.execstamp.adc_controller.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.lvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.deconv.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.lvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.design_extracted.spice 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 0-lvs_setup/outputs/.execstamp.user_analog_project_wrapper.spice
	$(call stamp,0-lvs_setup/outputs/.stamp.adc_controller.flatbuslvs.v)

0-lvs_setup/outputs/.stamp.adc_controller.nofillerflatbuslvs.v: 0-lvs_setup/.execstamp 0-lvs_setup/outputs/.execstamp.adc_controller.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.lvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.deconv.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.lvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.design_extracted.spice 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 0-lvs_setup/outputs/.execstamp.user_analog_project_wrapper.spice
	$(call stamp,0-lvs_setup/outputs/.stamp.adc_controller.nofillerflatbuslvs.v)

0-lvs_setup/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef: 0-lvs_setup/.execstamp 0-lvs_setup/outputs/.execstamp.adc_controller.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.lvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.deconv.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.lvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.design_extracted.spice 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 0-lvs_setup/outputs/.execstamp.user_analog_project_wrapper.spice
	$(call stamp,0-lvs_setup/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef)

0-lvs_setup/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp: 0-lvs_setup/.execstamp 0-lvs_setup/outputs/.execstamp.adc_controller.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.lvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.deconv.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.lvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.design_extracted.spice 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 0-lvs_setup/outputs/.execstamp.user_analog_project_wrapper.spice
	$(call stamp,0-lvs_setup/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp)

0-lvs_setup/outputs/.stamp.design_extracted.spice: 0-lvs_setup/.execstamp 0-lvs_setup/outputs/.execstamp.adc_controller.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.lvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.deconv.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.lvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.design_extracted.spice 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 0-lvs_setup/outputs/.execstamp.user_analog_project_wrapper.spice
	$(call stamp,0-lvs_setup/outputs/.stamp.design_extracted.spice)

0-lvs_setup/outputs/.stamp.user_analog_project_wrapper.spice: 0-lvs_setup/.execstamp 0-lvs_setup/outputs/.execstamp.adc_controller.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.lvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.deconv.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.lvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.design_extracted.spice 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 0-lvs_setup/outputs/.execstamp.user_analog_project_wrapper.spice
	$(call stamp,0-lvs_setup/outputs/.stamp.user_analog_project_wrapper.spice)

# post-conditions

define 0_lvs_setup_post_conditions_commands_rule
	cd 0-lvs_setup && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

0-lvs_setup/.postconditions.stamp: 0-lvs_setup/.execstamp 0-lvs_setup/outputs/.execstamp.adc_controller.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.lvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.deconv.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.lvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.design_extracted.spice 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 0-lvs_setup/outputs/.execstamp.user_analog_project_wrapper.spice 0-lvs_setup/outputs/.stamp.adc_controller.flatbuslvs.v 0-lvs_setup/outputs/.stamp.adc_controller.lvs.v 0-lvs_setup/outputs/.stamp.adc_controller.nofillerflatbuslvs.v 0-lvs_setup/outputs/.stamp.adc_controller.nofillerlvs.v 0-lvs_setup/outputs/.stamp.deconv.flatbuslvs.v 0-lvs_setup/outputs/.stamp.deconv.lvs.v 0-lvs_setup/outputs/.stamp.deconv.nofillerflatbuslvs.v 0-lvs_setup/outputs/.stamp.deconv.nofillerlvs.v 0-lvs_setup/outputs/.stamp.design_extracted.spice 0-lvs_setup/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 0-lvs_setup/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 0-lvs_setup/outputs/.stamp.user_analog_project_wrapper.spice
	$(call 0_lvs_setup_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: lvs_setup

lvs_setup: 0-lvs_setup/.execstamp 0-lvs_setup/.postconditions.stamp 0-lvs_setup/outputs/.execstamp.adc_controller.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.lvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.deconv.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.lvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.design_extracted.spice 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 0-lvs_setup/outputs/.execstamp.user_analog_project_wrapper.spice 0-lvs_setup/outputs/.stamp.adc_controller.flatbuslvs.v 0-lvs_setup/outputs/.stamp.adc_controller.lvs.v 0-lvs_setup/outputs/.stamp.adc_controller.nofillerflatbuslvs.v 0-lvs_setup/outputs/.stamp.adc_controller.nofillerlvs.v 0-lvs_setup/outputs/.stamp.deconv.flatbuslvs.v 0-lvs_setup/outputs/.stamp.deconv.lvs.v 0-lvs_setup/outputs/.stamp.deconv.nofillerflatbuslvs.v 0-lvs_setup/outputs/.stamp.deconv.nofillerlvs.v 0-lvs_setup/outputs/.stamp.design_extracted.spice 0-lvs_setup/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 0-lvs_setup/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 0-lvs_setup/outputs/.stamp.user_analog_project_wrapper.spice

.PHONY: 0

0: 0-lvs_setup/.execstamp 0-lvs_setup/.postconditions.stamp 0-lvs_setup/outputs/.execstamp.adc_controller.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.lvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.deconv.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.lvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.design_extracted.spice 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 0-lvs_setup/outputs/.execstamp.user_analog_project_wrapper.spice 0-lvs_setup/outputs/.stamp.adc_controller.flatbuslvs.v 0-lvs_setup/outputs/.stamp.adc_controller.lvs.v 0-lvs_setup/outputs/.stamp.adc_controller.nofillerflatbuslvs.v 0-lvs_setup/outputs/.stamp.adc_controller.nofillerlvs.v 0-lvs_setup/outputs/.stamp.deconv.flatbuslvs.v 0-lvs_setup/outputs/.stamp.deconv.lvs.v 0-lvs_setup/outputs/.stamp.deconv.nofillerflatbuslvs.v 0-lvs_setup/outputs/.stamp.deconv.nofillerlvs.v 0-lvs_setup/outputs/.stamp.design_extracted.spice 0-lvs_setup/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 0-lvs_setup/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 0-lvs_setup/outputs/.stamp.user_analog_project_wrapper.spice

# debug

# ------------------------------------------------------------------------
# premerge
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 1-premerge/.prebuilt)","")
1-premerge/.stamp:
	$(call cpdir-and-parameterize,1-premerge,../design/premerge,1-premerge/.stamp)
endif

# collect inputs

# execute

ifeq ("$(wildcard 1-premerge/.prebuilt)","")

define 1_premerge_commands_rule
	mkdir -p 1-premerge/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t premerge && chmod +x .mflowgen/1-premerge/mflowgen-run && cp -f .mflowgen/1-premerge/mflowgen-run 1-premerge && if [[ -e .mflowgen/1-premerge/mflowgen-debug ]]; then chmod +x .mflowgen/1-premerge/mflowgen-debug && cp -f .mflowgen/1-premerge/mflowgen-debug 1-premerge; fi && if [[ -e .mflowgen/1-premerge/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/1-premerge/mflowgen-check-preconditions.py && cp -f .mflowgen/1-premerge/mflowgen-check-preconditions.py 1-premerge; fi && if [[ -e .mflowgen/1-premerge/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/1-premerge/mflowgen-check-postconditions.py && cp -f .mflowgen/1-premerge/mflowgen-check-postconditions.py 1-premerge; fi && cd 1-premerge && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 1-premerge/outputs/*
endef

1-premerge/.execstamp: 1-premerge/.stamp
	$(call 1_premerge_commands_rule)
	touch $@

1-premerge/outputs/.execstamp.design.gds: 1-premerge/.execstamp
	touch $@
1-premerge/outputs/.execstamp.user_analog_project_wrapper_digital_abstracted.gds: 1-premerge/.execstamp
	touch $@
1-premerge/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds: 1-premerge/.execstamp
	touch $@

endif

# collect outputs

1-premerge/outputs/.stamp.design.gds: 1-premerge/.execstamp 1-premerge/outputs/.execstamp.design.gds 1-premerge/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 1-premerge/outputs/.execstamp.user_analog_project_wrapper_digital_abstracted.gds
	$(call stamp,1-premerge/outputs/.stamp.design.gds)

1-premerge/outputs/.stamp.user_analog_project_wrapper_digital_abstracted.gds: 1-premerge/.execstamp 1-premerge/outputs/.execstamp.design.gds 1-premerge/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 1-premerge/outputs/.execstamp.user_analog_project_wrapper_digital_abstracted.gds
	$(call stamp,1-premerge/outputs/.stamp.user_analog_project_wrapper_digital_abstracted.gds)

1-premerge/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds: 1-premerge/.execstamp 1-premerge/outputs/.execstamp.design.gds 1-premerge/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 1-premerge/outputs/.execstamp.user_analog_project_wrapper_digital_abstracted.gds
	$(call stamp,1-premerge/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds)

# post-conditions

define 1_premerge_post_conditions_commands_rule
	cd 1-premerge && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

1-premerge/.postconditions.stamp: 1-premerge/.execstamp 1-premerge/outputs/.execstamp.design.gds 1-premerge/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 1-premerge/outputs/.execstamp.user_analog_project_wrapper_digital_abstracted.gds 1-premerge/outputs/.stamp.design.gds 1-premerge/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 1-premerge/outputs/.stamp.user_analog_project_wrapper_digital_abstracted.gds
	$(call 1_premerge_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: premerge

premerge: 1-premerge/.execstamp 1-premerge/.postconditions.stamp 1-premerge/outputs/.execstamp.design.gds 1-premerge/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 1-premerge/outputs/.execstamp.user_analog_project_wrapper_digital_abstracted.gds 1-premerge/outputs/.stamp.design.gds 1-premerge/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 1-premerge/outputs/.stamp.user_analog_project_wrapper_digital_abstracted.gds

.PHONY: 1

1: 1-premerge/.execstamp 1-premerge/.postconditions.stamp 1-premerge/outputs/.execstamp.design.gds 1-premerge/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 1-premerge/outputs/.execstamp.user_analog_project_wrapper_digital_abstracted.gds 1-premerge/outputs/.stamp.design.gds 1-premerge/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 1-premerge/outputs/.stamp.user_analog_project_wrapper_digital_abstracted.gds

# debug

# ------------------------------------------------------------------------
# skywater-130nm
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 2-skywater-130nm/.prebuilt)","")
2-skywater-130nm/.stamp:
	$(call cpdir-and-parameterize,2-skywater-130nm,../../../../../../../../afs/ir.stanford.edu/class/ee272/skywater-130nm-adk,2-skywater-130nm/.stamp)
endif

# collect inputs

# execute

ifeq ("$(wildcard 2-skywater-130nm/.prebuilt)","")

define 2_skywater_130nm_commands_rule
	mkdir -p 2-skywater-130nm/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t skywater-130nm && chmod +x .mflowgen/2-skywater-130nm/mflowgen-run && cp -f .mflowgen/2-skywater-130nm/mflowgen-run 2-skywater-130nm && if [[ -e .mflowgen/2-skywater-130nm/mflowgen-debug ]]; then chmod +x .mflowgen/2-skywater-130nm/mflowgen-debug && cp -f .mflowgen/2-skywater-130nm/mflowgen-debug 2-skywater-130nm; fi && if [[ -e .mflowgen/2-skywater-130nm/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/2-skywater-130nm/mflowgen-check-preconditions.py && cp -f .mflowgen/2-skywater-130nm/mflowgen-check-preconditions.py 2-skywater-130nm; fi && if [[ -e .mflowgen/2-skywater-130nm/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/2-skywater-130nm/mflowgen-check-postconditions.py && cp -f .mflowgen/2-skywater-130nm/mflowgen-check-postconditions.py 2-skywater-130nm; fi && cd 2-skywater-130nm && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 2-skywater-130nm/outputs/*
endef

2-skywater-130nm/.execstamp: 2-skywater-130nm/.stamp
	$(call 2_skywater_130nm_commands_rule)
	touch $@

2-skywater-130nm/outputs/.execstamp.adk: 2-skywater-130nm/.execstamp
	touch $@

endif

# collect outputs

2-skywater-130nm/outputs/.stamp.adk: 2-skywater-130nm/.execstamp 2-skywater-130nm/outputs/.execstamp.adk
	$(call stamp,2-skywater-130nm/outputs/.stamp.adk)

# post-conditions

define 2_skywater_130nm_post_conditions_commands_rule
	cd 2-skywater-130nm && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

2-skywater-130nm/.postconditions.stamp: 2-skywater-130nm/.execstamp 2-skywater-130nm/outputs/.execstamp.adk 2-skywater-130nm/outputs/.stamp.adk
	$(call 2_skywater_130nm_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: skywater-130nm

skywater-130nm: 2-skywater-130nm/.execstamp 2-skywater-130nm/.postconditions.stamp 2-skywater-130nm/outputs/.execstamp.adk 2-skywater-130nm/outputs/.stamp.adk

.PHONY: 2

2: 2-skywater-130nm/.execstamp 2-skywater-130nm/.postconditions.stamp 2-skywater-130nm/outputs/.execstamp.adk 2-skywater-130nm/outputs/.stamp.adk

# debug

# ------------------------------------------------------------------------
# mentor-calibre-comparison
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 3-mentor-calibre-comparison/.prebuilt)","")
3-mentor-calibre-comparison/.stamp: 0-lvs_setup/.execstamp 0-lvs_setup/.postconditions.stamp 0-lvs_setup/outputs/.execstamp.adc_controller.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.lvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.deconv.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.lvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.design_extracted.spice 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 0-lvs_setup/outputs/.execstamp.user_analog_project_wrapper.spice 0-lvs_setup/outputs/.stamp.adc_controller.flatbuslvs.v 0-lvs_setup/outputs/.stamp.adc_controller.lvs.v 0-lvs_setup/outputs/.stamp.adc_controller.nofillerflatbuslvs.v 0-lvs_setup/outputs/.stamp.adc_controller.nofillerlvs.v 0-lvs_setup/outputs/.stamp.deconv.flatbuslvs.v 0-lvs_setup/outputs/.stamp.deconv.lvs.v 0-lvs_setup/outputs/.stamp.deconv.nofillerflatbuslvs.v 0-lvs_setup/outputs/.stamp.deconv.nofillerlvs.v 0-lvs_setup/outputs/.stamp.design_extracted.spice 0-lvs_setup/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 0-lvs_setup/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 0-lvs_setup/outputs/.stamp.user_analog_project_wrapper.spice
3-mentor-calibre-comparison/.stamp: 2-skywater-130nm/.execstamp 2-skywater-130nm/.postconditions.stamp 2-skywater-130nm/outputs/.execstamp.adk 2-skywater-130nm/outputs/.stamp.adk
3-mentor-calibre-comparison/.stamp:
	$(call cpdir-and-parameterize,3-mentor-calibre-comparison,../design/mentor-calibre-comparison,3-mentor-calibre-comparison/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 3-mentor-calibre-comparison/.prebuilt)","")
3-mentor-calibre-comparison/inputs/.stamp.adc_controller.nofillerflatbuslvs.v: 3-mentor-calibre-comparison/.stamp 0-lvs_setup/outputs/.stamp.adc_controller.nofillerflatbuslvs.v
	$(call symlink,3-mentor-calibre-comparison/inputs,adc_controller.nofillerflatbuslvs.v,../../0-lvs_setup/outputs/adc_controller.nofillerflatbuslvs.v,.stamp.adc_controller.nofillerflatbuslvs.v)
endif

ifeq ("$(wildcard 3-mentor-calibre-comparison/.prebuilt)","")
3-mentor-calibre-comparison/inputs/.stamp.adk: 3-mentor-calibre-comparison/.stamp 2-skywater-130nm/outputs/.stamp.adk
	$(call symlink,3-mentor-calibre-comparison/inputs,adk,../../2-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 3-mentor-calibre-comparison/.prebuilt)","")
3-mentor-calibre-comparison/inputs/.stamp.deconv.nofillerflatbuslvs.v: 3-mentor-calibre-comparison/.stamp 0-lvs_setup/outputs/.stamp.deconv.nofillerflatbuslvs.v
	$(call symlink,3-mentor-calibre-comparison/inputs,deconv.nofillerflatbuslvs.v,../../0-lvs_setup/outputs/deconv.nofillerflatbuslvs.v,.stamp.deconv.nofillerflatbuslvs.v)
endif

ifeq ("$(wildcard 3-mentor-calibre-comparison/.prebuilt)","")
3-mentor-calibre-comparison/inputs/.stamp.design_extracted.spice: 3-mentor-calibre-comparison/.stamp 0-lvs_setup/outputs/.stamp.design_extracted.spice
	$(call symlink,3-mentor-calibre-comparison/inputs,design_extracted.spice,../../0-lvs_setup/outputs/design_extracted.spice,.stamp.design_extracted.spice)
endif

ifeq ("$(wildcard 3-mentor-calibre-comparison/.prebuilt)","")
3-mentor-calibre-comparison/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp: 3-mentor-calibre-comparison/.stamp 0-lvs_setup/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp
	$(call symlink,3-mentor-calibre-comparison/inputs,sky130_sram_2kbyte_1rw1r_32x512_8.sp,../../0-lvs_setup/outputs/sky130_sram_2kbyte_1rw1r_32x512_8.sp,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp)
endif

ifeq ("$(wildcard 3-mentor-calibre-comparison/.prebuilt)","")
3-mentor-calibre-comparison/inputs/.stamp.user_analog_project_wrapper.spice: 3-mentor-calibre-comparison/.stamp 0-lvs_setup/outputs/.stamp.user_analog_project_wrapper.spice
	$(call symlink,3-mentor-calibre-comparison/inputs,user_analog_project_wrapper.spice,../../0-lvs_setup/outputs/user_analog_project_wrapper.spice,.stamp.user_analog_project_wrapper.spice)
endif

# execute

ifeq ("$(wildcard 3-mentor-calibre-comparison/.prebuilt)","")

define 3_mentor_calibre_comparison_commands_rule
	mkdir -p 3-mentor-calibre-comparison/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t mentor-calibre-comparison && chmod +x .mflowgen/3-mentor-calibre-comparison/mflowgen-run && cp -f .mflowgen/3-mentor-calibre-comparison/mflowgen-run 3-mentor-calibre-comparison && if [[ -e .mflowgen/3-mentor-calibre-comparison/mflowgen-debug ]]; then chmod +x .mflowgen/3-mentor-calibre-comparison/mflowgen-debug && cp -f .mflowgen/3-mentor-calibre-comparison/mflowgen-debug 3-mentor-calibre-comparison; fi && if [[ -e .mflowgen/3-mentor-calibre-comparison/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/3-mentor-calibre-comparison/mflowgen-check-preconditions.py && cp -f .mflowgen/3-mentor-calibre-comparison/mflowgen-check-preconditions.py 3-mentor-calibre-comparison; fi && if [[ -e .mflowgen/3-mentor-calibre-comparison/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/3-mentor-calibre-comparison/mflowgen-check-postconditions.py && cp -f .mflowgen/3-mentor-calibre-comparison/mflowgen-check-postconditions.py 3-mentor-calibre-comparison; fi && cd 3-mentor-calibre-comparison && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 3-mentor-calibre-comparison/outputs/*
endef

3-mentor-calibre-comparison/.execstamp: 3-mentor-calibre-comparison/.stamp 3-mentor-calibre-comparison/inputs/.stamp.adc_controller.nofillerflatbuslvs.v 3-mentor-calibre-comparison/inputs/.stamp.adk 3-mentor-calibre-comparison/inputs/.stamp.deconv.nofillerflatbuslvs.v 3-mentor-calibre-comparison/inputs/.stamp.design_extracted.spice 3-mentor-calibre-comparison/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 3-mentor-calibre-comparison/inputs/.stamp.user_analog_project_wrapper.spice
	$(call 3_mentor_calibre_comparison_commands_rule)
	touch $@

3-mentor-calibre-comparison/outputs/.execstamp.lvs.report: 3-mentor-calibre-comparison/.execstamp
	touch $@

endif

# collect outputs

3-mentor-calibre-comparison/outputs/.stamp.lvs.report: 3-mentor-calibre-comparison/.execstamp 3-mentor-calibre-comparison/outputs/.execstamp.lvs.report
	$(call stamp,3-mentor-calibre-comparison/outputs/.stamp.lvs.report)

# post-conditions

define 3_mentor_calibre_comparison_post_conditions_commands_rule
	cd 3-mentor-calibre-comparison && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

3-mentor-calibre-comparison/.postconditions.stamp: 3-mentor-calibre-comparison/.execstamp 3-mentor-calibre-comparison/outputs/.execstamp.lvs.report 3-mentor-calibre-comparison/outputs/.stamp.lvs.report
	$(call 3_mentor_calibre_comparison_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: mentor-calibre-comparison

mentor-calibre-comparison: 3-mentor-calibre-comparison/.execstamp 3-mentor-calibre-comparison/.postconditions.stamp 3-mentor-calibre-comparison/outputs/.execstamp.lvs.report 3-mentor-calibre-comparison/outputs/.stamp.lvs.report

.PHONY: 3

3: 3-mentor-calibre-comparison/.execstamp 3-mentor-calibre-comparison/.postconditions.stamp 3-mentor-calibre-comparison/outputs/.execstamp.lvs.report 3-mentor-calibre-comparison/outputs/.stamp.lvs.report

# debug

define 3_debug_rule
	cd 3-mentor-calibre-comparison && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-mentor-calibre-comparison: 
	$(call 3_debug_rule)

.PHONY: debug-3

debug-3: debug-mentor-calibre-comparison

# ------------------------------------------------------------------------
# mentor-calibre-comparison-nobbox
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 4-mentor-calibre-comparison-nobbox/.prebuilt)","")
4-mentor-calibre-comparison-nobbox/.stamp: 0-lvs_setup/.execstamp 0-lvs_setup/.postconditions.stamp 0-lvs_setup/outputs/.execstamp.adc_controller.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.lvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.deconv.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.lvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.design_extracted.spice 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 0-lvs_setup/outputs/.execstamp.user_analog_project_wrapper.spice 0-lvs_setup/outputs/.stamp.adc_controller.flatbuslvs.v 0-lvs_setup/outputs/.stamp.adc_controller.lvs.v 0-lvs_setup/outputs/.stamp.adc_controller.nofillerflatbuslvs.v 0-lvs_setup/outputs/.stamp.adc_controller.nofillerlvs.v 0-lvs_setup/outputs/.stamp.deconv.flatbuslvs.v 0-lvs_setup/outputs/.stamp.deconv.lvs.v 0-lvs_setup/outputs/.stamp.deconv.nofillerflatbuslvs.v 0-lvs_setup/outputs/.stamp.deconv.nofillerlvs.v 0-lvs_setup/outputs/.stamp.design_extracted.spice 0-lvs_setup/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 0-lvs_setup/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 0-lvs_setup/outputs/.stamp.user_analog_project_wrapper.spice
4-mentor-calibre-comparison-nobbox/.stamp: 2-skywater-130nm/.execstamp 2-skywater-130nm/.postconditions.stamp 2-skywater-130nm/outputs/.execstamp.adk 2-skywater-130nm/outputs/.stamp.adk
4-mentor-calibre-comparison-nobbox/.stamp:
	$(call cpdir-and-parameterize,4-mentor-calibre-comparison-nobbox,../design/mentor-calibre-comparison-nobbox,4-mentor-calibre-comparison-nobbox/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 4-mentor-calibre-comparison-nobbox/.prebuilt)","")
4-mentor-calibre-comparison-nobbox/inputs/.stamp.adc_controller.nofillerflatbuslvs.v: 4-mentor-calibre-comparison-nobbox/.stamp 0-lvs_setup/outputs/.stamp.adc_controller.nofillerflatbuslvs.v
	$(call symlink,4-mentor-calibre-comparison-nobbox/inputs,adc_controller.nofillerflatbuslvs.v,../../0-lvs_setup/outputs/adc_controller.nofillerflatbuslvs.v,.stamp.adc_controller.nofillerflatbuslvs.v)
endif

ifeq ("$(wildcard 4-mentor-calibre-comparison-nobbox/.prebuilt)","")
4-mentor-calibre-comparison-nobbox/inputs/.stamp.adk: 4-mentor-calibre-comparison-nobbox/.stamp 2-skywater-130nm/outputs/.stamp.adk
	$(call symlink,4-mentor-calibre-comparison-nobbox/inputs,adk,../../2-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 4-mentor-calibre-comparison-nobbox/.prebuilt)","")
4-mentor-calibre-comparison-nobbox/inputs/.stamp.deconv.nofillerflatbuslvs.v: 4-mentor-calibre-comparison-nobbox/.stamp 0-lvs_setup/outputs/.stamp.deconv.nofillerflatbuslvs.v
	$(call symlink,4-mentor-calibre-comparison-nobbox/inputs,deconv.nofillerflatbuslvs.v,../../0-lvs_setup/outputs/deconv.nofillerflatbuslvs.v,.stamp.deconv.nofillerflatbuslvs.v)
endif

ifeq ("$(wildcard 4-mentor-calibre-comparison-nobbox/.prebuilt)","")
4-mentor-calibre-comparison-nobbox/inputs/.stamp.design_extracted.spice: 4-mentor-calibre-comparison-nobbox/.stamp 0-lvs_setup/outputs/.stamp.design_extracted.spice
	$(call symlink,4-mentor-calibre-comparison-nobbox/inputs,design_extracted.spice,../../0-lvs_setup/outputs/design_extracted.spice,.stamp.design_extracted.spice)
endif

ifeq ("$(wildcard 4-mentor-calibre-comparison-nobbox/.prebuilt)","")
4-mentor-calibre-comparison-nobbox/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp: 4-mentor-calibre-comparison-nobbox/.stamp 0-lvs_setup/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp
	$(call symlink,4-mentor-calibre-comparison-nobbox/inputs,sky130_sram_2kbyte_1rw1r_32x512_8.sp,../../0-lvs_setup/outputs/sky130_sram_2kbyte_1rw1r_32x512_8.sp,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp)
endif

ifeq ("$(wildcard 4-mentor-calibre-comparison-nobbox/.prebuilt)","")
4-mentor-calibre-comparison-nobbox/inputs/.stamp.user_analog_project_wrapper.spice: 4-mentor-calibre-comparison-nobbox/.stamp 0-lvs_setup/outputs/.stamp.user_analog_project_wrapper.spice
	$(call symlink,4-mentor-calibre-comparison-nobbox/inputs,user_analog_project_wrapper.spice,../../0-lvs_setup/outputs/user_analog_project_wrapper.spice,.stamp.user_analog_project_wrapper.spice)
endif

# execute

ifeq ("$(wildcard 4-mentor-calibre-comparison-nobbox/.prebuilt)","")

define 4_mentor_calibre_comparison_nobbox_commands_rule
	mkdir -p 4-mentor-calibre-comparison-nobbox/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t mentor-calibre-comparison-nobbox && chmod +x .mflowgen/4-mentor-calibre-comparison-nobbox/mflowgen-run && cp -f .mflowgen/4-mentor-calibre-comparison-nobbox/mflowgen-run 4-mentor-calibre-comparison-nobbox && if [[ -e .mflowgen/4-mentor-calibre-comparison-nobbox/mflowgen-debug ]]; then chmod +x .mflowgen/4-mentor-calibre-comparison-nobbox/mflowgen-debug && cp -f .mflowgen/4-mentor-calibre-comparison-nobbox/mflowgen-debug 4-mentor-calibre-comparison-nobbox; fi && if [[ -e .mflowgen/4-mentor-calibre-comparison-nobbox/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/4-mentor-calibre-comparison-nobbox/mflowgen-check-preconditions.py && cp -f .mflowgen/4-mentor-calibre-comparison-nobbox/mflowgen-check-preconditions.py 4-mentor-calibre-comparison-nobbox; fi && if [[ -e .mflowgen/4-mentor-calibre-comparison-nobbox/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/4-mentor-calibre-comparison-nobbox/mflowgen-check-postconditions.py && cp -f .mflowgen/4-mentor-calibre-comparison-nobbox/mflowgen-check-postconditions.py 4-mentor-calibre-comparison-nobbox; fi && cd 4-mentor-calibre-comparison-nobbox && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 4-mentor-calibre-comparison-nobbox/outputs/*
endef

4-mentor-calibre-comparison-nobbox/.execstamp: 4-mentor-calibre-comparison-nobbox/.stamp 4-mentor-calibre-comparison-nobbox/inputs/.stamp.adc_controller.nofillerflatbuslvs.v 4-mentor-calibre-comparison-nobbox/inputs/.stamp.adk 4-mentor-calibre-comparison-nobbox/inputs/.stamp.deconv.nofillerflatbuslvs.v 4-mentor-calibre-comparison-nobbox/inputs/.stamp.design_extracted.spice 4-mentor-calibre-comparison-nobbox/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 4-mentor-calibre-comparison-nobbox/inputs/.stamp.user_analog_project_wrapper.spice
	$(call 4_mentor_calibre_comparison_nobbox_commands_rule)
	touch $@

4-mentor-calibre-comparison-nobbox/outputs/.execstamp.lvs.report: 4-mentor-calibre-comparison-nobbox/.execstamp
	touch $@

endif

# collect outputs

4-mentor-calibre-comparison-nobbox/outputs/.stamp.lvs.report: 4-mentor-calibre-comparison-nobbox/.execstamp 4-mentor-calibre-comparison-nobbox/outputs/.execstamp.lvs.report
	$(call stamp,4-mentor-calibre-comparison-nobbox/outputs/.stamp.lvs.report)

# post-conditions

define 4_mentor_calibre_comparison_nobbox_post_conditions_commands_rule
	cd 4-mentor-calibre-comparison-nobbox && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

4-mentor-calibre-comparison-nobbox/.postconditions.stamp: 4-mentor-calibre-comparison-nobbox/.execstamp 4-mentor-calibre-comparison-nobbox/outputs/.execstamp.lvs.report 4-mentor-calibre-comparison-nobbox/outputs/.stamp.lvs.report
	$(call 4_mentor_calibre_comparison_nobbox_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: mentor-calibre-comparison-nobbox

mentor-calibre-comparison-nobbox: 4-mentor-calibre-comparison-nobbox/.execstamp 4-mentor-calibre-comparison-nobbox/.postconditions.stamp 4-mentor-calibre-comparison-nobbox/outputs/.execstamp.lvs.report 4-mentor-calibre-comparison-nobbox/outputs/.stamp.lvs.report

.PHONY: 4

4: 4-mentor-calibre-comparison-nobbox/.execstamp 4-mentor-calibre-comparison-nobbox/.postconditions.stamp 4-mentor-calibre-comparison-nobbox/outputs/.execstamp.lvs.report 4-mentor-calibre-comparison-nobbox/outputs/.stamp.lvs.report

# debug

define 4_debug_rule
	cd 4-mentor-calibre-comparison-nobbox && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-mentor-calibre-comparison-nobbox: 
	$(call 4_debug_rule)

.PHONY: debug-4

debug-4: debug-mentor-calibre-comparison-nobbox

# ------------------------------------------------------------------------
# mentor-calibre-gdsmerge
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 5-mentor-calibre-gdsmerge/.prebuilt)","")
5-mentor-calibre-gdsmerge/.stamp: 1-premerge/.execstamp 1-premerge/.postconditions.stamp 1-premerge/outputs/.execstamp.design.gds 1-premerge/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 1-premerge/outputs/.execstamp.user_analog_project_wrapper_digital_abstracted.gds 1-premerge/outputs/.stamp.design.gds 1-premerge/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 1-premerge/outputs/.stamp.user_analog_project_wrapper_digital_abstracted.gds
5-mentor-calibre-gdsmerge/.stamp: 2-skywater-130nm/.execstamp 2-skywater-130nm/.postconditions.stamp 2-skywater-130nm/outputs/.execstamp.adk 2-skywater-130nm/outputs/.stamp.adk
5-mentor-calibre-gdsmerge/.stamp:
	$(call cpdir-and-parameterize,5-mentor-calibre-gdsmerge,../design/mentor-calibre-gdsmerge,5-mentor-calibre-gdsmerge/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 5-mentor-calibre-gdsmerge/.prebuilt)","")
5-mentor-calibre-gdsmerge/inputs/.stamp.adk: 5-mentor-calibre-gdsmerge/.stamp 2-skywater-130nm/outputs/.stamp.adk
	$(call symlink,5-mentor-calibre-gdsmerge/inputs,adk,../../2-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 5-mentor-calibre-gdsmerge/.prebuilt)","")
5-mentor-calibre-gdsmerge/inputs/.stamp.design.gds: 5-mentor-calibre-gdsmerge/.stamp 1-premerge/outputs/.stamp.design.gds
	$(call symlink,5-mentor-calibre-gdsmerge/inputs,design.gds,../../1-premerge/outputs/design.gds,.stamp.design.gds)
endif

ifeq ("$(wildcard 5-mentor-calibre-gdsmerge/.prebuilt)","")
5-mentor-calibre-gdsmerge/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds: 5-mentor-calibre-gdsmerge/.stamp 1-premerge/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds
	$(call symlink,5-mentor-calibre-gdsmerge/inputs,sky130_sram_2kbyte_1rw1r_32x512_8.gds,../../1-premerge/outputs/sky130_sram_2kbyte_1rw1r_32x512_8.gds,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds)
endif

ifeq ("$(wildcard 5-mentor-calibre-gdsmerge/.prebuilt)","")
5-mentor-calibre-gdsmerge/inputs/.stamp.user_analog_project_wrapper_digital_abstracted.gds: 5-mentor-calibre-gdsmerge/.stamp 1-premerge/outputs/.stamp.user_analog_project_wrapper_digital_abstracted.gds
	$(call symlink,5-mentor-calibre-gdsmerge/inputs,user_analog_project_wrapper_digital_abstracted.gds,../../1-premerge/outputs/user_analog_project_wrapper_digital_abstracted.gds,.stamp.user_analog_project_wrapper_digital_abstracted.gds)
endif

# execute

ifeq ("$(wildcard 5-mentor-calibre-gdsmerge/.prebuilt)","")

define 5_mentor_calibre_gdsmerge_commands_rule
	mkdir -p 5-mentor-calibre-gdsmerge/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t mentor-calibre-gdsmerge && chmod +x .mflowgen/5-mentor-calibre-gdsmerge/mflowgen-run && cp -f .mflowgen/5-mentor-calibre-gdsmerge/mflowgen-run 5-mentor-calibre-gdsmerge && if [[ -e .mflowgen/5-mentor-calibre-gdsmerge/mflowgen-debug ]]; then chmod +x .mflowgen/5-mentor-calibre-gdsmerge/mflowgen-debug && cp -f .mflowgen/5-mentor-calibre-gdsmerge/mflowgen-debug 5-mentor-calibre-gdsmerge; fi && if [[ -e .mflowgen/5-mentor-calibre-gdsmerge/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/5-mentor-calibre-gdsmerge/mflowgen-check-preconditions.py && cp -f .mflowgen/5-mentor-calibre-gdsmerge/mflowgen-check-preconditions.py 5-mentor-calibre-gdsmerge; fi && if [[ -e .mflowgen/5-mentor-calibre-gdsmerge/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/5-mentor-calibre-gdsmerge/mflowgen-check-postconditions.py && cp -f .mflowgen/5-mentor-calibre-gdsmerge/mflowgen-check-postconditions.py 5-mentor-calibre-gdsmerge; fi && cd 5-mentor-calibre-gdsmerge && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 5-mentor-calibre-gdsmerge/outputs/*
endef

5-mentor-calibre-gdsmerge/.execstamp: 5-mentor-calibre-gdsmerge/.stamp 5-mentor-calibre-gdsmerge/inputs/.stamp.adk 5-mentor-calibre-gdsmerge/inputs/.stamp.design.gds 5-mentor-calibre-gdsmerge/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 5-mentor-calibre-gdsmerge/inputs/.stamp.user_analog_project_wrapper_digital_abstracted.gds
	$(call 5_mentor_calibre_gdsmerge_commands_rule)
	touch $@

5-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds: 5-mentor-calibre-gdsmerge/.execstamp
	touch $@

endif

# collect outputs

5-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds: 5-mentor-calibre-gdsmerge/.execstamp 5-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds
	$(call stamp,5-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds)

# post-conditions

define 5_mentor_calibre_gdsmerge_post_conditions_commands_rule
	cd 5-mentor-calibre-gdsmerge && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

5-mentor-calibre-gdsmerge/.postconditions.stamp: 5-mentor-calibre-gdsmerge/.execstamp 5-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 5-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
	$(call 5_mentor_calibre_gdsmerge_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: mentor-calibre-gdsmerge

mentor-calibre-gdsmerge: 5-mentor-calibre-gdsmerge/.execstamp 5-mentor-calibre-gdsmerge/.postconditions.stamp 5-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 5-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds

.PHONY: 5

5: 5-mentor-calibre-gdsmerge/.execstamp 5-mentor-calibre-gdsmerge/.postconditions.stamp 5-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 5-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds

# debug

define 5_debug_rule
	cd 5-mentor-calibre-gdsmerge && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-mentor-calibre-gdsmerge: 
	$(call 5_debug_rule)

.PHONY: debug-5

debug-5: debug-mentor-calibre-gdsmerge

# ------------------------------------------------------------------------
# netgen-lvs-gds
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 6-netgen-lvs-gds/.prebuilt)","")
6-netgen-lvs-gds/.stamp: 0-lvs_setup/.execstamp 0-lvs_setup/.postconditions.stamp 0-lvs_setup/outputs/.execstamp.adc_controller.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.lvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.deconv.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.lvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.design_extracted.spice 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 0-lvs_setup/outputs/.execstamp.user_analog_project_wrapper.spice 0-lvs_setup/outputs/.stamp.adc_controller.flatbuslvs.v 0-lvs_setup/outputs/.stamp.adc_controller.lvs.v 0-lvs_setup/outputs/.stamp.adc_controller.nofillerflatbuslvs.v 0-lvs_setup/outputs/.stamp.adc_controller.nofillerlvs.v 0-lvs_setup/outputs/.stamp.deconv.flatbuslvs.v 0-lvs_setup/outputs/.stamp.deconv.lvs.v 0-lvs_setup/outputs/.stamp.deconv.nofillerflatbuslvs.v 0-lvs_setup/outputs/.stamp.deconv.nofillerlvs.v 0-lvs_setup/outputs/.stamp.design_extracted.spice 0-lvs_setup/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 0-lvs_setup/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 0-lvs_setup/outputs/.stamp.user_analog_project_wrapper.spice
6-netgen-lvs-gds/.stamp: 2-skywater-130nm/.execstamp 2-skywater-130nm/.postconditions.stamp 2-skywater-130nm/outputs/.execstamp.adk 2-skywater-130nm/outputs/.stamp.adk
6-netgen-lvs-gds/.stamp:
	$(call cpdir-and-parameterize,6-netgen-lvs-gds,../design/open-netgen-lvs,6-netgen-lvs-gds/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 6-netgen-lvs-gds/.prebuilt)","")
6-netgen-lvs-gds/inputs/.stamp.adc_controller.nofillerflatbuslvs.v: 6-netgen-lvs-gds/.stamp 0-lvs_setup/outputs/.stamp.adc_controller.nofillerflatbuslvs.v
	$(call symlink,6-netgen-lvs-gds/inputs,adc_controller.nofillerflatbuslvs.v,../../0-lvs_setup/outputs/adc_controller.nofillerflatbuslvs.v,.stamp.adc_controller.nofillerflatbuslvs.v)
endif

ifeq ("$(wildcard 6-netgen-lvs-gds/.prebuilt)","")
6-netgen-lvs-gds/inputs/.stamp.adk: 6-netgen-lvs-gds/.stamp 2-skywater-130nm/outputs/.stamp.adk
	$(call symlink,6-netgen-lvs-gds/inputs,adk,../../2-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 6-netgen-lvs-gds/.prebuilt)","")
6-netgen-lvs-gds/inputs/.stamp.deconv.nofillerflatbuslvs.v: 6-netgen-lvs-gds/.stamp 0-lvs_setup/outputs/.stamp.deconv.nofillerflatbuslvs.v
	$(call symlink,6-netgen-lvs-gds/inputs,deconv.nofillerflatbuslvs.v,../../0-lvs_setup/outputs/deconv.nofillerflatbuslvs.v,.stamp.deconv.nofillerflatbuslvs.v)
endif

ifeq ("$(wildcard 6-netgen-lvs-gds/.prebuilt)","")
6-netgen-lvs-gds/inputs/.stamp.design_extracted.spice: 6-netgen-lvs-gds/.stamp 0-lvs_setup/outputs/.stamp.design_extracted.spice
	$(call symlink,6-netgen-lvs-gds/inputs,design_extracted.spice,../../0-lvs_setup/outputs/design_extracted.spice,.stamp.design_extracted.spice)
endif

ifeq ("$(wildcard 6-netgen-lvs-gds/.prebuilt)","")
6-netgen-lvs-gds/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp: 6-netgen-lvs-gds/.stamp 0-lvs_setup/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp
	$(call symlink,6-netgen-lvs-gds/inputs,sky130_sram_2kbyte_1rw1r_32x512_8.sp,../../0-lvs_setup/outputs/sky130_sram_2kbyte_1rw1r_32x512_8.sp,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp)
endif

ifeq ("$(wildcard 6-netgen-lvs-gds/.prebuilt)","")
6-netgen-lvs-gds/inputs/.stamp.user_analog_project_wrapper.spice: 6-netgen-lvs-gds/.stamp 0-lvs_setup/outputs/.stamp.user_analog_project_wrapper.spice
	$(call symlink,6-netgen-lvs-gds/inputs,user_analog_project_wrapper.spice,../../0-lvs_setup/outputs/user_analog_project_wrapper.spice,.stamp.user_analog_project_wrapper.spice)
endif

# execute

ifeq ("$(wildcard 6-netgen-lvs-gds/.prebuilt)","")

define 6_netgen_lvs_gds_commands_rule
	mkdir -p 6-netgen-lvs-gds/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t netgen-lvs-gds && chmod +x .mflowgen/6-netgen-lvs-gds/mflowgen-run && cp -f .mflowgen/6-netgen-lvs-gds/mflowgen-run 6-netgen-lvs-gds && if [[ -e .mflowgen/6-netgen-lvs-gds/mflowgen-debug ]]; then chmod +x .mflowgen/6-netgen-lvs-gds/mflowgen-debug && cp -f .mflowgen/6-netgen-lvs-gds/mflowgen-debug 6-netgen-lvs-gds; fi && if [[ -e .mflowgen/6-netgen-lvs-gds/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/6-netgen-lvs-gds/mflowgen-check-preconditions.py && cp -f .mflowgen/6-netgen-lvs-gds/mflowgen-check-preconditions.py 6-netgen-lvs-gds; fi && if [[ -e .mflowgen/6-netgen-lvs-gds/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/6-netgen-lvs-gds/mflowgen-check-postconditions.py && cp -f .mflowgen/6-netgen-lvs-gds/mflowgen-check-postconditions.py 6-netgen-lvs-gds; fi && cd 6-netgen-lvs-gds && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 6-netgen-lvs-gds/outputs/*
endef

6-netgen-lvs-gds/.execstamp: 6-netgen-lvs-gds/.stamp 6-netgen-lvs-gds/inputs/.stamp.adc_controller.nofillerflatbuslvs.v 6-netgen-lvs-gds/inputs/.stamp.adk 6-netgen-lvs-gds/inputs/.stamp.deconv.nofillerflatbuslvs.v 6-netgen-lvs-gds/inputs/.stamp.design_extracted.spice 6-netgen-lvs-gds/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-netgen-lvs-gds/inputs/.stamp.user_analog_project_wrapper.spice
	$(call 6_netgen_lvs_gds_commands_rule)
	touch $@

6-netgen-lvs-gds/outputs/.execstamp.lvs_results.log: 6-netgen-lvs-gds/.execstamp
	touch $@

endif

# collect outputs

6-netgen-lvs-gds/outputs/.stamp.lvs_results.log: 6-netgen-lvs-gds/.execstamp 6-netgen-lvs-gds/outputs/.execstamp.lvs_results.log
	$(call stamp,6-netgen-lvs-gds/outputs/.stamp.lvs_results.log)

# post-conditions

define 6_netgen_lvs_gds_post_conditions_commands_rule
	cd 6-netgen-lvs-gds && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

6-netgen-lvs-gds/.postconditions.stamp: 6-netgen-lvs-gds/.execstamp 6-netgen-lvs-gds/outputs/.execstamp.lvs_results.log 6-netgen-lvs-gds/outputs/.stamp.lvs_results.log
	$(call 6_netgen_lvs_gds_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: netgen-lvs-gds

netgen-lvs-gds: 6-netgen-lvs-gds/.execstamp 6-netgen-lvs-gds/.postconditions.stamp 6-netgen-lvs-gds/outputs/.execstamp.lvs_results.log 6-netgen-lvs-gds/outputs/.stamp.lvs_results.log

.PHONY: 6

6: 6-netgen-lvs-gds/.execstamp 6-netgen-lvs-gds/.postconditions.stamp 6-netgen-lvs-gds/outputs/.execstamp.lvs_results.log 6-netgen-lvs-gds/outputs/.stamp.lvs_results.log

# debug

# ------------------------------------------------------------------------
# open-magic-gds2spice
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 7-open-magic-gds2spice/.prebuilt)","")
7-open-magic-gds2spice/.stamp: 2-skywater-130nm/.execstamp 2-skywater-130nm/.postconditions.stamp 2-skywater-130nm/outputs/.execstamp.adk 2-skywater-130nm/outputs/.stamp.adk
7-open-magic-gds2spice/.stamp: 5-mentor-calibre-gdsmerge/.execstamp 5-mentor-calibre-gdsmerge/.postconditions.stamp 5-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 5-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
7-open-magic-gds2spice/.stamp:
	$(call cpdir-and-parameterize,7-open-magic-gds2spice,../design/open-magic-gds2spice,7-open-magic-gds2spice/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 7-open-magic-gds2spice/.prebuilt)","")
7-open-magic-gds2spice/inputs/.stamp.adk: 7-open-magic-gds2spice/.stamp 2-skywater-130nm/outputs/.stamp.adk
	$(call symlink,7-open-magic-gds2spice/inputs,adk,../../2-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 7-open-magic-gds2spice/.prebuilt)","")
7-open-magic-gds2spice/inputs/.stamp.design_merged.gds: 7-open-magic-gds2spice/.stamp 5-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
	$(call symlink,7-open-magic-gds2spice/inputs,design_merged.gds,../../5-mentor-calibre-gdsmerge/outputs/design_merged.gds,.stamp.design_merged.gds)
endif

# execute

ifeq ("$(wildcard 7-open-magic-gds2spice/.prebuilt)","")

define 7_open_magic_gds2spice_commands_rule
	mkdir -p 7-open-magic-gds2spice/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-gds2spice && chmod +x .mflowgen/7-open-magic-gds2spice/mflowgen-run && cp -f .mflowgen/7-open-magic-gds2spice/mflowgen-run 7-open-magic-gds2spice && if [[ -e .mflowgen/7-open-magic-gds2spice/mflowgen-debug ]]; then chmod +x .mflowgen/7-open-magic-gds2spice/mflowgen-debug && cp -f .mflowgen/7-open-magic-gds2spice/mflowgen-debug 7-open-magic-gds2spice; fi && if [[ -e .mflowgen/7-open-magic-gds2spice/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/7-open-magic-gds2spice/mflowgen-check-preconditions.py && cp -f .mflowgen/7-open-magic-gds2spice/mflowgen-check-preconditions.py 7-open-magic-gds2spice; fi && if [[ -e .mflowgen/7-open-magic-gds2spice/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/7-open-magic-gds2spice/mflowgen-check-postconditions.py && cp -f .mflowgen/7-open-magic-gds2spice/mflowgen-check-postconditions.py 7-open-magic-gds2spice; fi && cd 7-open-magic-gds2spice && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 7-open-magic-gds2spice/outputs/*
endef

7-open-magic-gds2spice/.execstamp: 7-open-magic-gds2spice/.stamp 7-open-magic-gds2spice/inputs/.stamp.adk 7-open-magic-gds2spice/inputs/.stamp.design_merged.gds
	$(call 7_open_magic_gds2spice_commands_rule)
	touch $@

7-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice: 7-open-magic-gds2spice/.execstamp
	touch $@

endif

# collect outputs

7-open-magic-gds2spice/outputs/.stamp.design_extracted.spice: 7-open-magic-gds2spice/.execstamp 7-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice
	$(call stamp,7-open-magic-gds2spice/outputs/.stamp.design_extracted.spice)

# post-conditions

define 7_open_magic_gds2spice_post_conditions_commands_rule
	cd 7-open-magic-gds2spice && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

7-open-magic-gds2spice/.postconditions.stamp: 7-open-magic-gds2spice/.execstamp 7-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice 7-open-magic-gds2spice/outputs/.stamp.design_extracted.spice
	$(call 7_open_magic_gds2spice_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: open-magic-gds2spice

open-magic-gds2spice: 7-open-magic-gds2spice/.execstamp 7-open-magic-gds2spice/.postconditions.stamp 7-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice 7-open-magic-gds2spice/outputs/.stamp.design_extracted.spice

.PHONY: 7

7: 7-open-magic-gds2spice/.execstamp 7-open-magic-gds2spice/.postconditions.stamp 7-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice 7-open-magic-gds2spice/outputs/.stamp.design_extracted.spice

# debug

# ------------------------------------------------------------------------
# open-magic-gds2spice-nobbox
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 8-open-magic-gds2spice-nobbox/.prebuilt)","")
8-open-magic-gds2spice-nobbox/.stamp: 0-lvs_setup/.execstamp 0-lvs_setup/.postconditions.stamp 0-lvs_setup/outputs/.execstamp.adc_controller.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.lvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.adc_controller.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.deconv.flatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.lvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerflatbuslvs.v 0-lvs_setup/outputs/.execstamp.deconv.nofillerlvs.v 0-lvs_setup/outputs/.execstamp.design_extracted.spice 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 0-lvs_setup/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 0-lvs_setup/outputs/.execstamp.user_analog_project_wrapper.spice 0-lvs_setup/outputs/.stamp.adc_controller.flatbuslvs.v 0-lvs_setup/outputs/.stamp.adc_controller.lvs.v 0-lvs_setup/outputs/.stamp.adc_controller.nofillerflatbuslvs.v 0-lvs_setup/outputs/.stamp.adc_controller.nofillerlvs.v 0-lvs_setup/outputs/.stamp.deconv.flatbuslvs.v 0-lvs_setup/outputs/.stamp.deconv.lvs.v 0-lvs_setup/outputs/.stamp.deconv.nofillerflatbuslvs.v 0-lvs_setup/outputs/.stamp.deconv.nofillerlvs.v 0-lvs_setup/outputs/.stamp.design_extracted.spice 0-lvs_setup/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 0-lvs_setup/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 0-lvs_setup/outputs/.stamp.user_analog_project_wrapper.spice
8-open-magic-gds2spice-nobbox/.stamp: 2-skywater-130nm/.execstamp 2-skywater-130nm/.postconditions.stamp 2-skywater-130nm/outputs/.execstamp.adk 2-skywater-130nm/outputs/.stamp.adk
8-open-magic-gds2spice-nobbox/.stamp: 5-mentor-calibre-gdsmerge/.execstamp 5-mentor-calibre-gdsmerge/.postconditions.stamp 5-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 5-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
8-open-magic-gds2spice-nobbox/.stamp:
	$(call cpdir-and-parameterize,8-open-magic-gds2spice-nobbox,../design/open-magic-gds2spice-nobbox,8-open-magic-gds2spice-nobbox/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 8-open-magic-gds2spice-nobbox/.prebuilt)","")
8-open-magic-gds2spice-nobbox/inputs/.stamp.adk: 8-open-magic-gds2spice-nobbox/.stamp 2-skywater-130nm/outputs/.stamp.adk
	$(call symlink,8-open-magic-gds2spice-nobbox/inputs,adk,../../2-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 8-open-magic-gds2spice-nobbox/.prebuilt)","")
8-open-magic-gds2spice-nobbox/inputs/.stamp.design_merged.gds: 8-open-magic-gds2spice-nobbox/.stamp 5-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
	$(call symlink,8-open-magic-gds2spice-nobbox/inputs,design_merged.gds,../../5-mentor-calibre-gdsmerge/outputs/design_merged.gds,.stamp.design_merged.gds)
endif

ifeq ("$(wildcard 8-open-magic-gds2spice-nobbox/.prebuilt)","")
8-open-magic-gds2spice-nobbox/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef: 8-open-magic-gds2spice-nobbox/.stamp 0-lvs_setup/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef
	$(call symlink,8-open-magic-gds2spice-nobbox/inputs,sky130_sram_2kbyte_1rw1r_32x512_8.lef,../../0-lvs_setup/outputs/sky130_sram_2kbyte_1rw1r_32x512_8.lef,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef)
endif

# execute

ifeq ("$(wildcard 8-open-magic-gds2spice-nobbox/.prebuilt)","")

define 8_open_magic_gds2spice_nobbox_commands_rule
	mkdir -p 8-open-magic-gds2spice-nobbox/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-gds2spice-nobbox && chmod +x .mflowgen/8-open-magic-gds2spice-nobbox/mflowgen-run && cp -f .mflowgen/8-open-magic-gds2spice-nobbox/mflowgen-run 8-open-magic-gds2spice-nobbox && if [[ -e .mflowgen/8-open-magic-gds2spice-nobbox/mflowgen-debug ]]; then chmod +x .mflowgen/8-open-magic-gds2spice-nobbox/mflowgen-debug && cp -f .mflowgen/8-open-magic-gds2spice-nobbox/mflowgen-debug 8-open-magic-gds2spice-nobbox; fi && if [[ -e .mflowgen/8-open-magic-gds2spice-nobbox/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/8-open-magic-gds2spice-nobbox/mflowgen-check-preconditions.py && cp -f .mflowgen/8-open-magic-gds2spice-nobbox/mflowgen-check-preconditions.py 8-open-magic-gds2spice-nobbox; fi && if [[ -e .mflowgen/8-open-magic-gds2spice-nobbox/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/8-open-magic-gds2spice-nobbox/mflowgen-check-postconditions.py && cp -f .mflowgen/8-open-magic-gds2spice-nobbox/mflowgen-check-postconditions.py 8-open-magic-gds2spice-nobbox; fi && cd 8-open-magic-gds2spice-nobbox && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 8-open-magic-gds2spice-nobbox/outputs/*
endef

8-open-magic-gds2spice-nobbox/.execstamp: 8-open-magic-gds2spice-nobbox/.stamp 8-open-magic-gds2spice-nobbox/inputs/.stamp.adk 8-open-magic-gds2spice-nobbox/inputs/.stamp.design_merged.gds 8-open-magic-gds2spice-nobbox/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef
	$(call 8_open_magic_gds2spice_nobbox_commands_rule)
	touch $@

8-open-magic-gds2spice-nobbox/outputs/.execstamp.design_extracted.spice: 8-open-magic-gds2spice-nobbox/.execstamp
	touch $@

endif

# collect outputs

8-open-magic-gds2spice-nobbox/outputs/.stamp.design_extracted.spice: 8-open-magic-gds2spice-nobbox/.execstamp 8-open-magic-gds2spice-nobbox/outputs/.execstamp.design_extracted.spice
	$(call stamp,8-open-magic-gds2spice-nobbox/outputs/.stamp.design_extracted.spice)

# post-conditions

define 8_open_magic_gds2spice_nobbox_post_conditions_commands_rule
	cd 8-open-magic-gds2spice-nobbox && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

8-open-magic-gds2spice-nobbox/.postconditions.stamp: 8-open-magic-gds2spice-nobbox/.execstamp 8-open-magic-gds2spice-nobbox/outputs/.execstamp.design_extracted.spice 8-open-magic-gds2spice-nobbox/outputs/.stamp.design_extracted.spice
	$(call 8_open_magic_gds2spice_nobbox_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: open-magic-gds2spice-nobbox

open-magic-gds2spice-nobbox: 8-open-magic-gds2spice-nobbox/.execstamp 8-open-magic-gds2spice-nobbox/.postconditions.stamp 8-open-magic-gds2spice-nobbox/outputs/.execstamp.design_extracted.spice 8-open-magic-gds2spice-nobbox/outputs/.stamp.design_extracted.spice

.PHONY: 8

8: 8-open-magic-gds2spice-nobbox/.execstamp 8-open-magic-gds2spice-nobbox/.postconditions.stamp 8-open-magic-gds2spice-nobbox/outputs/.execstamp.design_extracted.spice 8-open-magic-gds2spice-nobbox/outputs/.stamp.design_extracted.spice

# debug

# ------------------------------------------------------------------------
# Misc
# ------------------------------------------------------------------------

# Clean

.PHONY: clean-all

clean-all:
	@find . -maxdepth 1 ! -name Makefile ! -name .mflowgen\* ! -name \. ! -name \.\. -exec rm -rf {} +

.PHONY: clean-0

clean-0:
	rm -rf ./0-lvs_setup

.PHONY: clean-lvs_setup

clean-lvs_setup: clean-0

.PHONY: clean-1

clean-1:
	rm -rf ./1-premerge

.PHONY: clean-premerge

clean-premerge: clean-1

.PHONY: clean-2

clean-2:
	rm -rf ./2-skywater-130nm

.PHONY: clean-skywater-130nm

clean-skywater-130nm: clean-2

.PHONY: clean-3

clean-3:
	rm -rf ./3-mentor-calibre-comparison

.PHONY: clean-mentor-calibre-comparison

clean-mentor-calibre-comparison: clean-3

.PHONY: clean-4

clean-4:
	rm -rf ./4-mentor-calibre-comparison-nobbox

.PHONY: clean-mentor-calibre-comparison-nobbox

clean-mentor-calibre-comparison-nobbox: clean-4

.PHONY: clean-5

clean-5:
	rm -rf ./5-mentor-calibre-gdsmerge

.PHONY: clean-mentor-calibre-gdsmerge

clean-mentor-calibre-gdsmerge: clean-5

.PHONY: clean-6

clean-6:
	rm -rf ./6-netgen-lvs-gds

.PHONY: clean-netgen-lvs-gds

clean-netgen-lvs-gds: clean-6

.PHONY: clean-7

clean-7:
	rm -rf ./7-open-magic-gds2spice

.PHONY: clean-open-magic-gds2spice

clean-open-magic-gds2spice: clean-7

.PHONY: clean-8

clean-8:
	rm -rf ./8-open-magic-gds2spice-nobbox

.PHONY: clean-open-magic-gds2spice-nobbox

clean-open-magic-gds2spice-nobbox: clean-8

# Diff

.PHONY: diff-0

diff-0:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/lvs-setup 0-lvs_setup | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/lvs-setup.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 0-lvs_setup.*' && echo || true

.PHONY: diff-1

diff-1:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/premerge 1-premerge | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/premerge.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 1-premerge.*' && echo || true

.PHONY: diff-2

diff-2:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../../../../../../../afs/ir.stanford.edu/class/ee272/skywater-130nm-adk 2-skywater-130nm | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../../../../../../../afs/ir.stanford.edu/class/ee272/skywater-130nm-adk.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 2-skywater-130nm.*' && echo || true

.PHONY: diff-3

diff-3:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/mentor-calibre-comparison 3-mentor-calibre-comparison | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/mentor-calibre-comparison.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 3-mentor-calibre-comparison.*' && echo || true

.PHONY: diff-4

diff-4:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/mentor-calibre-comparison-nobbox 4-mentor-calibre-comparison-nobbox | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/mentor-calibre-comparison-nobbox.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 4-mentor-calibre-comparison-nobbox.*' && echo || true

.PHONY: diff-5

diff-5:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/mentor-calibre-gdsmerge 5-mentor-calibre-gdsmerge | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/mentor-calibre-gdsmerge.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 5-mentor-calibre-gdsmerge.*' && echo || true

.PHONY: diff-6

diff-6:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/open-netgen-lvs 6-netgen-lvs-gds | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/open-netgen-lvs.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 6-netgen-lvs-gds.*' && echo || true

.PHONY: diff-7

diff-7:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/open-magic-gds2spice 7-open-magic-gds2spice | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/open-magic-gds2spice.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 7-open-magic-gds2spice.*' && echo || true

.PHONY: diff-8

diff-8:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/open-magic-gds2spice-nobbox 8-open-magic-gds2spice-nobbox | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/open-magic-gds2spice-nobbox.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 8-open-magic-gds2spice-nobbox.*' && echo || true

# Info

.PHONY: info-0

info-0:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t lvs_setup && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/0-lvs_setup/configure.yml

.PHONY: info-1

info-1:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t premerge && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/1-premerge/configure.yml

.PHONY: info-2

info-2:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t skywater-130nm && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/2-skywater-130nm/configure.yml

.PHONY: info-3

info-3:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t mentor-calibre-comparison && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/3-mentor-calibre-comparison/configure.yml

.PHONY: info-4

info-4:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t mentor-calibre-comparison-nobbox && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/4-mentor-calibre-comparison-nobbox/configure.yml

.PHONY: info-5

info-5:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t mentor-calibre-gdsmerge && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/5-mentor-calibre-gdsmerge/configure.yml

.PHONY: info-6

info-6:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t netgen-lvs-gds && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/6-netgen-lvs-gds/configure.yml

.PHONY: info-7

info-7:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-gds2spice && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/7-open-magic-gds2spice/configure.yml

.PHONY: info-8

info-8:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-gds2spice-nobbox && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/8-open-magic-gds2spice-nobbox/configure.yml

# Runtimes

.PHONY: runtimes

runtimes:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-runtimes

# List

.PHONY: list

list:
	@echo && echo Generic Targets: && echo && printf " - %s\\n" "list      -- List all steps" "status    -- Print build status for each step" "runtimes  -- Print runtimes for each step" "graph     -- Generate a PDF of the step dependency graph" "clean-all -- Remove all build directories" "clean-N   -- Clean target N" "info-N    -- Print configured info for step N" "diff-N    -- Diff target N" && echo && echo Targets: && echo && printf " - %s\\n" "  0 : lvs_setup" "  1 : premerge" "  2 : skywater-130nm" "  3 : mentor-calibre-comparison" "  4 : mentor-calibre-comparison-nobbox" "  5 : mentor-calibre-gdsmerge" "  6 : netgen-lvs-gds" "  7 : open-magic-gds2spice" "  8 : open-magic-gds2spice-nobbox" && echo && echo Debug Targets: && echo && printf " - %s\\n" "debug-3  : debug-mentor-calibre-comparison" "debug-4  : debug-mentor-calibre-comparison-nobbox" "debug-5  : debug-mentor-calibre-gdsmerge" && echo

# Graph

.PHONY: graph

graph:
	dot -Tpdf .mflowgen/graph.dot > graph.pdf

# Status

.PHONY: status

status:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-status --backend make -s 0-lvs_setup,1-premerge,2-skywater-130nm,3-mentor-calibre-comparison,4-mentor-calibre-comparison-nobbox,5-mentor-calibre-gdsmerge,6-netgen-lvs-gds,7-open-magic-gds2spice,8-open-magic-gds2spice-nobbox

