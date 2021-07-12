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

default: cadence-innovus-dont-use-cells constraints floorplan info pin-placement rtl skywater-130nm sram synopsys-dc-compile testbench cadence-ncsim-sim synopsys-vcs-sim synopsys-dc-synthesis cadence-innovus-flowsetup cadence-innovus-init cadence-innovus-power cadence-innovus-place cadence-innovus-cts cadence-innovus-postcts_hold cadence-innovus-route cadence-innovus-postroute cadence-innovus-signoff mentor-calibre-gdsmerge open-magic-def2spice synopsys-pt-timing-signoff synopsys-ptpx-rtl gl-sim netgen-lvs-def open-magic-drc open-magic-gds2spice open-magic-gds2spice-nobbox gen-saif-gl mentor-calibre-comparison mentor-calibre-comparison-nobbox netgen-lvs-gds synopsys-ptpx-gl

# ------------------------------------------------------------------------
# cadence-innovus-dont-use-cells
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 2-cadence-innovus-dont-use-cells/.prebuilt)","")
2-cadence-innovus-dont-use-cells/.stamp:
	$(call cpdir-and-parameterize,2-cadence-innovus-dont-use-cells,../design/cadence-innovus-dont-use-cells,2-cadence-innovus-dont-use-cells/.stamp)
endif

# collect inputs

# execute

ifeq ("$(wildcard 2-cadence-innovus-dont-use-cells/.prebuilt)","")

define 2_cadence_innovus_dont_use_cells_commands_rule
	mkdir -p 2-cadence-innovus-dont-use-cells/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-dont-use-cells && chmod +x .mflowgen/2-cadence-innovus-dont-use-cells/mflowgen-run && cp -f .mflowgen/2-cadence-innovus-dont-use-cells/mflowgen-run 2-cadence-innovus-dont-use-cells && if [[ -e .mflowgen/2-cadence-innovus-dont-use-cells/mflowgen-debug ]]; then chmod +x .mflowgen/2-cadence-innovus-dont-use-cells/mflowgen-debug && cp -f .mflowgen/2-cadence-innovus-dont-use-cells/mflowgen-debug 2-cadence-innovus-dont-use-cells; fi && if [[ -e .mflowgen/2-cadence-innovus-dont-use-cells/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/2-cadence-innovus-dont-use-cells/mflowgen-check-preconditions.py && cp -f .mflowgen/2-cadence-innovus-dont-use-cells/mflowgen-check-preconditions.py 2-cadence-innovus-dont-use-cells; fi && if [[ -e .mflowgen/2-cadence-innovus-dont-use-cells/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/2-cadence-innovus-dont-use-cells/mflowgen-check-postconditions.py && cp -f .mflowgen/2-cadence-innovus-dont-use-cells/mflowgen-check-postconditions.py 2-cadence-innovus-dont-use-cells; fi && cd 2-cadence-innovus-dont-use-cells && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 2-cadence-innovus-dont-use-cells/outputs/*
endef

2-cadence-innovus-dont-use-cells/.execstamp: 2-cadence-innovus-dont-use-cells/.stamp
	$(call 2_cadence_innovus_dont_use_cells_commands_rule)
	touch $@

2-cadence-innovus-dont-use-cells/outputs/.execstamp.dont-use-cells.tcl: 2-cadence-innovus-dont-use-cells/.execstamp
	touch $@

endif

# collect outputs

2-cadence-innovus-dont-use-cells/outputs/.stamp.dont-use-cells.tcl: 2-cadence-innovus-dont-use-cells/.execstamp 2-cadence-innovus-dont-use-cells/outputs/.execstamp.dont-use-cells.tcl
	$(call stamp,2-cadence-innovus-dont-use-cells/outputs/.stamp.dont-use-cells.tcl)

# post-conditions

define 2_cadence_innovus_dont_use_cells_post_conditions_commands_rule
	cd 2-cadence-innovus-dont-use-cells && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

2-cadence-innovus-dont-use-cells/.postconditions.stamp: 2-cadence-innovus-dont-use-cells/.execstamp 2-cadence-innovus-dont-use-cells/outputs/.execstamp.dont-use-cells.tcl 2-cadence-innovus-dont-use-cells/outputs/.stamp.dont-use-cells.tcl
	$(call 2_cadence_innovus_dont_use_cells_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-dont-use-cells

cadence-innovus-dont-use-cells: 2-cadence-innovus-dont-use-cells/.execstamp 2-cadence-innovus-dont-use-cells/.postconditions.stamp 2-cadence-innovus-dont-use-cells/outputs/.execstamp.dont-use-cells.tcl 2-cadence-innovus-dont-use-cells/outputs/.stamp.dont-use-cells.tcl

.PHONY: 2

2: 2-cadence-innovus-dont-use-cells/.execstamp 2-cadence-innovus-dont-use-cells/.postconditions.stamp 2-cadence-innovus-dont-use-cells/outputs/.execstamp.dont-use-cells.tcl 2-cadence-innovus-dont-use-cells/outputs/.stamp.dont-use-cells.tcl

# debug

# ------------------------------------------------------------------------
# constraints
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 0-constraints/.prebuilt)","")
0-constraints/.stamp:
	$(call cpdir-and-parameterize,0-constraints,../design/constraints,0-constraints/.stamp)
endif

# collect inputs

# execute

ifeq ("$(wildcard 0-constraints/.prebuilt)","")

define 0_constraints_commands_rule
	mkdir -p 0-constraints/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t constraints && chmod +x .mflowgen/0-constraints/mflowgen-run && cp -f .mflowgen/0-constraints/mflowgen-run 0-constraints && if [[ -e .mflowgen/0-constraints/mflowgen-debug ]]; then chmod +x .mflowgen/0-constraints/mflowgen-debug && cp -f .mflowgen/0-constraints/mflowgen-debug 0-constraints; fi && if [[ -e .mflowgen/0-constraints/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/0-constraints/mflowgen-check-preconditions.py && cp -f .mflowgen/0-constraints/mflowgen-check-preconditions.py 0-constraints; fi && if [[ -e .mflowgen/0-constraints/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/0-constraints/mflowgen-check-postconditions.py && cp -f .mflowgen/0-constraints/mflowgen-check-postconditions.py 0-constraints; fi && cd 0-constraints && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 0-constraints/outputs/*
endef

0-constraints/.execstamp: 0-constraints/.stamp
	$(call 0_constraints_commands_rule)
	touch $@

0-constraints/outputs/.execstamp.constraints.tcl: 0-constraints/.execstamp
	touch $@

endif

# collect outputs

0-constraints/outputs/.stamp.constraints.tcl: 0-constraints/.execstamp 0-constraints/outputs/.execstamp.constraints.tcl
	$(call stamp,0-constraints/outputs/.stamp.constraints.tcl)

# post-conditions

define 0_constraints_post_conditions_commands_rule
	cd 0-constraints && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

0-constraints/.postconditions.stamp: 0-constraints/.execstamp 0-constraints/outputs/.execstamp.constraints.tcl 0-constraints/outputs/.stamp.constraints.tcl
	$(call 0_constraints_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: constraints

constraints: 0-constraints/.execstamp 0-constraints/.postconditions.stamp 0-constraints/outputs/.execstamp.constraints.tcl 0-constraints/outputs/.stamp.constraints.tcl

.PHONY: 0

0: 0-constraints/.execstamp 0-constraints/.postconditions.stamp 0-constraints/outputs/.execstamp.constraints.tcl 0-constraints/outputs/.stamp.constraints.tcl

# debug

# ------------------------------------------------------------------------
# floorplan
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 1-floorplan/.prebuilt)","")
1-floorplan/.stamp:
	$(call cpdir-and-parameterize,1-floorplan,../design/floorplan,1-floorplan/.stamp)
endif

# collect inputs

# execute

ifeq ("$(wildcard 1-floorplan/.prebuilt)","")

define 1_floorplan_commands_rule
	mkdir -p 1-floorplan/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t floorplan && chmod +x .mflowgen/1-floorplan/mflowgen-run && cp -f .mflowgen/1-floorplan/mflowgen-run 1-floorplan && if [[ -e .mflowgen/1-floorplan/mflowgen-debug ]]; then chmod +x .mflowgen/1-floorplan/mflowgen-debug && cp -f .mflowgen/1-floorplan/mflowgen-debug 1-floorplan; fi && if [[ -e .mflowgen/1-floorplan/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/1-floorplan/mflowgen-check-preconditions.py && cp -f .mflowgen/1-floorplan/mflowgen-check-preconditions.py 1-floorplan; fi && if [[ -e .mflowgen/1-floorplan/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/1-floorplan/mflowgen-check-postconditions.py && cp -f .mflowgen/1-floorplan/mflowgen-check-postconditions.py 1-floorplan; fi && cd 1-floorplan && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 1-floorplan/outputs/*
endef

1-floorplan/.execstamp: 1-floorplan/.stamp
	$(call 1_floorplan_commands_rule)
	touch $@

1-floorplan/outputs/.execstamp.floorplan.tcl: 1-floorplan/.execstamp
	touch $@

endif

# collect outputs

1-floorplan/outputs/.stamp.floorplan.tcl: 1-floorplan/.execstamp 1-floorplan/outputs/.execstamp.floorplan.tcl
	$(call stamp,1-floorplan/outputs/.stamp.floorplan.tcl)

# post-conditions

define 1_floorplan_post_conditions_commands_rule
	cd 1-floorplan && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

1-floorplan/.postconditions.stamp: 1-floorplan/.execstamp 1-floorplan/outputs/.execstamp.floorplan.tcl 1-floorplan/outputs/.stamp.floorplan.tcl
	$(call 1_floorplan_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: floorplan

floorplan: 1-floorplan/.execstamp 1-floorplan/.postconditions.stamp 1-floorplan/outputs/.execstamp.floorplan.tcl 1-floorplan/outputs/.stamp.floorplan.tcl

.PHONY: 1

1: 1-floorplan/.execstamp 1-floorplan/.postconditions.stamp 1-floorplan/outputs/.execstamp.floorplan.tcl 1-floorplan/outputs/.stamp.floorplan.tcl

# debug

# ------------------------------------------------------------------------
# info
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 9-info/.prebuilt)","")
9-info/.stamp:
	$(call cpdir-and-parameterize,9-info,../../mflowgen/steps/info,9-info/.stamp)
endif

# collect inputs

# execute

ifeq ("$(wildcard 9-info/.prebuilt)","")

define 9_info_commands_rule
	mkdir -p 9-info/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t info && chmod +x .mflowgen/9-info/mflowgen-run && cp -f .mflowgen/9-info/mflowgen-run 9-info && if [[ -e .mflowgen/9-info/mflowgen-debug ]]; then chmod +x .mflowgen/9-info/mflowgen-debug && cp -f .mflowgen/9-info/mflowgen-debug 9-info; fi && if [[ -e .mflowgen/9-info/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/9-info/mflowgen-check-preconditions.py && cp -f .mflowgen/9-info/mflowgen-check-preconditions.py 9-info; fi && if [[ -e .mflowgen/9-info/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/9-info/mflowgen-check-postconditions.py && cp -f .mflowgen/9-info/mflowgen-check-postconditions.py 9-info; fi && cd 9-info && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 9-info/outputs/*
endef

9-info/.execstamp: 9-info/.stamp
	$(call 9_info_commands_rule)

9-info/.execstamp.execute-phony: 9-info/.execstamp
	touch $@

endif

# collect outputs

# post-conditions

define 9_info_post_conditions_commands_rule
	cd 9-info && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

9-info/.postconditions.stamp: 9-info/.execstamp 9-info/.execstamp.execute-phony
	$(call 9_info_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: info

info: 9-info/.execstamp 9-info/.execstamp.execute-phony 9-info/.postconditions.stamp

.PHONY: 9

9: 9-info/.execstamp 9-info/.execstamp.execute-phony 9-info/.postconditions.stamp

# debug

# ------------------------------------------------------------------------
# pin-placement
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 3-pin-placement/.prebuilt)","")
3-pin-placement/.stamp:
	$(call cpdir-and-parameterize,3-pin-placement,../design/pin-placement,3-pin-placement/.stamp)
endif

# collect inputs

# execute

ifeq ("$(wildcard 3-pin-placement/.prebuilt)","")

define 3_pin_placement_commands_rule
	mkdir -p 3-pin-placement/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t pin-placement && chmod +x .mflowgen/3-pin-placement/mflowgen-run && cp -f .mflowgen/3-pin-placement/mflowgen-run 3-pin-placement && if [[ -e .mflowgen/3-pin-placement/mflowgen-debug ]]; then chmod +x .mflowgen/3-pin-placement/mflowgen-debug && cp -f .mflowgen/3-pin-placement/mflowgen-debug 3-pin-placement; fi && if [[ -e .mflowgen/3-pin-placement/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/3-pin-placement/mflowgen-check-preconditions.py && cp -f .mflowgen/3-pin-placement/mflowgen-check-preconditions.py 3-pin-placement; fi && if [[ -e .mflowgen/3-pin-placement/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/3-pin-placement/mflowgen-check-postconditions.py && cp -f .mflowgen/3-pin-placement/mflowgen-check-postconditions.py 3-pin-placement; fi && cd 3-pin-placement && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 3-pin-placement/outputs/*
endef

3-pin-placement/.execstamp: 3-pin-placement/.stamp
	$(call 3_pin_placement_commands_rule)
	touch $@

3-pin-placement/outputs/.execstamp.pin-assignments.tcl: 3-pin-placement/.execstamp
	touch $@

endif

# collect outputs

3-pin-placement/outputs/.stamp.pin-assignments.tcl: 3-pin-placement/.execstamp 3-pin-placement/outputs/.execstamp.pin-assignments.tcl
	$(call stamp,3-pin-placement/outputs/.stamp.pin-assignments.tcl)

# post-conditions

define 3_pin_placement_post_conditions_commands_rule
	cd 3-pin-placement && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

3-pin-placement/.postconditions.stamp: 3-pin-placement/.execstamp 3-pin-placement/outputs/.execstamp.pin-assignments.tcl 3-pin-placement/outputs/.stamp.pin-assignments.tcl
	$(call 3_pin_placement_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: pin-placement

pin-placement: 3-pin-placement/.execstamp 3-pin-placement/.postconditions.stamp 3-pin-placement/outputs/.execstamp.pin-assignments.tcl 3-pin-placement/outputs/.stamp.pin-assignments.tcl

.PHONY: 3

3: 3-pin-placement/.execstamp 3-pin-placement/.postconditions.stamp 3-pin-placement/outputs/.execstamp.pin-assignments.tcl 3-pin-placement/outputs/.stamp.pin-assignments.tcl

# debug

# ------------------------------------------------------------------------
# rtl
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 4-rtl/.prebuilt)","")
4-rtl/.stamp:
	$(call cpdir-and-parameterize,4-rtl,../design/rtl,4-rtl/.stamp)
endif

# collect inputs

# execute

ifeq ("$(wildcard 4-rtl/.prebuilt)","")

define 4_rtl_commands_rule
	mkdir -p 4-rtl/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t rtl && chmod +x .mflowgen/4-rtl/mflowgen-run && cp -f .mflowgen/4-rtl/mflowgen-run 4-rtl && if [[ -e .mflowgen/4-rtl/mflowgen-debug ]]; then chmod +x .mflowgen/4-rtl/mflowgen-debug && cp -f .mflowgen/4-rtl/mflowgen-debug 4-rtl; fi && if [[ -e .mflowgen/4-rtl/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/4-rtl/mflowgen-check-preconditions.py && cp -f .mflowgen/4-rtl/mflowgen-check-preconditions.py 4-rtl; fi && if [[ -e .mflowgen/4-rtl/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/4-rtl/mflowgen-check-postconditions.py && cp -f .mflowgen/4-rtl/mflowgen-check-postconditions.py 4-rtl; fi && cd 4-rtl && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 4-rtl/outputs/*
endef

4-rtl/.execstamp: 4-rtl/.stamp
	$(call 4_rtl_commands_rule)
	touch $@

4-rtl/outputs/.execstamp.design.v: 4-rtl/.execstamp
	touch $@
4-rtl/outputs/.execstamp.design.vcs.v: 4-rtl/.execstamp
	touch $@

endif

# collect outputs

4-rtl/outputs/.stamp.design.v: 4-rtl/.execstamp 4-rtl/outputs/.execstamp.design.v 4-rtl/outputs/.execstamp.design.vcs.v
	$(call stamp,4-rtl/outputs/.stamp.design.v)

4-rtl/outputs/.stamp.design.vcs.v: 4-rtl/.execstamp 4-rtl/outputs/.execstamp.design.v 4-rtl/outputs/.execstamp.design.vcs.v
	$(call stamp,4-rtl/outputs/.stamp.design.vcs.v)

# post-conditions

define 4_rtl_post_conditions_commands_rule
	cd 4-rtl && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

4-rtl/.postconditions.stamp: 4-rtl/.execstamp 4-rtl/outputs/.execstamp.design.v 4-rtl/outputs/.execstamp.design.vcs.v 4-rtl/outputs/.stamp.design.v 4-rtl/outputs/.stamp.design.vcs.v
	$(call 4_rtl_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: rtl

rtl: 4-rtl/.execstamp 4-rtl/.postconditions.stamp 4-rtl/outputs/.execstamp.design.v 4-rtl/outputs/.execstamp.design.vcs.v 4-rtl/outputs/.stamp.design.v 4-rtl/outputs/.stamp.design.vcs.v

.PHONY: 4

4: 4-rtl/.execstamp 4-rtl/.postconditions.stamp 4-rtl/outputs/.execstamp.design.v 4-rtl/outputs/.execstamp.design.vcs.v 4-rtl/outputs/.stamp.design.v 4-rtl/outputs/.stamp.design.vcs.v

# debug

# ------------------------------------------------------------------------
# skywater-130nm
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 5-skywater-130nm/.prebuilt)","")
5-skywater-130nm/.stamp:
	$(call cpdir-and-parameterize,5-skywater-130nm,../../../../../../../../afs/ir.stanford.edu/class/ee272/skywater-130nm-adk,5-skywater-130nm/.stamp)
endif

# collect inputs

# execute

ifeq ("$(wildcard 5-skywater-130nm/.prebuilt)","")

define 5_skywater_130nm_commands_rule
	mkdir -p 5-skywater-130nm/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t skywater-130nm && chmod +x .mflowgen/5-skywater-130nm/mflowgen-run && cp -f .mflowgen/5-skywater-130nm/mflowgen-run 5-skywater-130nm && if [[ -e .mflowgen/5-skywater-130nm/mflowgen-debug ]]; then chmod +x .mflowgen/5-skywater-130nm/mflowgen-debug && cp -f .mflowgen/5-skywater-130nm/mflowgen-debug 5-skywater-130nm; fi && if [[ -e .mflowgen/5-skywater-130nm/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/5-skywater-130nm/mflowgen-check-preconditions.py && cp -f .mflowgen/5-skywater-130nm/mflowgen-check-preconditions.py 5-skywater-130nm; fi && if [[ -e .mflowgen/5-skywater-130nm/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/5-skywater-130nm/mflowgen-check-postconditions.py && cp -f .mflowgen/5-skywater-130nm/mflowgen-check-postconditions.py 5-skywater-130nm; fi && cd 5-skywater-130nm && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 5-skywater-130nm/outputs/*
endef

5-skywater-130nm/.execstamp: 5-skywater-130nm/.stamp
	$(call 5_skywater_130nm_commands_rule)
	touch $@

5-skywater-130nm/outputs/.execstamp.adk: 5-skywater-130nm/.execstamp
	touch $@

endif

# collect outputs

5-skywater-130nm/outputs/.stamp.adk: 5-skywater-130nm/.execstamp 5-skywater-130nm/outputs/.execstamp.adk
	$(call stamp,5-skywater-130nm/outputs/.stamp.adk)

# post-conditions

define 5_skywater_130nm_post_conditions_commands_rule
	cd 5-skywater-130nm && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

5-skywater-130nm/.postconditions.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
	$(call 5_skywater_130nm_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: skywater-130nm

skywater-130nm: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk

.PHONY: 5

5: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk

# debug

# ------------------------------------------------------------------------
# sram
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 6-sram/.prebuilt)","")
6-sram/.stamp:
	$(call cpdir-and-parameterize,6-sram,../design/sram,6-sram/.stamp)
endif

# collect inputs

# execute

ifeq ("$(wildcard 6-sram/.prebuilt)","")

define 6_sram_commands_rule
	mkdir -p 6-sram/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t sram && chmod +x .mflowgen/6-sram/mflowgen-run && cp -f .mflowgen/6-sram/mflowgen-run 6-sram && if [[ -e .mflowgen/6-sram/mflowgen-debug ]]; then chmod +x .mflowgen/6-sram/mflowgen-debug && cp -f .mflowgen/6-sram/mflowgen-debug 6-sram; fi && if [[ -e .mflowgen/6-sram/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/6-sram/mflowgen-check-preconditions.py && cp -f .mflowgen/6-sram/mflowgen-check-preconditions.py 6-sram; fi && if [[ -e .mflowgen/6-sram/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/6-sram/mflowgen-check-postconditions.py && cp -f .mflowgen/6-sram/mflowgen-check-postconditions.py 6-sram; fi && cd 6-sram && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 6-sram/outputs/*
endef

6-sram/.execstamp: 6-sram/.stamp
	$(call 6_sram_commands_rule)
	touch $@

6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp: 6-sram/.execstamp
	touch $@
6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.v: 6-sram/.execstamp
	touch $@
6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef: 6-sram/.execstamp
	touch $@
6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib: 6-sram/.execstamp
	touch $@
6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds: 6-sram/.execstamp
	touch $@
6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db: 6-sram/.execstamp
	touch $@

endif

# collect outputs

6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp: 6-sram/.execstamp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
	$(call stamp,6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp)

6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v: 6-sram/.execstamp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
	$(call stamp,6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v)

6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef: 6-sram/.execstamp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
	$(call stamp,6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef)

6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib: 6-sram/.execstamp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
	$(call stamp,6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib)

6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds: 6-sram/.execstamp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
	$(call stamp,6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds)

6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db: 6-sram/.execstamp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
	$(call stamp,6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db)

# post-conditions

define 6_sram_post_conditions_commands_rule
	cd 6-sram && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

6-sram/.postconditions.stamp: 6-sram/.execstamp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
	$(call 6_sram_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: sram

sram: 6-sram/.execstamp 6-sram/.postconditions.stamp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib

.PHONY: 6

6: 6-sram/.execstamp 6-sram/.postconditions.stamp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib

# debug

# ------------------------------------------------------------------------
# synopsys-dc-compile
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 7-synopsys-dc-compile/.prebuilt)","")
7-synopsys-dc-compile/.stamp:
	$(call cpdir-and-parameterize,7-synopsys-dc-compile,../design/synopsys-dc-compile,7-synopsys-dc-compile/.stamp)
endif

# collect inputs

# execute

ifeq ("$(wildcard 7-synopsys-dc-compile/.prebuilt)","")

define 7_synopsys_dc_compile_commands_rule
	mkdir -p 7-synopsys-dc-compile/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t synopsys-dc-compile && chmod +x .mflowgen/7-synopsys-dc-compile/mflowgen-run && cp -f .mflowgen/7-synopsys-dc-compile/mflowgen-run 7-synopsys-dc-compile && if [[ -e .mflowgen/7-synopsys-dc-compile/mflowgen-debug ]]; then chmod +x .mflowgen/7-synopsys-dc-compile/mflowgen-debug && cp -f .mflowgen/7-synopsys-dc-compile/mflowgen-debug 7-synopsys-dc-compile; fi && if [[ -e .mflowgen/7-synopsys-dc-compile/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/7-synopsys-dc-compile/mflowgen-check-preconditions.py && cp -f .mflowgen/7-synopsys-dc-compile/mflowgen-check-preconditions.py 7-synopsys-dc-compile; fi && if [[ -e .mflowgen/7-synopsys-dc-compile/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/7-synopsys-dc-compile/mflowgen-check-postconditions.py && cp -f .mflowgen/7-synopsys-dc-compile/mflowgen-check-postconditions.py 7-synopsys-dc-compile; fi && cd 7-synopsys-dc-compile && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 7-synopsys-dc-compile/outputs/*
endef

7-synopsys-dc-compile/.execstamp: 7-synopsys-dc-compile/.stamp
	$(call 7_synopsys_dc_compile_commands_rule)
	touch $@

7-synopsys-dc-compile/outputs/.execstamp.compile.tcl: 7-synopsys-dc-compile/.execstamp
	touch $@

endif

# collect outputs

7-synopsys-dc-compile/outputs/.stamp.compile.tcl: 7-synopsys-dc-compile/.execstamp 7-synopsys-dc-compile/outputs/.execstamp.compile.tcl
	$(call stamp,7-synopsys-dc-compile/outputs/.stamp.compile.tcl)

# post-conditions

define 7_synopsys_dc_compile_post_conditions_commands_rule
	cd 7-synopsys-dc-compile && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

7-synopsys-dc-compile/.postconditions.stamp: 7-synopsys-dc-compile/.execstamp 7-synopsys-dc-compile/outputs/.execstamp.compile.tcl 7-synopsys-dc-compile/outputs/.stamp.compile.tcl
	$(call 7_synopsys_dc_compile_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: synopsys-dc-compile

synopsys-dc-compile: 7-synopsys-dc-compile/.execstamp 7-synopsys-dc-compile/.postconditions.stamp 7-synopsys-dc-compile/outputs/.execstamp.compile.tcl 7-synopsys-dc-compile/outputs/.stamp.compile.tcl

.PHONY: 7

7: 7-synopsys-dc-compile/.execstamp 7-synopsys-dc-compile/.postconditions.stamp 7-synopsys-dc-compile/outputs/.execstamp.compile.tcl 7-synopsys-dc-compile/outputs/.stamp.compile.tcl

# debug

# ------------------------------------------------------------------------
# testbench
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 8-testbench/.prebuilt)","")
8-testbench/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
8-testbench/.stamp:
	$(call cpdir-and-parameterize,8-testbench,../design/testbench,8-testbench/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 8-testbench/.prebuilt)","")
8-testbench/inputs/.stamp.adk: 8-testbench/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,8-testbench/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

# execute

ifeq ("$(wildcard 8-testbench/.prebuilt)","")

define 8_testbench_commands_rule
	mkdir -p 8-testbench/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t testbench && chmod +x .mflowgen/8-testbench/mflowgen-run && cp -f .mflowgen/8-testbench/mflowgen-run 8-testbench && if [[ -e .mflowgen/8-testbench/mflowgen-debug ]]; then chmod +x .mflowgen/8-testbench/mflowgen-debug && cp -f .mflowgen/8-testbench/mflowgen-debug 8-testbench; fi && if [[ -e .mflowgen/8-testbench/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/8-testbench/mflowgen-check-preconditions.py && cp -f .mflowgen/8-testbench/mflowgen-check-preconditions.py 8-testbench; fi && if [[ -e .mflowgen/8-testbench/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/8-testbench/mflowgen-check-postconditions.py && cp -f .mflowgen/8-testbench/mflowgen-check-postconditions.py 8-testbench; fi && cd 8-testbench && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 8-testbench/outputs/*
endef

8-testbench/.execstamp: 8-testbench/.stamp 8-testbench/inputs/.stamp.adk
	$(call 8_testbench_commands_rule)
	touch $@

8-testbench/outputs/.execstamp.testbench.sv: 8-testbench/.execstamp
	touch $@
8-testbench/outputs/.execstamp.testbench.v: 8-testbench/.execstamp
	touch $@
8-testbench/outputs/.execstamp.freq_vec_data.txt: 8-testbench/.execstamp
	touch $@
8-testbench/outputs/.execstamp.tf_coeff_data.txt: 8-testbench/.execstamp
	touch $@
8-testbench/outputs/.execstamp.design.args: 8-testbench/.execstamp
	touch $@
8-testbench/outputs/.execstamp.design.args.gls: 8-testbench/.execstamp
	touch $@

endif

# collect outputs

8-testbench/outputs/.stamp.testbench.sv: 8-testbench/.execstamp 8-testbench/outputs/.execstamp.design.args 8-testbench/outputs/.execstamp.design.args.gls 8-testbench/outputs/.execstamp.freq_vec_data.txt 8-testbench/outputs/.execstamp.testbench.sv 8-testbench/outputs/.execstamp.testbench.v 8-testbench/outputs/.execstamp.tf_coeff_data.txt
	$(call stamp,8-testbench/outputs/.stamp.testbench.sv)

8-testbench/outputs/.stamp.testbench.v: 8-testbench/.execstamp 8-testbench/outputs/.execstamp.design.args 8-testbench/outputs/.execstamp.design.args.gls 8-testbench/outputs/.execstamp.freq_vec_data.txt 8-testbench/outputs/.execstamp.testbench.sv 8-testbench/outputs/.execstamp.testbench.v 8-testbench/outputs/.execstamp.tf_coeff_data.txt
	$(call stamp,8-testbench/outputs/.stamp.testbench.v)

8-testbench/outputs/.stamp.freq_vec_data.txt: 8-testbench/.execstamp 8-testbench/outputs/.execstamp.design.args 8-testbench/outputs/.execstamp.design.args.gls 8-testbench/outputs/.execstamp.freq_vec_data.txt 8-testbench/outputs/.execstamp.testbench.sv 8-testbench/outputs/.execstamp.testbench.v 8-testbench/outputs/.execstamp.tf_coeff_data.txt
	$(call stamp,8-testbench/outputs/.stamp.freq_vec_data.txt)

8-testbench/outputs/.stamp.tf_coeff_data.txt: 8-testbench/.execstamp 8-testbench/outputs/.execstamp.design.args 8-testbench/outputs/.execstamp.design.args.gls 8-testbench/outputs/.execstamp.freq_vec_data.txt 8-testbench/outputs/.execstamp.testbench.sv 8-testbench/outputs/.execstamp.testbench.v 8-testbench/outputs/.execstamp.tf_coeff_data.txt
	$(call stamp,8-testbench/outputs/.stamp.tf_coeff_data.txt)

8-testbench/outputs/.stamp.design.args: 8-testbench/.execstamp 8-testbench/outputs/.execstamp.design.args 8-testbench/outputs/.execstamp.design.args.gls 8-testbench/outputs/.execstamp.freq_vec_data.txt 8-testbench/outputs/.execstamp.testbench.sv 8-testbench/outputs/.execstamp.testbench.v 8-testbench/outputs/.execstamp.tf_coeff_data.txt
	$(call stamp,8-testbench/outputs/.stamp.design.args)

8-testbench/outputs/.stamp.design.args.gls: 8-testbench/.execstamp 8-testbench/outputs/.execstamp.design.args 8-testbench/outputs/.execstamp.design.args.gls 8-testbench/outputs/.execstamp.freq_vec_data.txt 8-testbench/outputs/.execstamp.testbench.sv 8-testbench/outputs/.execstamp.testbench.v 8-testbench/outputs/.execstamp.tf_coeff_data.txt
	$(call stamp,8-testbench/outputs/.stamp.design.args.gls)

# post-conditions

define 8_testbench_post_conditions_commands_rule
	cd 8-testbench && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

8-testbench/.postconditions.stamp: 8-testbench/.execstamp 8-testbench/outputs/.execstamp.design.args 8-testbench/outputs/.execstamp.design.args.gls 8-testbench/outputs/.execstamp.freq_vec_data.txt 8-testbench/outputs/.execstamp.testbench.sv 8-testbench/outputs/.execstamp.testbench.v 8-testbench/outputs/.execstamp.tf_coeff_data.txt 8-testbench/outputs/.stamp.design.args 8-testbench/outputs/.stamp.design.args.gls 8-testbench/outputs/.stamp.freq_vec_data.txt 8-testbench/outputs/.stamp.testbench.sv 8-testbench/outputs/.stamp.testbench.v 8-testbench/outputs/.stamp.tf_coeff_data.txt
	$(call 8_testbench_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: testbench

testbench: 8-testbench/.execstamp 8-testbench/.postconditions.stamp 8-testbench/outputs/.execstamp.design.args 8-testbench/outputs/.execstamp.design.args.gls 8-testbench/outputs/.execstamp.freq_vec_data.txt 8-testbench/outputs/.execstamp.testbench.sv 8-testbench/outputs/.execstamp.testbench.v 8-testbench/outputs/.execstamp.tf_coeff_data.txt 8-testbench/outputs/.stamp.design.args 8-testbench/outputs/.stamp.design.args.gls 8-testbench/outputs/.stamp.freq_vec_data.txt 8-testbench/outputs/.stamp.testbench.sv 8-testbench/outputs/.stamp.testbench.v 8-testbench/outputs/.stamp.tf_coeff_data.txt

.PHONY: 8

8: 8-testbench/.execstamp 8-testbench/.postconditions.stamp 8-testbench/outputs/.execstamp.design.args 8-testbench/outputs/.execstamp.design.args.gls 8-testbench/outputs/.execstamp.freq_vec_data.txt 8-testbench/outputs/.execstamp.testbench.sv 8-testbench/outputs/.execstamp.testbench.v 8-testbench/outputs/.execstamp.tf_coeff_data.txt 8-testbench/outputs/.stamp.design.args 8-testbench/outputs/.stamp.design.args.gls 8-testbench/outputs/.stamp.freq_vec_data.txt 8-testbench/outputs/.stamp.testbench.sv 8-testbench/outputs/.stamp.testbench.v 8-testbench/outputs/.stamp.tf_coeff_data.txt

# debug

# ------------------------------------------------------------------------
# cadence-ncsim-sim
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 12-cadence-ncsim-sim/.prebuilt)","")
12-cadence-ncsim-sim/.stamp: 4-rtl/.execstamp 4-rtl/.postconditions.stamp 4-rtl/outputs/.execstamp.design.v 4-rtl/outputs/.execstamp.design.vcs.v 4-rtl/outputs/.stamp.design.v 4-rtl/outputs/.stamp.design.vcs.v
12-cadence-ncsim-sim/.stamp: 6-sram/.execstamp 6-sram/.postconditions.stamp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
12-cadence-ncsim-sim/.stamp: 8-testbench/.execstamp 8-testbench/.postconditions.stamp 8-testbench/outputs/.execstamp.design.args 8-testbench/outputs/.execstamp.design.args.gls 8-testbench/outputs/.execstamp.freq_vec_data.txt 8-testbench/outputs/.execstamp.testbench.sv 8-testbench/outputs/.execstamp.testbench.v 8-testbench/outputs/.execstamp.tf_coeff_data.txt 8-testbench/outputs/.stamp.design.args 8-testbench/outputs/.stamp.design.args.gls 8-testbench/outputs/.stamp.freq_vec_data.txt 8-testbench/outputs/.stamp.testbench.sv 8-testbench/outputs/.stamp.testbench.v 8-testbench/outputs/.stamp.tf_coeff_data.txt
12-cadence-ncsim-sim/.stamp:
	$(call cpdir-and-parameterize,12-cadence-ncsim-sim,../design/cadence-xcelium-sim,12-cadence-ncsim-sim/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 12-cadence-ncsim-sim/.prebuilt)","")
12-cadence-ncsim-sim/inputs/.stamp.design.args: 12-cadence-ncsim-sim/.stamp 8-testbench/outputs/.stamp.design.args
	$(call symlink,12-cadence-ncsim-sim/inputs,design.args,../../8-testbench/outputs/design.args,.stamp.design.args)
endif

ifeq ("$(wildcard 12-cadence-ncsim-sim/.prebuilt)","")
12-cadence-ncsim-sim/inputs/.stamp.design.v: 12-cadence-ncsim-sim/.stamp 4-rtl/outputs/.stamp.design.v
	$(call symlink,12-cadence-ncsim-sim/inputs,design.v,../../4-rtl/outputs/design.v,.stamp.design.v)
endif

ifeq ("$(wildcard 12-cadence-ncsim-sim/.prebuilt)","")
12-cadence-ncsim-sim/inputs/.stamp.freq_vec_data.txt: 12-cadence-ncsim-sim/.stamp 8-testbench/outputs/.stamp.freq_vec_data.txt
	$(call symlink,12-cadence-ncsim-sim/inputs,freq_vec_data.txt,../../8-testbench/outputs/freq_vec_data.txt,.stamp.freq_vec_data.txt)
endif

ifeq ("$(wildcard 12-cadence-ncsim-sim/.prebuilt)","")
12-cadence-ncsim-sim/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v: 12-cadence-ncsim-sim/.stamp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v
	$(call symlink,12-cadence-ncsim-sim/inputs,sky130_sram_2kbyte_1rw1r_32x512_8.v,../../6-sram/outputs/sky130_sram_2kbyte_1rw1r_32x512_8.v,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v)
endif

ifeq ("$(wildcard 12-cadence-ncsim-sim/.prebuilt)","")
12-cadence-ncsim-sim/inputs/.stamp.testbench.v: 12-cadence-ncsim-sim/.stamp 8-testbench/outputs/.stamp.testbench.v
	$(call symlink,12-cadence-ncsim-sim/inputs,testbench.v,../../8-testbench/outputs/testbench.v,.stamp.testbench.v)
endif

ifeq ("$(wildcard 12-cadence-ncsim-sim/.prebuilt)","")
12-cadence-ncsim-sim/inputs/.stamp.tf_coeff_data.txt: 12-cadence-ncsim-sim/.stamp 8-testbench/outputs/.stamp.tf_coeff_data.txt
	$(call symlink,12-cadence-ncsim-sim/inputs,tf_coeff_data.txt,../../8-testbench/outputs/tf_coeff_data.txt,.stamp.tf_coeff_data.txt)
endif

# execute

ifeq ("$(wildcard 12-cadence-ncsim-sim/.prebuilt)","")

define 12_cadence_ncsim_sim_commands_rule
	mkdir -p 12-cadence-ncsim-sim/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-ncsim-sim && chmod +x .mflowgen/12-cadence-ncsim-sim/mflowgen-run && cp -f .mflowgen/12-cadence-ncsim-sim/mflowgen-run 12-cadence-ncsim-sim && if [[ -e .mflowgen/12-cadence-ncsim-sim/mflowgen-debug ]]; then chmod +x .mflowgen/12-cadence-ncsim-sim/mflowgen-debug && cp -f .mflowgen/12-cadence-ncsim-sim/mflowgen-debug 12-cadence-ncsim-sim; fi && if [[ -e .mflowgen/12-cadence-ncsim-sim/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/12-cadence-ncsim-sim/mflowgen-check-preconditions.py && cp -f .mflowgen/12-cadence-ncsim-sim/mflowgen-check-preconditions.py 12-cadence-ncsim-sim; fi && if [[ -e .mflowgen/12-cadence-ncsim-sim/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/12-cadence-ncsim-sim/mflowgen-check-postconditions.py && cp -f .mflowgen/12-cadence-ncsim-sim/mflowgen-check-postconditions.py 12-cadence-ncsim-sim; fi && cd 12-cadence-ncsim-sim && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 12-cadence-ncsim-sim/outputs/*
endef

12-cadence-ncsim-sim/.execstamp: 12-cadence-ncsim-sim/.stamp 12-cadence-ncsim-sim/inputs/.stamp.design.args 12-cadence-ncsim-sim/inputs/.stamp.design.v 12-cadence-ncsim-sim/inputs/.stamp.freq_vec_data.txt 12-cadence-ncsim-sim/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 12-cadence-ncsim-sim/inputs/.stamp.testbench.v 12-cadence-ncsim-sim/inputs/.stamp.tf_coeff_data.txt
	$(call 12_cadence_ncsim_sim_commands_rule)
	touch $@

12-cadence-ncsim-sim/outputs/.execstamp.design.vcd: 12-cadence-ncsim-sim/.execstamp
	touch $@

endif

# collect outputs

12-cadence-ncsim-sim/outputs/.stamp.design.vcd: 12-cadence-ncsim-sim/.execstamp 12-cadence-ncsim-sim/outputs/.execstamp.design.vcd
	$(call stamp,12-cadence-ncsim-sim/outputs/.stamp.design.vcd)

# post-conditions

define 12_cadence_ncsim_sim_post_conditions_commands_rule
	cd 12-cadence-ncsim-sim && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

12-cadence-ncsim-sim/.postconditions.stamp: 12-cadence-ncsim-sim/.execstamp 12-cadence-ncsim-sim/outputs/.execstamp.design.vcd 12-cadence-ncsim-sim/outputs/.stamp.design.vcd
	$(call 12_cadence_ncsim_sim_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-ncsim-sim

cadence-ncsim-sim: 12-cadence-ncsim-sim/.execstamp 12-cadence-ncsim-sim/.postconditions.stamp 12-cadence-ncsim-sim/outputs/.execstamp.design.vcd 12-cadence-ncsim-sim/outputs/.stamp.design.vcd

.PHONY: 12

12: 12-cadence-ncsim-sim/.execstamp 12-cadence-ncsim-sim/.postconditions.stamp 12-cadence-ncsim-sim/outputs/.execstamp.design.vcd 12-cadence-ncsim-sim/outputs/.stamp.design.vcd

# debug

# ------------------------------------------------------------------------
# synopsys-vcs-sim
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 10-synopsys-vcs-sim/.prebuilt)","")
10-synopsys-vcs-sim/.stamp: 4-rtl/.execstamp 4-rtl/.postconditions.stamp 4-rtl/outputs/.execstamp.design.v 4-rtl/outputs/.execstamp.design.vcs.v 4-rtl/outputs/.stamp.design.v 4-rtl/outputs/.stamp.design.vcs.v
10-synopsys-vcs-sim/.stamp: 6-sram/.execstamp 6-sram/.postconditions.stamp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
10-synopsys-vcs-sim/.stamp: 8-testbench/.execstamp 8-testbench/.postconditions.stamp 8-testbench/outputs/.execstamp.design.args 8-testbench/outputs/.execstamp.design.args.gls 8-testbench/outputs/.execstamp.freq_vec_data.txt 8-testbench/outputs/.execstamp.testbench.sv 8-testbench/outputs/.execstamp.testbench.v 8-testbench/outputs/.execstamp.tf_coeff_data.txt 8-testbench/outputs/.stamp.design.args 8-testbench/outputs/.stamp.design.args.gls 8-testbench/outputs/.stamp.freq_vec_data.txt 8-testbench/outputs/.stamp.testbench.sv 8-testbench/outputs/.stamp.testbench.v 8-testbench/outputs/.stamp.tf_coeff_data.txt
10-synopsys-vcs-sim/.stamp:
	$(call cpdir-and-parameterize,10-synopsys-vcs-sim,../design/synopsys-vcs-sim,10-synopsys-vcs-sim/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 10-synopsys-vcs-sim/.prebuilt)","")
10-synopsys-vcs-sim/inputs/.stamp.design.args: 10-synopsys-vcs-sim/.stamp 8-testbench/outputs/.stamp.design.args
	$(call symlink,10-synopsys-vcs-sim/inputs,design.args,../../8-testbench/outputs/design.args,.stamp.design.args)
endif

ifeq ("$(wildcard 10-synopsys-vcs-sim/.prebuilt)","")
10-synopsys-vcs-sim/inputs/.stamp.design.vcs.v: 10-synopsys-vcs-sim/.stamp 4-rtl/outputs/.stamp.design.vcs.v
	$(call symlink,10-synopsys-vcs-sim/inputs,design.vcs.v,../../4-rtl/outputs/design.vcs.v,.stamp.design.vcs.v)
endif

ifeq ("$(wildcard 10-synopsys-vcs-sim/.prebuilt)","")
10-synopsys-vcs-sim/inputs/.stamp.freq_vec_data.txt: 10-synopsys-vcs-sim/.stamp 8-testbench/outputs/.stamp.freq_vec_data.txt
	$(call symlink,10-synopsys-vcs-sim/inputs,freq_vec_data.txt,../../8-testbench/outputs/freq_vec_data.txt,.stamp.freq_vec_data.txt)
endif

ifeq ("$(wildcard 10-synopsys-vcs-sim/.prebuilt)","")
10-synopsys-vcs-sim/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v: 10-synopsys-vcs-sim/.stamp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v
	$(call symlink,10-synopsys-vcs-sim/inputs,sky130_sram_2kbyte_1rw1r_32x512_8.v,../../6-sram/outputs/sky130_sram_2kbyte_1rw1r_32x512_8.v,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v)
endif

ifeq ("$(wildcard 10-synopsys-vcs-sim/.prebuilt)","")
10-synopsys-vcs-sim/inputs/.stamp.testbench.sv: 10-synopsys-vcs-sim/.stamp 8-testbench/outputs/.stamp.testbench.sv
	$(call symlink,10-synopsys-vcs-sim/inputs,testbench.sv,../../8-testbench/outputs/testbench.sv,.stamp.testbench.sv)
endif

ifeq ("$(wildcard 10-synopsys-vcs-sim/.prebuilt)","")
10-synopsys-vcs-sim/inputs/.stamp.tf_coeff_data.txt: 10-synopsys-vcs-sim/.stamp 8-testbench/outputs/.stamp.tf_coeff_data.txt
	$(call symlink,10-synopsys-vcs-sim/inputs,tf_coeff_data.txt,../../8-testbench/outputs/tf_coeff_data.txt,.stamp.tf_coeff_data.txt)
endif

# execute

ifeq ("$(wildcard 10-synopsys-vcs-sim/.prebuilt)","")

define 10_synopsys_vcs_sim_commands_rule
	mkdir -p 10-synopsys-vcs-sim/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t synopsys-vcs-sim && chmod +x .mflowgen/10-synopsys-vcs-sim/mflowgen-run && cp -f .mflowgen/10-synopsys-vcs-sim/mflowgen-run 10-synopsys-vcs-sim && if [[ -e .mflowgen/10-synopsys-vcs-sim/mflowgen-debug ]]; then chmod +x .mflowgen/10-synopsys-vcs-sim/mflowgen-debug && cp -f .mflowgen/10-synopsys-vcs-sim/mflowgen-debug 10-synopsys-vcs-sim; fi && if [[ -e .mflowgen/10-synopsys-vcs-sim/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/10-synopsys-vcs-sim/mflowgen-check-preconditions.py && cp -f .mflowgen/10-synopsys-vcs-sim/mflowgen-check-preconditions.py 10-synopsys-vcs-sim; fi && if [[ -e .mflowgen/10-synopsys-vcs-sim/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/10-synopsys-vcs-sim/mflowgen-check-postconditions.py && cp -f .mflowgen/10-synopsys-vcs-sim/mflowgen-check-postconditions.py 10-synopsys-vcs-sim; fi && cd 10-synopsys-vcs-sim && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 10-synopsys-vcs-sim/outputs/*
endef

10-synopsys-vcs-sim/.execstamp: 10-synopsys-vcs-sim/.stamp 10-synopsys-vcs-sim/inputs/.stamp.design.args 10-synopsys-vcs-sim/inputs/.stamp.design.vcs.v 10-synopsys-vcs-sim/inputs/.stamp.freq_vec_data.txt 10-synopsys-vcs-sim/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 10-synopsys-vcs-sim/inputs/.stamp.testbench.sv 10-synopsys-vcs-sim/inputs/.stamp.tf_coeff_data.txt
	$(call 10_synopsys_vcs_sim_commands_rule)
	touch $@

10-synopsys-vcs-sim/outputs/.execstamp.design.vpd: 10-synopsys-vcs-sim/.execstamp
	touch $@
10-synopsys-vcs-sim/outputs/.execstamp.run.saif: 10-synopsys-vcs-sim/.execstamp
	touch $@

endif

# collect outputs

10-synopsys-vcs-sim/outputs/.stamp.design.vpd: 10-synopsys-vcs-sim/.execstamp 10-synopsys-vcs-sim/outputs/.execstamp.design.vpd 10-synopsys-vcs-sim/outputs/.execstamp.run.saif
	$(call stamp,10-synopsys-vcs-sim/outputs/.stamp.design.vpd)

10-synopsys-vcs-sim/outputs/.stamp.run.saif: 10-synopsys-vcs-sim/.execstamp 10-synopsys-vcs-sim/outputs/.execstamp.design.vpd 10-synopsys-vcs-sim/outputs/.execstamp.run.saif
	$(call stamp,10-synopsys-vcs-sim/outputs/.stamp.run.saif)

# post-conditions

define 10_synopsys_vcs_sim_post_conditions_commands_rule
	cd 10-synopsys-vcs-sim && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

10-synopsys-vcs-sim/.postconditions.stamp: 10-synopsys-vcs-sim/.execstamp 10-synopsys-vcs-sim/outputs/.execstamp.design.vpd 10-synopsys-vcs-sim/outputs/.execstamp.run.saif 10-synopsys-vcs-sim/outputs/.stamp.design.vpd 10-synopsys-vcs-sim/outputs/.stamp.run.saif
	$(call 10_synopsys_vcs_sim_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: synopsys-vcs-sim

synopsys-vcs-sim: 10-synopsys-vcs-sim/.execstamp 10-synopsys-vcs-sim/.postconditions.stamp 10-synopsys-vcs-sim/outputs/.execstamp.design.vpd 10-synopsys-vcs-sim/outputs/.execstamp.run.saif 10-synopsys-vcs-sim/outputs/.stamp.design.vpd 10-synopsys-vcs-sim/outputs/.stamp.run.saif

.PHONY: 10

10: 10-synopsys-vcs-sim/.execstamp 10-synopsys-vcs-sim/.postconditions.stamp 10-synopsys-vcs-sim/outputs/.execstamp.design.vpd 10-synopsys-vcs-sim/outputs/.execstamp.run.saif 10-synopsys-vcs-sim/outputs/.stamp.design.vpd 10-synopsys-vcs-sim/outputs/.stamp.run.saif

# debug

# ------------------------------------------------------------------------
# synopsys-dc-synthesis
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 11-synopsys-dc-synthesis/.prebuilt)","")
11-synopsys-dc-synthesis/.stamp: 0-constraints/.execstamp 0-constraints/.postconditions.stamp 0-constraints/outputs/.execstamp.constraints.tcl 0-constraints/outputs/.stamp.constraints.tcl
11-synopsys-dc-synthesis/.stamp: 10-synopsys-vcs-sim/.execstamp 10-synopsys-vcs-sim/.postconditions.stamp 10-synopsys-vcs-sim/outputs/.execstamp.design.vpd 10-synopsys-vcs-sim/outputs/.execstamp.run.saif 10-synopsys-vcs-sim/outputs/.stamp.design.vpd 10-synopsys-vcs-sim/outputs/.stamp.run.saif
11-synopsys-dc-synthesis/.stamp: 4-rtl/.execstamp 4-rtl/.postconditions.stamp 4-rtl/outputs/.execstamp.design.v 4-rtl/outputs/.execstamp.design.vcs.v 4-rtl/outputs/.stamp.design.v 4-rtl/outputs/.stamp.design.vcs.v
11-synopsys-dc-synthesis/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
11-synopsys-dc-synthesis/.stamp: 6-sram/.execstamp 6-sram/.postconditions.stamp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
11-synopsys-dc-synthesis/.stamp: 7-synopsys-dc-compile/.execstamp 7-synopsys-dc-compile/.postconditions.stamp 7-synopsys-dc-compile/outputs/.execstamp.compile.tcl 7-synopsys-dc-compile/outputs/.stamp.compile.tcl
11-synopsys-dc-synthesis/.stamp:
	$(call cpdir-and-parameterize,11-synopsys-dc-synthesis,../../mflowgen/steps/synopsys-dc-synthesis,11-synopsys-dc-synthesis/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 11-synopsys-dc-synthesis/.prebuilt)","")
11-synopsys-dc-synthesis/inputs/.stamp.adk: 11-synopsys-dc-synthesis/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,11-synopsys-dc-synthesis/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 11-synopsys-dc-synthesis/.prebuilt)","")
11-synopsys-dc-synthesis/inputs/.stamp.compile.tcl: 11-synopsys-dc-synthesis/.stamp 7-synopsys-dc-compile/outputs/.stamp.compile.tcl
	$(call symlink,11-synopsys-dc-synthesis/inputs,compile.tcl,../../7-synopsys-dc-compile/outputs/compile.tcl,.stamp.compile.tcl)
endif

ifeq ("$(wildcard 11-synopsys-dc-synthesis/.prebuilt)","")
11-synopsys-dc-synthesis/inputs/.stamp.constraints.tcl: 11-synopsys-dc-synthesis/.stamp 0-constraints/outputs/.stamp.constraints.tcl
	$(call symlink,11-synopsys-dc-synthesis/inputs,constraints.tcl,../../0-constraints/outputs/constraints.tcl,.stamp.constraints.tcl)
endif

ifeq ("$(wildcard 11-synopsys-dc-synthesis/.prebuilt)","")
11-synopsys-dc-synthesis/inputs/.stamp.design.v: 11-synopsys-dc-synthesis/.stamp 4-rtl/outputs/.stamp.design.v
	$(call symlink,11-synopsys-dc-synthesis/inputs,design.v,../../4-rtl/outputs/design.v,.stamp.design.v)
endif

ifeq ("$(wildcard 11-synopsys-dc-synthesis/.prebuilt)","")
11-synopsys-dc-synthesis/inputs/.stamp.run.saif: 11-synopsys-dc-synthesis/.stamp 10-synopsys-vcs-sim/outputs/.stamp.run.saif
	$(call symlink,11-synopsys-dc-synthesis/inputs,run.saif,../../10-synopsys-vcs-sim/outputs/run.saif,.stamp.run.saif)
endif

ifeq ("$(wildcard 11-synopsys-dc-synthesis/.prebuilt)","")
11-synopsys-dc-synthesis/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef: 11-synopsys-dc-synthesis/.stamp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef
	$(call symlink,11-synopsys-dc-synthesis/inputs,sky130_sram_2kbyte_1rw1r_32x512_8.lef,../../6-sram/outputs/sky130_sram_2kbyte_1rw1r_32x512_8.lef,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef)
endif

ifeq ("$(wildcard 11-synopsys-dc-synthesis/.prebuilt)","")
11-synopsys-dc-synthesis/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db: 11-synopsys-dc-synthesis/.stamp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db
	$(call symlink,11-synopsys-dc-synthesis/inputs,sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db,../../6-sram/outputs/sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db)
endif

# execute

ifeq ("$(wildcard 11-synopsys-dc-synthesis/.prebuilt)","")

define 11_synopsys_dc_synthesis_commands_rule
	mkdir -p 11-synopsys-dc-synthesis/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t synopsys-dc-synthesis && chmod +x .mflowgen/11-synopsys-dc-synthesis/mflowgen-run && cp -f .mflowgen/11-synopsys-dc-synthesis/mflowgen-run 11-synopsys-dc-synthesis && if [[ -e .mflowgen/11-synopsys-dc-synthesis/mflowgen-debug ]]; then chmod +x .mflowgen/11-synopsys-dc-synthesis/mflowgen-debug && cp -f .mflowgen/11-synopsys-dc-synthesis/mflowgen-debug 11-synopsys-dc-synthesis; fi && if [[ -e .mflowgen/11-synopsys-dc-synthesis/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/11-synopsys-dc-synthesis/mflowgen-check-preconditions.py && cp -f .mflowgen/11-synopsys-dc-synthesis/mflowgen-check-preconditions.py 11-synopsys-dc-synthesis; fi && if [[ -e .mflowgen/11-synopsys-dc-synthesis/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/11-synopsys-dc-synthesis/mflowgen-check-postconditions.py && cp -f .mflowgen/11-synopsys-dc-synthesis/mflowgen-check-postconditions.py 11-synopsys-dc-synthesis; fi && cd 11-synopsys-dc-synthesis && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 11-synopsys-dc-synthesis/outputs/*
endef

11-synopsys-dc-synthesis/.execstamp: 11-synopsys-dc-synthesis/.stamp 11-synopsys-dc-synthesis/inputs/.stamp.adk 11-synopsys-dc-synthesis/inputs/.stamp.compile.tcl 11-synopsys-dc-synthesis/inputs/.stamp.constraints.tcl 11-synopsys-dc-synthesis/inputs/.stamp.design.v 11-synopsys-dc-synthesis/inputs/.stamp.run.saif 11-synopsys-dc-synthesis/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 11-synopsys-dc-synthesis/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db
	$(call 11_synopsys_dc_synthesis_commands_rule)
	touch $@

11-synopsys-dc-synthesis/outputs/.execstamp.design.v: 11-synopsys-dc-synthesis/.execstamp
	touch $@
11-synopsys-dc-synthesis/outputs/.execstamp.design.sdc: 11-synopsys-dc-synthesis/.execstamp
	touch $@
11-synopsys-dc-synthesis/outputs/.execstamp.design.namemap: 11-synopsys-dc-synthesis/.execstamp
	touch $@
11-synopsys-dc-synthesis/outputs/.execstamp.design.svf: 11-synopsys-dc-synthesis/.execstamp
	touch $@

endif

# collect outputs

11-synopsys-dc-synthesis/outputs/.stamp.design.v: 11-synopsys-dc-synthesis/.execstamp 11-synopsys-dc-synthesis/outputs/.execstamp.design.namemap 11-synopsys-dc-synthesis/outputs/.execstamp.design.sdc 11-synopsys-dc-synthesis/outputs/.execstamp.design.svf 11-synopsys-dc-synthesis/outputs/.execstamp.design.v
	$(call stamp,11-synopsys-dc-synthesis/outputs/.stamp.design.v)

11-synopsys-dc-synthesis/outputs/.stamp.design.sdc: 11-synopsys-dc-synthesis/.execstamp 11-synopsys-dc-synthesis/outputs/.execstamp.design.namemap 11-synopsys-dc-synthesis/outputs/.execstamp.design.sdc 11-synopsys-dc-synthesis/outputs/.execstamp.design.svf 11-synopsys-dc-synthesis/outputs/.execstamp.design.v
	$(call stamp,11-synopsys-dc-synthesis/outputs/.stamp.design.sdc)

11-synopsys-dc-synthesis/outputs/.stamp.design.namemap: 11-synopsys-dc-synthesis/.execstamp 11-synopsys-dc-synthesis/outputs/.execstamp.design.namemap 11-synopsys-dc-synthesis/outputs/.execstamp.design.sdc 11-synopsys-dc-synthesis/outputs/.execstamp.design.svf 11-synopsys-dc-synthesis/outputs/.execstamp.design.v
	$(call stamp,11-synopsys-dc-synthesis/outputs/.stamp.design.namemap)

11-synopsys-dc-synthesis/outputs/.stamp.design.svf: 11-synopsys-dc-synthesis/.execstamp 11-synopsys-dc-synthesis/outputs/.execstamp.design.namemap 11-synopsys-dc-synthesis/outputs/.execstamp.design.sdc 11-synopsys-dc-synthesis/outputs/.execstamp.design.svf 11-synopsys-dc-synthesis/outputs/.execstamp.design.v
	$(call stamp,11-synopsys-dc-synthesis/outputs/.stamp.design.svf)

# post-conditions

define 11_synopsys_dc_synthesis_post_conditions_commands_rule
	cd 11-synopsys-dc-synthesis && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

11-synopsys-dc-synthesis/.postconditions.stamp: 11-synopsys-dc-synthesis/.execstamp 11-synopsys-dc-synthesis/outputs/.execstamp.design.namemap 11-synopsys-dc-synthesis/outputs/.execstamp.design.sdc 11-synopsys-dc-synthesis/outputs/.execstamp.design.svf 11-synopsys-dc-synthesis/outputs/.execstamp.design.v 11-synopsys-dc-synthesis/outputs/.stamp.design.namemap 11-synopsys-dc-synthesis/outputs/.stamp.design.sdc 11-synopsys-dc-synthesis/outputs/.stamp.design.svf 11-synopsys-dc-synthesis/outputs/.stamp.design.v
	$(call 11_synopsys_dc_synthesis_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: synopsys-dc-synthesis

synopsys-dc-synthesis: 11-synopsys-dc-synthesis/.execstamp 11-synopsys-dc-synthesis/.postconditions.stamp 11-synopsys-dc-synthesis/outputs/.execstamp.design.namemap 11-synopsys-dc-synthesis/outputs/.execstamp.design.sdc 11-synopsys-dc-synthesis/outputs/.execstamp.design.svf 11-synopsys-dc-synthesis/outputs/.execstamp.design.v 11-synopsys-dc-synthesis/outputs/.stamp.design.namemap 11-synopsys-dc-synthesis/outputs/.stamp.design.sdc 11-synopsys-dc-synthesis/outputs/.stamp.design.svf 11-synopsys-dc-synthesis/outputs/.stamp.design.v

.PHONY: 11

11: 11-synopsys-dc-synthesis/.execstamp 11-synopsys-dc-synthesis/.postconditions.stamp 11-synopsys-dc-synthesis/outputs/.execstamp.design.namemap 11-synopsys-dc-synthesis/outputs/.execstamp.design.sdc 11-synopsys-dc-synthesis/outputs/.execstamp.design.svf 11-synopsys-dc-synthesis/outputs/.execstamp.design.v 11-synopsys-dc-synthesis/outputs/.stamp.design.namemap 11-synopsys-dc-synthesis/outputs/.stamp.design.sdc 11-synopsys-dc-synthesis/outputs/.stamp.design.svf 11-synopsys-dc-synthesis/outputs/.stamp.design.v

# debug

define 11_debug_rule
	cd 11-synopsys-dc-synthesis && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-synopsys-dc-synthesis: 
	$(call 11_debug_rule)

.PHONY: debug-11

debug-11: debug-synopsys-dc-synthesis

# ------------------------------------------------------------------------
# cadence-innovus-flowsetup
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 13-cadence-innovus-flowsetup/.prebuilt)","")
13-cadence-innovus-flowsetup/.stamp: 11-synopsys-dc-synthesis/.execstamp 11-synopsys-dc-synthesis/.postconditions.stamp 11-synopsys-dc-synthesis/outputs/.execstamp.design.namemap 11-synopsys-dc-synthesis/outputs/.execstamp.design.sdc 11-synopsys-dc-synthesis/outputs/.execstamp.design.svf 11-synopsys-dc-synthesis/outputs/.execstamp.design.v 11-synopsys-dc-synthesis/outputs/.stamp.design.namemap 11-synopsys-dc-synthesis/outputs/.stamp.design.sdc 11-synopsys-dc-synthesis/outputs/.stamp.design.svf 11-synopsys-dc-synthesis/outputs/.stamp.design.v
13-cadence-innovus-flowsetup/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
13-cadence-innovus-flowsetup/.stamp: 6-sram/.execstamp 6-sram/.postconditions.stamp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
13-cadence-innovus-flowsetup/.stamp:
	$(call cpdir-and-parameterize,13-cadence-innovus-flowsetup,../../mflowgen/steps/cadence-innovus-flowsetup,13-cadence-innovus-flowsetup/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 13-cadence-innovus-flowsetup/.prebuilt)","")
13-cadence-innovus-flowsetup/inputs/.stamp.adk: 13-cadence-innovus-flowsetup/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,13-cadence-innovus-flowsetup/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 13-cadence-innovus-flowsetup/.prebuilt)","")
13-cadence-innovus-flowsetup/inputs/.stamp.design.sdc: 13-cadence-innovus-flowsetup/.stamp 11-synopsys-dc-synthesis/outputs/.stamp.design.sdc
	$(call symlink,13-cadence-innovus-flowsetup/inputs,design.sdc,../../11-synopsys-dc-synthesis/outputs/design.sdc,.stamp.design.sdc)
endif

ifeq ("$(wildcard 13-cadence-innovus-flowsetup/.prebuilt)","")
13-cadence-innovus-flowsetup/inputs/.stamp.design.v: 13-cadence-innovus-flowsetup/.stamp 11-synopsys-dc-synthesis/outputs/.stamp.design.v
	$(call symlink,13-cadence-innovus-flowsetup/inputs,design.v,../../11-synopsys-dc-synthesis/outputs/design.v,.stamp.design.v)
endif

ifeq ("$(wildcard 13-cadence-innovus-flowsetup/.prebuilt)","")
13-cadence-innovus-flowsetup/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef: 13-cadence-innovus-flowsetup/.stamp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef
	$(call symlink,13-cadence-innovus-flowsetup/inputs,sky130_sram_2kbyte_1rw1r_32x512_8.lef,../../6-sram/outputs/sky130_sram_2kbyte_1rw1r_32x512_8.lef,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef)
endif

ifeq ("$(wildcard 13-cadence-innovus-flowsetup/.prebuilt)","")
13-cadence-innovus-flowsetup/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib: 13-cadence-innovus-flowsetup/.stamp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
	$(call symlink,13-cadence-innovus-flowsetup/inputs,sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib,../../6-sram/outputs/sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib)
endif

# execute

ifeq ("$(wildcard 13-cadence-innovus-flowsetup/.prebuilt)","")

define 13_cadence_innovus_flowsetup_commands_rule
	mkdir -p 13-cadence-innovus-flowsetup/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-flowsetup && chmod +x .mflowgen/13-cadence-innovus-flowsetup/mflowgen-run && cp -f .mflowgen/13-cadence-innovus-flowsetup/mflowgen-run 13-cadence-innovus-flowsetup && if [[ -e .mflowgen/13-cadence-innovus-flowsetup/mflowgen-debug ]]; then chmod +x .mflowgen/13-cadence-innovus-flowsetup/mflowgen-debug && cp -f .mflowgen/13-cadence-innovus-flowsetup/mflowgen-debug 13-cadence-innovus-flowsetup; fi && if [[ -e .mflowgen/13-cadence-innovus-flowsetup/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/13-cadence-innovus-flowsetup/mflowgen-check-preconditions.py && cp -f .mflowgen/13-cadence-innovus-flowsetup/mflowgen-check-preconditions.py 13-cadence-innovus-flowsetup; fi && if [[ -e .mflowgen/13-cadence-innovus-flowsetup/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/13-cadence-innovus-flowsetup/mflowgen-check-postconditions.py && cp -f .mflowgen/13-cadence-innovus-flowsetup/mflowgen-check-postconditions.py 13-cadence-innovus-flowsetup; fi && cd 13-cadence-innovus-flowsetup && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 13-cadence-innovus-flowsetup/outputs/*
endef

13-cadence-innovus-flowsetup/.execstamp: 13-cadence-innovus-flowsetup/.stamp 13-cadence-innovus-flowsetup/inputs/.stamp.adk 13-cadence-innovus-flowsetup/inputs/.stamp.design.sdc 13-cadence-innovus-flowsetup/inputs/.stamp.design.v 13-cadence-innovus-flowsetup/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 13-cadence-innovus-flowsetup/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
	$(call 13_cadence_innovus_flowsetup_commands_rule)
	touch $@

13-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow: 13-cadence-innovus-flowsetup/.execstamp
	touch $@

endif

# collect outputs

13-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow: 13-cadence-innovus-flowsetup/.execstamp 13-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow
	$(call stamp,13-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow)

# post-conditions

define 13_cadence_innovus_flowsetup_post_conditions_commands_rule
	cd 13-cadence-innovus-flowsetup && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

13-cadence-innovus-flowsetup/.postconditions.stamp: 13-cadence-innovus-flowsetup/.execstamp 13-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 13-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call 13_cadence_innovus_flowsetup_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-flowsetup

cadence-innovus-flowsetup: 13-cadence-innovus-flowsetup/.execstamp 13-cadence-innovus-flowsetup/.postconditions.stamp 13-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 13-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow

.PHONY: 13

13: 13-cadence-innovus-flowsetup/.execstamp 13-cadence-innovus-flowsetup/.postconditions.stamp 13-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 13-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow

# debug

# ------------------------------------------------------------------------
# cadence-innovus-init
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 14-cadence-innovus-init/.prebuilt)","")
14-cadence-innovus-init/.stamp: 1-floorplan/.execstamp 1-floorplan/.postconditions.stamp 1-floorplan/outputs/.execstamp.floorplan.tcl 1-floorplan/outputs/.stamp.floorplan.tcl
14-cadence-innovus-init/.stamp: 11-synopsys-dc-synthesis/.execstamp 11-synopsys-dc-synthesis/.postconditions.stamp 11-synopsys-dc-synthesis/outputs/.execstamp.design.namemap 11-synopsys-dc-synthesis/outputs/.execstamp.design.sdc 11-synopsys-dc-synthesis/outputs/.execstamp.design.svf 11-synopsys-dc-synthesis/outputs/.execstamp.design.v 11-synopsys-dc-synthesis/outputs/.stamp.design.namemap 11-synopsys-dc-synthesis/outputs/.stamp.design.sdc 11-synopsys-dc-synthesis/outputs/.stamp.design.svf 11-synopsys-dc-synthesis/outputs/.stamp.design.v
14-cadence-innovus-init/.stamp: 13-cadence-innovus-flowsetup/.execstamp 13-cadence-innovus-flowsetup/.postconditions.stamp 13-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 13-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
14-cadence-innovus-init/.stamp: 2-cadence-innovus-dont-use-cells/.execstamp 2-cadence-innovus-dont-use-cells/.postconditions.stamp 2-cadence-innovus-dont-use-cells/outputs/.execstamp.dont-use-cells.tcl 2-cadence-innovus-dont-use-cells/outputs/.stamp.dont-use-cells.tcl
14-cadence-innovus-init/.stamp: 3-pin-placement/.execstamp 3-pin-placement/.postconditions.stamp 3-pin-placement/outputs/.execstamp.pin-assignments.tcl 3-pin-placement/outputs/.stamp.pin-assignments.tcl
14-cadence-innovus-init/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
14-cadence-innovus-init/.stamp: 6-sram/.execstamp 6-sram/.postconditions.stamp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
14-cadence-innovus-init/.stamp:
	$(call cpdir-and-parameterize,14-cadence-innovus-init,../../mflowgen/steps/cadence-innovus-init,14-cadence-innovus-init/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 14-cadence-innovus-init/.prebuilt)","")
14-cadence-innovus-init/inputs/.stamp.adk: 14-cadence-innovus-init/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,14-cadence-innovus-init/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 14-cadence-innovus-init/.prebuilt)","")
14-cadence-innovus-init/inputs/.stamp.design.sdc: 14-cadence-innovus-init/.stamp 11-synopsys-dc-synthesis/outputs/.stamp.design.sdc
	$(call symlink,14-cadence-innovus-init/inputs,design.sdc,../../11-synopsys-dc-synthesis/outputs/design.sdc,.stamp.design.sdc)
endif

ifeq ("$(wildcard 14-cadence-innovus-init/.prebuilt)","")
14-cadence-innovus-init/inputs/.stamp.design.v: 14-cadence-innovus-init/.stamp 11-synopsys-dc-synthesis/outputs/.stamp.design.v
	$(call symlink,14-cadence-innovus-init/inputs,design.v,../../11-synopsys-dc-synthesis/outputs/design.v,.stamp.design.v)
endif

ifeq ("$(wildcard 14-cadence-innovus-init/.prebuilt)","")
14-cadence-innovus-init/inputs/.stamp.dont-use-cells.tcl: 14-cadence-innovus-init/.stamp 2-cadence-innovus-dont-use-cells/outputs/.stamp.dont-use-cells.tcl
	$(call symlink,14-cadence-innovus-init/inputs,dont-use-cells.tcl,../../2-cadence-innovus-dont-use-cells/outputs/dont-use-cells.tcl,.stamp.dont-use-cells.tcl)
endif

ifeq ("$(wildcard 14-cadence-innovus-init/.prebuilt)","")
14-cadence-innovus-init/inputs/.stamp.floorplan.tcl: 14-cadence-innovus-init/.stamp 1-floorplan/outputs/.stamp.floorplan.tcl
	$(call symlink,14-cadence-innovus-init/inputs,floorplan.tcl,../../1-floorplan/outputs/floorplan.tcl,.stamp.floorplan.tcl)
endif

ifeq ("$(wildcard 14-cadence-innovus-init/.prebuilt)","")
14-cadence-innovus-init/inputs/.stamp.innovus-foundation-flow: 14-cadence-innovus-init/.stamp 13-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call symlink,14-cadence-innovus-init/inputs,innovus-foundation-flow,../../13-cadence-innovus-flowsetup/outputs/innovus-foundation-flow,.stamp.innovus-foundation-flow)
endif

ifeq ("$(wildcard 14-cadence-innovus-init/.prebuilt)","")
14-cadence-innovus-init/inputs/.stamp.pin-assignments.tcl: 14-cadence-innovus-init/.stamp 3-pin-placement/outputs/.stamp.pin-assignments.tcl
	$(call symlink,14-cadence-innovus-init/inputs,pin-assignments.tcl,../../3-pin-placement/outputs/pin-assignments.tcl,.stamp.pin-assignments.tcl)
endif

ifeq ("$(wildcard 14-cadence-innovus-init/.prebuilt)","")
14-cadence-innovus-init/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef: 14-cadence-innovus-init/.stamp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef
	$(call symlink,14-cadence-innovus-init/inputs,sky130_sram_2kbyte_1rw1r_32x512_8.lef,../../6-sram/outputs/sky130_sram_2kbyte_1rw1r_32x512_8.lef,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef)
endif

ifeq ("$(wildcard 14-cadence-innovus-init/.prebuilt)","")
14-cadence-innovus-init/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib: 14-cadence-innovus-init/.stamp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
	$(call symlink,14-cadence-innovus-init/inputs,sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib,../../6-sram/outputs/sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib)
endif

# execute

ifeq ("$(wildcard 14-cadence-innovus-init/.prebuilt)","")

define 14_cadence_innovus_init_commands_rule
	mkdir -p 14-cadence-innovus-init/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-init && chmod +x .mflowgen/14-cadence-innovus-init/mflowgen-run && cp -f .mflowgen/14-cadence-innovus-init/mflowgen-run 14-cadence-innovus-init && if [[ -e .mflowgen/14-cadence-innovus-init/mflowgen-debug ]]; then chmod +x .mflowgen/14-cadence-innovus-init/mflowgen-debug && cp -f .mflowgen/14-cadence-innovus-init/mflowgen-debug 14-cadence-innovus-init; fi && if [[ -e .mflowgen/14-cadence-innovus-init/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/14-cadence-innovus-init/mflowgen-check-preconditions.py && cp -f .mflowgen/14-cadence-innovus-init/mflowgen-check-preconditions.py 14-cadence-innovus-init; fi && if [[ -e .mflowgen/14-cadence-innovus-init/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/14-cadence-innovus-init/mflowgen-check-postconditions.py && cp -f .mflowgen/14-cadence-innovus-init/mflowgen-check-postconditions.py 14-cadence-innovus-init; fi && cd 14-cadence-innovus-init && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 14-cadence-innovus-init/outputs/*
endef

14-cadence-innovus-init/.execstamp: 14-cadence-innovus-init/.stamp 14-cadence-innovus-init/inputs/.stamp.adk 14-cadence-innovus-init/inputs/.stamp.design.sdc 14-cadence-innovus-init/inputs/.stamp.design.v 14-cadence-innovus-init/inputs/.stamp.dont-use-cells.tcl 14-cadence-innovus-init/inputs/.stamp.floorplan.tcl 14-cadence-innovus-init/inputs/.stamp.innovus-foundation-flow 14-cadence-innovus-init/inputs/.stamp.pin-assignments.tcl 14-cadence-innovus-init/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 14-cadence-innovus-init/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
	$(call 14_cadence_innovus_init_commands_rule)
	touch $@

14-cadence-innovus-init/outputs/.execstamp.design.checkpoint: 14-cadence-innovus-init/.execstamp
	touch $@

endif

# collect outputs

14-cadence-innovus-init/outputs/.stamp.design.checkpoint: 14-cadence-innovus-init/.execstamp 14-cadence-innovus-init/outputs/.execstamp.design.checkpoint
	$(call stamp,14-cadence-innovus-init/outputs/.stamp.design.checkpoint)

# post-conditions

define 14_cadence_innovus_init_post_conditions_commands_rule
	cd 14-cadence-innovus-init && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

14-cadence-innovus-init/.postconditions.stamp: 14-cadence-innovus-init/.execstamp 14-cadence-innovus-init/outputs/.execstamp.design.checkpoint 14-cadence-innovus-init/outputs/.stamp.design.checkpoint
	$(call 14_cadence_innovus_init_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-init

cadence-innovus-init: 14-cadence-innovus-init/.execstamp 14-cadence-innovus-init/.postconditions.stamp 14-cadence-innovus-init/outputs/.execstamp.design.checkpoint 14-cadence-innovus-init/outputs/.stamp.design.checkpoint

.PHONY: 14

14: 14-cadence-innovus-init/.execstamp 14-cadence-innovus-init/.postconditions.stamp 14-cadence-innovus-init/outputs/.execstamp.design.checkpoint 14-cadence-innovus-init/outputs/.stamp.design.checkpoint

# debug

define 14_debug_rule
	cd 14-cadence-innovus-init && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-cadence-innovus-init: 
	$(call 14_debug_rule)

.PHONY: debug-14

debug-14: debug-cadence-innovus-init

# ------------------------------------------------------------------------
# cadence-innovus-power
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 15-cadence-innovus-power/.prebuilt)","")
15-cadence-innovus-power/.stamp: 11-synopsys-dc-synthesis/.execstamp 11-synopsys-dc-synthesis/.postconditions.stamp 11-synopsys-dc-synthesis/outputs/.execstamp.design.namemap 11-synopsys-dc-synthesis/outputs/.execstamp.design.sdc 11-synopsys-dc-synthesis/outputs/.execstamp.design.svf 11-synopsys-dc-synthesis/outputs/.execstamp.design.v 11-synopsys-dc-synthesis/outputs/.stamp.design.namemap 11-synopsys-dc-synthesis/outputs/.stamp.design.sdc 11-synopsys-dc-synthesis/outputs/.stamp.design.svf 11-synopsys-dc-synthesis/outputs/.stamp.design.v
15-cadence-innovus-power/.stamp: 13-cadence-innovus-flowsetup/.execstamp 13-cadence-innovus-flowsetup/.postconditions.stamp 13-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 13-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
15-cadence-innovus-power/.stamp: 14-cadence-innovus-init/.execstamp 14-cadence-innovus-init/.postconditions.stamp 14-cadence-innovus-init/outputs/.execstamp.design.checkpoint 14-cadence-innovus-init/outputs/.stamp.design.checkpoint
15-cadence-innovus-power/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
15-cadence-innovus-power/.stamp: 6-sram/.execstamp 6-sram/.postconditions.stamp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
15-cadence-innovus-power/.stamp:
	$(call cpdir-and-parameterize,15-cadence-innovus-power,../design/cadence-innovus-power,15-cadence-innovus-power/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 15-cadence-innovus-power/.prebuilt)","")
15-cadence-innovus-power/inputs/.stamp.adk: 15-cadence-innovus-power/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,15-cadence-innovus-power/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 15-cadence-innovus-power/.prebuilt)","")
15-cadence-innovus-power/inputs/.stamp.design.checkpoint: 15-cadence-innovus-power/.stamp 14-cadence-innovus-init/outputs/.stamp.design.checkpoint
	$(call symlink,15-cadence-innovus-power/inputs,design.checkpoint,../../14-cadence-innovus-init/outputs/design.checkpoint,.stamp.design.checkpoint)
endif

ifeq ("$(wildcard 15-cadence-innovus-power/.prebuilt)","")
15-cadence-innovus-power/inputs/.stamp.design.sdc: 15-cadence-innovus-power/.stamp 11-synopsys-dc-synthesis/outputs/.stamp.design.sdc
	$(call symlink,15-cadence-innovus-power/inputs,design.sdc,../../11-synopsys-dc-synthesis/outputs/design.sdc,.stamp.design.sdc)
endif

ifeq ("$(wildcard 15-cadence-innovus-power/.prebuilt)","")
15-cadence-innovus-power/inputs/.stamp.innovus-foundation-flow: 15-cadence-innovus-power/.stamp 13-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call symlink,15-cadence-innovus-power/inputs,innovus-foundation-flow,../../13-cadence-innovus-flowsetup/outputs/innovus-foundation-flow,.stamp.innovus-foundation-flow)
endif

ifeq ("$(wildcard 15-cadence-innovus-power/.prebuilt)","")
15-cadence-innovus-power/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef: 15-cadence-innovus-power/.stamp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef
	$(call symlink,15-cadence-innovus-power/inputs,sky130_sram_2kbyte_1rw1r_32x512_8.lef,../../6-sram/outputs/sky130_sram_2kbyte_1rw1r_32x512_8.lef,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef)
endif

ifeq ("$(wildcard 15-cadence-innovus-power/.prebuilt)","")
15-cadence-innovus-power/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib: 15-cadence-innovus-power/.stamp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
	$(call symlink,15-cadence-innovus-power/inputs,sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib,../../6-sram/outputs/sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib)
endif

# execute

ifeq ("$(wildcard 15-cadence-innovus-power/.prebuilt)","")

define 15_cadence_innovus_power_commands_rule
	mkdir -p 15-cadence-innovus-power/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-power && chmod +x .mflowgen/15-cadence-innovus-power/mflowgen-run && cp -f .mflowgen/15-cadence-innovus-power/mflowgen-run 15-cadence-innovus-power && if [[ -e .mflowgen/15-cadence-innovus-power/mflowgen-debug ]]; then chmod +x .mflowgen/15-cadence-innovus-power/mflowgen-debug && cp -f .mflowgen/15-cadence-innovus-power/mflowgen-debug 15-cadence-innovus-power; fi && if [[ -e .mflowgen/15-cadence-innovus-power/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/15-cadence-innovus-power/mflowgen-check-preconditions.py && cp -f .mflowgen/15-cadence-innovus-power/mflowgen-check-preconditions.py 15-cadence-innovus-power; fi && if [[ -e .mflowgen/15-cadence-innovus-power/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/15-cadence-innovus-power/mflowgen-check-postconditions.py && cp -f .mflowgen/15-cadence-innovus-power/mflowgen-check-postconditions.py 15-cadence-innovus-power; fi && cd 15-cadence-innovus-power && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 15-cadence-innovus-power/outputs/*
endef

15-cadence-innovus-power/.execstamp: 15-cadence-innovus-power/.stamp 15-cadence-innovus-power/inputs/.stamp.adk 15-cadence-innovus-power/inputs/.stamp.design.checkpoint 15-cadence-innovus-power/inputs/.stamp.design.sdc 15-cadence-innovus-power/inputs/.stamp.innovus-foundation-flow 15-cadence-innovus-power/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 15-cadence-innovus-power/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
	$(call 15_cadence_innovus_power_commands_rule)
	touch $@

15-cadence-innovus-power/outputs/.execstamp.design.checkpoint: 15-cadence-innovus-power/.execstamp
	touch $@

endif

# collect outputs

15-cadence-innovus-power/outputs/.stamp.design.checkpoint: 15-cadence-innovus-power/.execstamp 15-cadence-innovus-power/outputs/.execstamp.design.checkpoint
	$(call stamp,15-cadence-innovus-power/outputs/.stamp.design.checkpoint)

# post-conditions

define 15_cadence_innovus_power_post_conditions_commands_rule
	cd 15-cadence-innovus-power && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

15-cadence-innovus-power/.postconditions.stamp: 15-cadence-innovus-power/.execstamp 15-cadence-innovus-power/outputs/.execstamp.design.checkpoint 15-cadence-innovus-power/outputs/.stamp.design.checkpoint
	$(call 15_cadence_innovus_power_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-power

cadence-innovus-power: 15-cadence-innovus-power/.execstamp 15-cadence-innovus-power/.postconditions.stamp 15-cadence-innovus-power/outputs/.execstamp.design.checkpoint 15-cadence-innovus-power/outputs/.stamp.design.checkpoint

.PHONY: 15

15: 15-cadence-innovus-power/.execstamp 15-cadence-innovus-power/.postconditions.stamp 15-cadence-innovus-power/outputs/.execstamp.design.checkpoint 15-cadence-innovus-power/outputs/.stamp.design.checkpoint

# debug

define 15_debug_rule
	cd 15-cadence-innovus-power && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-cadence-innovus-power: 
	$(call 15_debug_rule)

.PHONY: debug-15

debug-15: debug-cadence-innovus-power

# ------------------------------------------------------------------------
# cadence-innovus-place
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 16-cadence-innovus-place/.prebuilt)","")
16-cadence-innovus-place/.stamp: 11-synopsys-dc-synthesis/.execstamp 11-synopsys-dc-synthesis/.postconditions.stamp 11-synopsys-dc-synthesis/outputs/.execstamp.design.namemap 11-synopsys-dc-synthesis/outputs/.execstamp.design.sdc 11-synopsys-dc-synthesis/outputs/.execstamp.design.svf 11-synopsys-dc-synthesis/outputs/.execstamp.design.v 11-synopsys-dc-synthesis/outputs/.stamp.design.namemap 11-synopsys-dc-synthesis/outputs/.stamp.design.sdc 11-synopsys-dc-synthesis/outputs/.stamp.design.svf 11-synopsys-dc-synthesis/outputs/.stamp.design.v
16-cadence-innovus-place/.stamp: 13-cadence-innovus-flowsetup/.execstamp 13-cadence-innovus-flowsetup/.postconditions.stamp 13-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 13-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
16-cadence-innovus-place/.stamp: 15-cadence-innovus-power/.execstamp 15-cadence-innovus-power/.postconditions.stamp 15-cadence-innovus-power/outputs/.execstamp.design.checkpoint 15-cadence-innovus-power/outputs/.stamp.design.checkpoint
16-cadence-innovus-place/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
16-cadence-innovus-place/.stamp: 6-sram/.execstamp 6-sram/.postconditions.stamp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
16-cadence-innovus-place/.stamp:
	$(call cpdir-and-parameterize,16-cadence-innovus-place,../../mflowgen/steps/cadence-innovus-place,16-cadence-innovus-place/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 16-cadence-innovus-place/.prebuilt)","")
16-cadence-innovus-place/inputs/.stamp.adk: 16-cadence-innovus-place/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,16-cadence-innovus-place/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 16-cadence-innovus-place/.prebuilt)","")
16-cadence-innovus-place/inputs/.stamp.design.checkpoint: 16-cadence-innovus-place/.stamp 15-cadence-innovus-power/outputs/.stamp.design.checkpoint
	$(call symlink,16-cadence-innovus-place/inputs,design.checkpoint,../../15-cadence-innovus-power/outputs/design.checkpoint,.stamp.design.checkpoint)
endif

ifeq ("$(wildcard 16-cadence-innovus-place/.prebuilt)","")
16-cadence-innovus-place/inputs/.stamp.design.sdc: 16-cadence-innovus-place/.stamp 11-synopsys-dc-synthesis/outputs/.stamp.design.sdc
	$(call symlink,16-cadence-innovus-place/inputs,design.sdc,../../11-synopsys-dc-synthesis/outputs/design.sdc,.stamp.design.sdc)
endif

ifeq ("$(wildcard 16-cadence-innovus-place/.prebuilt)","")
16-cadence-innovus-place/inputs/.stamp.innovus-foundation-flow: 16-cadence-innovus-place/.stamp 13-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call symlink,16-cadence-innovus-place/inputs,innovus-foundation-flow,../../13-cadence-innovus-flowsetup/outputs/innovus-foundation-flow,.stamp.innovus-foundation-flow)
endif

ifeq ("$(wildcard 16-cadence-innovus-place/.prebuilt)","")
16-cadence-innovus-place/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef: 16-cadence-innovus-place/.stamp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef
	$(call symlink,16-cadence-innovus-place/inputs,sky130_sram_2kbyte_1rw1r_32x512_8.lef,../../6-sram/outputs/sky130_sram_2kbyte_1rw1r_32x512_8.lef,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef)
endif

ifeq ("$(wildcard 16-cadence-innovus-place/.prebuilt)","")
16-cadence-innovus-place/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib: 16-cadence-innovus-place/.stamp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
	$(call symlink,16-cadence-innovus-place/inputs,sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib,../../6-sram/outputs/sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib)
endif

# execute

ifeq ("$(wildcard 16-cadence-innovus-place/.prebuilt)","")

define 16_cadence_innovus_place_commands_rule
	mkdir -p 16-cadence-innovus-place/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-place && chmod +x .mflowgen/16-cadence-innovus-place/mflowgen-run && cp -f .mflowgen/16-cadence-innovus-place/mflowgen-run 16-cadence-innovus-place && if [[ -e .mflowgen/16-cadence-innovus-place/mflowgen-debug ]]; then chmod +x .mflowgen/16-cadence-innovus-place/mflowgen-debug && cp -f .mflowgen/16-cadence-innovus-place/mflowgen-debug 16-cadence-innovus-place; fi && if [[ -e .mflowgen/16-cadence-innovus-place/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/16-cadence-innovus-place/mflowgen-check-preconditions.py && cp -f .mflowgen/16-cadence-innovus-place/mflowgen-check-preconditions.py 16-cadence-innovus-place; fi && if [[ -e .mflowgen/16-cadence-innovus-place/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/16-cadence-innovus-place/mflowgen-check-postconditions.py && cp -f .mflowgen/16-cadence-innovus-place/mflowgen-check-postconditions.py 16-cadence-innovus-place; fi && cd 16-cadence-innovus-place && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 16-cadence-innovus-place/outputs/*
endef

16-cadence-innovus-place/.execstamp: 16-cadence-innovus-place/.stamp 16-cadence-innovus-place/inputs/.stamp.adk 16-cadence-innovus-place/inputs/.stamp.design.checkpoint 16-cadence-innovus-place/inputs/.stamp.design.sdc 16-cadence-innovus-place/inputs/.stamp.innovus-foundation-flow 16-cadence-innovus-place/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 16-cadence-innovus-place/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
	$(call 16_cadence_innovus_place_commands_rule)
	touch $@

16-cadence-innovus-place/outputs/.execstamp.design.checkpoint: 16-cadence-innovus-place/.execstamp
	touch $@

endif

# collect outputs

16-cadence-innovus-place/outputs/.stamp.design.checkpoint: 16-cadence-innovus-place/.execstamp 16-cadence-innovus-place/outputs/.execstamp.design.checkpoint
	$(call stamp,16-cadence-innovus-place/outputs/.stamp.design.checkpoint)

# post-conditions

define 16_cadence_innovus_place_post_conditions_commands_rule
	cd 16-cadence-innovus-place && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

16-cadence-innovus-place/.postconditions.stamp: 16-cadence-innovus-place/.execstamp 16-cadence-innovus-place/outputs/.execstamp.design.checkpoint 16-cadence-innovus-place/outputs/.stamp.design.checkpoint
	$(call 16_cadence_innovus_place_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-place

cadence-innovus-place: 16-cadence-innovus-place/.execstamp 16-cadence-innovus-place/.postconditions.stamp 16-cadence-innovus-place/outputs/.execstamp.design.checkpoint 16-cadence-innovus-place/outputs/.stamp.design.checkpoint

.PHONY: 16

16: 16-cadence-innovus-place/.execstamp 16-cadence-innovus-place/.postconditions.stamp 16-cadence-innovus-place/outputs/.execstamp.design.checkpoint 16-cadence-innovus-place/outputs/.stamp.design.checkpoint

# debug

define 16_debug_rule
	cd 16-cadence-innovus-place && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-cadence-innovus-place: 
	$(call 16_debug_rule)

.PHONY: debug-16

debug-16: debug-cadence-innovus-place

# ------------------------------------------------------------------------
# cadence-innovus-cts
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 17-cadence-innovus-cts/.prebuilt)","")
17-cadence-innovus-cts/.stamp: 11-synopsys-dc-synthesis/.execstamp 11-synopsys-dc-synthesis/.postconditions.stamp 11-synopsys-dc-synthesis/outputs/.execstamp.design.namemap 11-synopsys-dc-synthesis/outputs/.execstamp.design.sdc 11-synopsys-dc-synthesis/outputs/.execstamp.design.svf 11-synopsys-dc-synthesis/outputs/.execstamp.design.v 11-synopsys-dc-synthesis/outputs/.stamp.design.namemap 11-synopsys-dc-synthesis/outputs/.stamp.design.sdc 11-synopsys-dc-synthesis/outputs/.stamp.design.svf 11-synopsys-dc-synthesis/outputs/.stamp.design.v
17-cadence-innovus-cts/.stamp: 13-cadence-innovus-flowsetup/.execstamp 13-cadence-innovus-flowsetup/.postconditions.stamp 13-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 13-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
17-cadence-innovus-cts/.stamp: 16-cadence-innovus-place/.execstamp 16-cadence-innovus-place/.postconditions.stamp 16-cadence-innovus-place/outputs/.execstamp.design.checkpoint 16-cadence-innovus-place/outputs/.stamp.design.checkpoint
17-cadence-innovus-cts/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
17-cadence-innovus-cts/.stamp: 6-sram/.execstamp 6-sram/.postconditions.stamp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
17-cadence-innovus-cts/.stamp:
	$(call cpdir-and-parameterize,17-cadence-innovus-cts,../../mflowgen/steps/cadence-innovus-cts,17-cadence-innovus-cts/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 17-cadence-innovus-cts/.prebuilt)","")
17-cadence-innovus-cts/inputs/.stamp.adk: 17-cadence-innovus-cts/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,17-cadence-innovus-cts/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 17-cadence-innovus-cts/.prebuilt)","")
17-cadence-innovus-cts/inputs/.stamp.design.checkpoint: 17-cadence-innovus-cts/.stamp 16-cadence-innovus-place/outputs/.stamp.design.checkpoint
	$(call symlink,17-cadence-innovus-cts/inputs,design.checkpoint,../../16-cadence-innovus-place/outputs/design.checkpoint,.stamp.design.checkpoint)
endif

ifeq ("$(wildcard 17-cadence-innovus-cts/.prebuilt)","")
17-cadence-innovus-cts/inputs/.stamp.design.sdc: 17-cadence-innovus-cts/.stamp 11-synopsys-dc-synthesis/outputs/.stamp.design.sdc
	$(call symlink,17-cadence-innovus-cts/inputs,design.sdc,../../11-synopsys-dc-synthesis/outputs/design.sdc,.stamp.design.sdc)
endif

ifeq ("$(wildcard 17-cadence-innovus-cts/.prebuilt)","")
17-cadence-innovus-cts/inputs/.stamp.innovus-foundation-flow: 17-cadence-innovus-cts/.stamp 13-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call symlink,17-cadence-innovus-cts/inputs,innovus-foundation-flow,../../13-cadence-innovus-flowsetup/outputs/innovus-foundation-flow,.stamp.innovus-foundation-flow)
endif

ifeq ("$(wildcard 17-cadence-innovus-cts/.prebuilt)","")
17-cadence-innovus-cts/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef: 17-cadence-innovus-cts/.stamp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef
	$(call symlink,17-cadence-innovus-cts/inputs,sky130_sram_2kbyte_1rw1r_32x512_8.lef,../../6-sram/outputs/sky130_sram_2kbyte_1rw1r_32x512_8.lef,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef)
endif

ifeq ("$(wildcard 17-cadence-innovus-cts/.prebuilt)","")
17-cadence-innovus-cts/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib: 17-cadence-innovus-cts/.stamp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
	$(call symlink,17-cadence-innovus-cts/inputs,sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib,../../6-sram/outputs/sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib)
endif

# execute

ifeq ("$(wildcard 17-cadence-innovus-cts/.prebuilt)","")

define 17_cadence_innovus_cts_commands_rule
	mkdir -p 17-cadence-innovus-cts/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-cts && chmod +x .mflowgen/17-cadence-innovus-cts/mflowgen-run && cp -f .mflowgen/17-cadence-innovus-cts/mflowgen-run 17-cadence-innovus-cts && if [[ -e .mflowgen/17-cadence-innovus-cts/mflowgen-debug ]]; then chmod +x .mflowgen/17-cadence-innovus-cts/mflowgen-debug && cp -f .mflowgen/17-cadence-innovus-cts/mflowgen-debug 17-cadence-innovus-cts; fi && if [[ -e .mflowgen/17-cadence-innovus-cts/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/17-cadence-innovus-cts/mflowgen-check-preconditions.py && cp -f .mflowgen/17-cadence-innovus-cts/mflowgen-check-preconditions.py 17-cadence-innovus-cts; fi && if [[ -e .mflowgen/17-cadence-innovus-cts/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/17-cadence-innovus-cts/mflowgen-check-postconditions.py && cp -f .mflowgen/17-cadence-innovus-cts/mflowgen-check-postconditions.py 17-cadence-innovus-cts; fi && cd 17-cadence-innovus-cts && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 17-cadence-innovus-cts/outputs/*
endef

17-cadence-innovus-cts/.execstamp: 17-cadence-innovus-cts/.stamp 17-cadence-innovus-cts/inputs/.stamp.adk 17-cadence-innovus-cts/inputs/.stamp.design.checkpoint 17-cadence-innovus-cts/inputs/.stamp.design.sdc 17-cadence-innovus-cts/inputs/.stamp.innovus-foundation-flow 17-cadence-innovus-cts/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 17-cadence-innovus-cts/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
	$(call 17_cadence_innovus_cts_commands_rule)
	touch $@

17-cadence-innovus-cts/outputs/.execstamp.design.checkpoint: 17-cadence-innovus-cts/.execstamp
	touch $@

endif

# collect outputs

17-cadence-innovus-cts/outputs/.stamp.design.checkpoint: 17-cadence-innovus-cts/.execstamp 17-cadence-innovus-cts/outputs/.execstamp.design.checkpoint
	$(call stamp,17-cadence-innovus-cts/outputs/.stamp.design.checkpoint)

# post-conditions

define 17_cadence_innovus_cts_post_conditions_commands_rule
	cd 17-cadence-innovus-cts && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

17-cadence-innovus-cts/.postconditions.stamp: 17-cadence-innovus-cts/.execstamp 17-cadence-innovus-cts/outputs/.execstamp.design.checkpoint 17-cadence-innovus-cts/outputs/.stamp.design.checkpoint
	$(call 17_cadence_innovus_cts_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-cts

cadence-innovus-cts: 17-cadence-innovus-cts/.execstamp 17-cadence-innovus-cts/.postconditions.stamp 17-cadence-innovus-cts/outputs/.execstamp.design.checkpoint 17-cadence-innovus-cts/outputs/.stamp.design.checkpoint

.PHONY: 17

17: 17-cadence-innovus-cts/.execstamp 17-cadence-innovus-cts/.postconditions.stamp 17-cadence-innovus-cts/outputs/.execstamp.design.checkpoint 17-cadence-innovus-cts/outputs/.stamp.design.checkpoint

# debug

define 17_debug_rule
	cd 17-cadence-innovus-cts && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-cadence-innovus-cts: 
	$(call 17_debug_rule)

.PHONY: debug-17

debug-17: debug-cadence-innovus-cts

# ------------------------------------------------------------------------
# cadence-innovus-postcts_hold
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 18-cadence-innovus-postcts_hold/.prebuilt)","")
18-cadence-innovus-postcts_hold/.stamp: 13-cadence-innovus-flowsetup/.execstamp 13-cadence-innovus-flowsetup/.postconditions.stamp 13-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 13-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
18-cadence-innovus-postcts_hold/.stamp: 17-cadence-innovus-cts/.execstamp 17-cadence-innovus-cts/.postconditions.stamp 17-cadence-innovus-cts/outputs/.execstamp.design.checkpoint 17-cadence-innovus-cts/outputs/.stamp.design.checkpoint
18-cadence-innovus-postcts_hold/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
18-cadence-innovus-postcts_hold/.stamp: 6-sram/.execstamp 6-sram/.postconditions.stamp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
18-cadence-innovus-postcts_hold/.stamp:
	$(call cpdir-and-parameterize,18-cadence-innovus-postcts_hold,../../mflowgen/steps/cadence-innovus-postcts_hold,18-cadence-innovus-postcts_hold/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 18-cadence-innovus-postcts_hold/.prebuilt)","")
18-cadence-innovus-postcts_hold/inputs/.stamp.adk: 18-cadence-innovus-postcts_hold/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,18-cadence-innovus-postcts_hold/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 18-cadence-innovus-postcts_hold/.prebuilt)","")
18-cadence-innovus-postcts_hold/inputs/.stamp.design.checkpoint: 18-cadence-innovus-postcts_hold/.stamp 17-cadence-innovus-cts/outputs/.stamp.design.checkpoint
	$(call symlink,18-cadence-innovus-postcts_hold/inputs,design.checkpoint,../../17-cadence-innovus-cts/outputs/design.checkpoint,.stamp.design.checkpoint)
endif

ifeq ("$(wildcard 18-cadence-innovus-postcts_hold/.prebuilt)","")
18-cadence-innovus-postcts_hold/inputs/.stamp.innovus-foundation-flow: 18-cadence-innovus-postcts_hold/.stamp 13-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call symlink,18-cadence-innovus-postcts_hold/inputs,innovus-foundation-flow,../../13-cadence-innovus-flowsetup/outputs/innovus-foundation-flow,.stamp.innovus-foundation-flow)
endif

ifeq ("$(wildcard 18-cadence-innovus-postcts_hold/.prebuilt)","")
18-cadence-innovus-postcts_hold/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef: 18-cadence-innovus-postcts_hold/.stamp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef
	$(call symlink,18-cadence-innovus-postcts_hold/inputs,sky130_sram_2kbyte_1rw1r_32x512_8.lef,../../6-sram/outputs/sky130_sram_2kbyte_1rw1r_32x512_8.lef,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef)
endif

ifeq ("$(wildcard 18-cadence-innovus-postcts_hold/.prebuilt)","")
18-cadence-innovus-postcts_hold/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib: 18-cadence-innovus-postcts_hold/.stamp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
	$(call symlink,18-cadence-innovus-postcts_hold/inputs,sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib,../../6-sram/outputs/sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib)
endif

# execute

ifeq ("$(wildcard 18-cadence-innovus-postcts_hold/.prebuilt)","")

define 18_cadence_innovus_postcts_hold_commands_rule
	mkdir -p 18-cadence-innovus-postcts_hold/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-postcts_hold && chmod +x .mflowgen/18-cadence-innovus-postcts_hold/mflowgen-run && cp -f .mflowgen/18-cadence-innovus-postcts_hold/mflowgen-run 18-cadence-innovus-postcts_hold && if [[ -e .mflowgen/18-cadence-innovus-postcts_hold/mflowgen-debug ]]; then chmod +x .mflowgen/18-cadence-innovus-postcts_hold/mflowgen-debug && cp -f .mflowgen/18-cadence-innovus-postcts_hold/mflowgen-debug 18-cadence-innovus-postcts_hold; fi && if [[ -e .mflowgen/18-cadence-innovus-postcts_hold/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/18-cadence-innovus-postcts_hold/mflowgen-check-preconditions.py && cp -f .mflowgen/18-cadence-innovus-postcts_hold/mflowgen-check-preconditions.py 18-cadence-innovus-postcts_hold; fi && if [[ -e .mflowgen/18-cadence-innovus-postcts_hold/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/18-cadence-innovus-postcts_hold/mflowgen-check-postconditions.py && cp -f .mflowgen/18-cadence-innovus-postcts_hold/mflowgen-check-postconditions.py 18-cadence-innovus-postcts_hold; fi && cd 18-cadence-innovus-postcts_hold && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 18-cadence-innovus-postcts_hold/outputs/*
endef

18-cadence-innovus-postcts_hold/.execstamp: 18-cadence-innovus-postcts_hold/.stamp 18-cadence-innovus-postcts_hold/inputs/.stamp.adk 18-cadence-innovus-postcts_hold/inputs/.stamp.design.checkpoint 18-cadence-innovus-postcts_hold/inputs/.stamp.innovus-foundation-flow 18-cadence-innovus-postcts_hold/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 18-cadence-innovus-postcts_hold/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
	$(call 18_cadence_innovus_postcts_hold_commands_rule)
	touch $@

18-cadence-innovus-postcts_hold/outputs/.execstamp.design.checkpoint: 18-cadence-innovus-postcts_hold/.execstamp
	touch $@

endif

# collect outputs

18-cadence-innovus-postcts_hold/outputs/.stamp.design.checkpoint: 18-cadence-innovus-postcts_hold/.execstamp 18-cadence-innovus-postcts_hold/outputs/.execstamp.design.checkpoint
	$(call stamp,18-cadence-innovus-postcts_hold/outputs/.stamp.design.checkpoint)

# post-conditions

define 18_cadence_innovus_postcts_hold_post_conditions_commands_rule
	cd 18-cadence-innovus-postcts_hold && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

18-cadence-innovus-postcts_hold/.postconditions.stamp: 18-cadence-innovus-postcts_hold/.execstamp 18-cadence-innovus-postcts_hold/outputs/.execstamp.design.checkpoint 18-cadence-innovus-postcts_hold/outputs/.stamp.design.checkpoint
	$(call 18_cadence_innovus_postcts_hold_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-postcts_hold

cadence-innovus-postcts_hold: 18-cadence-innovus-postcts_hold/.execstamp 18-cadence-innovus-postcts_hold/.postconditions.stamp 18-cadence-innovus-postcts_hold/outputs/.execstamp.design.checkpoint 18-cadence-innovus-postcts_hold/outputs/.stamp.design.checkpoint

.PHONY: 18

18: 18-cadence-innovus-postcts_hold/.execstamp 18-cadence-innovus-postcts_hold/.postconditions.stamp 18-cadence-innovus-postcts_hold/outputs/.execstamp.design.checkpoint 18-cadence-innovus-postcts_hold/outputs/.stamp.design.checkpoint

# debug

define 18_debug_rule
	cd 18-cadence-innovus-postcts_hold && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-cadence-innovus-postcts_hold: 
	$(call 18_debug_rule)

.PHONY: debug-18

debug-18: debug-cadence-innovus-postcts_hold

# ------------------------------------------------------------------------
# cadence-innovus-route
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 19-cadence-innovus-route/.prebuilt)","")
19-cadence-innovus-route/.stamp: 13-cadence-innovus-flowsetup/.execstamp 13-cadence-innovus-flowsetup/.postconditions.stamp 13-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 13-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
19-cadence-innovus-route/.stamp: 18-cadence-innovus-postcts_hold/.execstamp 18-cadence-innovus-postcts_hold/.postconditions.stamp 18-cadence-innovus-postcts_hold/outputs/.execstamp.design.checkpoint 18-cadence-innovus-postcts_hold/outputs/.stamp.design.checkpoint
19-cadence-innovus-route/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
19-cadence-innovus-route/.stamp: 6-sram/.execstamp 6-sram/.postconditions.stamp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
19-cadence-innovus-route/.stamp:
	$(call cpdir-and-parameterize,19-cadence-innovus-route,../../mflowgen/steps/cadence-innovus-route,19-cadence-innovus-route/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 19-cadence-innovus-route/.prebuilt)","")
19-cadence-innovus-route/inputs/.stamp.adk: 19-cadence-innovus-route/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,19-cadence-innovus-route/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 19-cadence-innovus-route/.prebuilt)","")
19-cadence-innovus-route/inputs/.stamp.design.checkpoint: 19-cadence-innovus-route/.stamp 18-cadence-innovus-postcts_hold/outputs/.stamp.design.checkpoint
	$(call symlink,19-cadence-innovus-route/inputs,design.checkpoint,../../18-cadence-innovus-postcts_hold/outputs/design.checkpoint,.stamp.design.checkpoint)
endif

ifeq ("$(wildcard 19-cadence-innovus-route/.prebuilt)","")
19-cadence-innovus-route/inputs/.stamp.innovus-foundation-flow: 19-cadence-innovus-route/.stamp 13-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call symlink,19-cadence-innovus-route/inputs,innovus-foundation-flow,../../13-cadence-innovus-flowsetup/outputs/innovus-foundation-flow,.stamp.innovus-foundation-flow)
endif

ifeq ("$(wildcard 19-cadence-innovus-route/.prebuilt)","")
19-cadence-innovus-route/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef: 19-cadence-innovus-route/.stamp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef
	$(call symlink,19-cadence-innovus-route/inputs,sky130_sram_2kbyte_1rw1r_32x512_8.lef,../../6-sram/outputs/sky130_sram_2kbyte_1rw1r_32x512_8.lef,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef)
endif

ifeq ("$(wildcard 19-cadence-innovus-route/.prebuilt)","")
19-cadence-innovus-route/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib: 19-cadence-innovus-route/.stamp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
	$(call symlink,19-cadence-innovus-route/inputs,sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib,../../6-sram/outputs/sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib)
endif

# execute

ifeq ("$(wildcard 19-cadence-innovus-route/.prebuilt)","")

define 19_cadence_innovus_route_commands_rule
	mkdir -p 19-cadence-innovus-route/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-route && chmod +x .mflowgen/19-cadence-innovus-route/mflowgen-run && cp -f .mflowgen/19-cadence-innovus-route/mflowgen-run 19-cadence-innovus-route && if [[ -e .mflowgen/19-cadence-innovus-route/mflowgen-debug ]]; then chmod +x .mflowgen/19-cadence-innovus-route/mflowgen-debug && cp -f .mflowgen/19-cadence-innovus-route/mflowgen-debug 19-cadence-innovus-route; fi && if [[ -e .mflowgen/19-cadence-innovus-route/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/19-cadence-innovus-route/mflowgen-check-preconditions.py && cp -f .mflowgen/19-cadence-innovus-route/mflowgen-check-preconditions.py 19-cadence-innovus-route; fi && if [[ -e .mflowgen/19-cadence-innovus-route/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/19-cadence-innovus-route/mflowgen-check-postconditions.py && cp -f .mflowgen/19-cadence-innovus-route/mflowgen-check-postconditions.py 19-cadence-innovus-route; fi && cd 19-cadence-innovus-route && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 19-cadence-innovus-route/outputs/*
endef

19-cadence-innovus-route/.execstamp: 19-cadence-innovus-route/.stamp 19-cadence-innovus-route/inputs/.stamp.adk 19-cadence-innovus-route/inputs/.stamp.design.checkpoint 19-cadence-innovus-route/inputs/.stamp.innovus-foundation-flow 19-cadence-innovus-route/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 19-cadence-innovus-route/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
	$(call 19_cadence_innovus_route_commands_rule)
	touch $@

19-cadence-innovus-route/outputs/.execstamp.design.checkpoint: 19-cadence-innovus-route/.execstamp
	touch $@

endif

# collect outputs

19-cadence-innovus-route/outputs/.stamp.design.checkpoint: 19-cadence-innovus-route/.execstamp 19-cadence-innovus-route/outputs/.execstamp.design.checkpoint
	$(call stamp,19-cadence-innovus-route/outputs/.stamp.design.checkpoint)

# post-conditions

define 19_cadence_innovus_route_post_conditions_commands_rule
	cd 19-cadence-innovus-route && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

19-cadence-innovus-route/.postconditions.stamp: 19-cadence-innovus-route/.execstamp 19-cadence-innovus-route/outputs/.execstamp.design.checkpoint 19-cadence-innovus-route/outputs/.stamp.design.checkpoint
	$(call 19_cadence_innovus_route_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-route

cadence-innovus-route: 19-cadence-innovus-route/.execstamp 19-cadence-innovus-route/.postconditions.stamp 19-cadence-innovus-route/outputs/.execstamp.design.checkpoint 19-cadence-innovus-route/outputs/.stamp.design.checkpoint

.PHONY: 19

19: 19-cadence-innovus-route/.execstamp 19-cadence-innovus-route/.postconditions.stamp 19-cadence-innovus-route/outputs/.execstamp.design.checkpoint 19-cadence-innovus-route/outputs/.stamp.design.checkpoint

# debug

define 19_debug_rule
	cd 19-cadence-innovus-route && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-cadence-innovus-route: 
	$(call 19_debug_rule)

.PHONY: debug-19

debug-19: debug-cadence-innovus-route

# ------------------------------------------------------------------------
# cadence-innovus-postroute
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 20-cadence-innovus-postroute/.prebuilt)","")
20-cadence-innovus-postroute/.stamp: 13-cadence-innovus-flowsetup/.execstamp 13-cadence-innovus-flowsetup/.postconditions.stamp 13-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 13-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
20-cadence-innovus-postroute/.stamp: 19-cadence-innovus-route/.execstamp 19-cadence-innovus-route/.postconditions.stamp 19-cadence-innovus-route/outputs/.execstamp.design.checkpoint 19-cadence-innovus-route/outputs/.stamp.design.checkpoint
20-cadence-innovus-postroute/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
20-cadence-innovus-postroute/.stamp: 6-sram/.execstamp 6-sram/.postconditions.stamp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
20-cadence-innovus-postroute/.stamp:
	$(call cpdir-and-parameterize,20-cadence-innovus-postroute,../../mflowgen/steps/cadence-innovus-postroute,20-cadence-innovus-postroute/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 20-cadence-innovus-postroute/.prebuilt)","")
20-cadence-innovus-postroute/inputs/.stamp.adk: 20-cadence-innovus-postroute/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,20-cadence-innovus-postroute/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 20-cadence-innovus-postroute/.prebuilt)","")
20-cadence-innovus-postroute/inputs/.stamp.design.checkpoint: 20-cadence-innovus-postroute/.stamp 19-cadence-innovus-route/outputs/.stamp.design.checkpoint
	$(call symlink,20-cadence-innovus-postroute/inputs,design.checkpoint,../../19-cadence-innovus-route/outputs/design.checkpoint,.stamp.design.checkpoint)
endif

ifeq ("$(wildcard 20-cadence-innovus-postroute/.prebuilt)","")
20-cadence-innovus-postroute/inputs/.stamp.innovus-foundation-flow: 20-cadence-innovus-postroute/.stamp 13-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call symlink,20-cadence-innovus-postroute/inputs,innovus-foundation-flow,../../13-cadence-innovus-flowsetup/outputs/innovus-foundation-flow,.stamp.innovus-foundation-flow)
endif

ifeq ("$(wildcard 20-cadence-innovus-postroute/.prebuilt)","")
20-cadence-innovus-postroute/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef: 20-cadence-innovus-postroute/.stamp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef
	$(call symlink,20-cadence-innovus-postroute/inputs,sky130_sram_2kbyte_1rw1r_32x512_8.lef,../../6-sram/outputs/sky130_sram_2kbyte_1rw1r_32x512_8.lef,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef)
endif

ifeq ("$(wildcard 20-cadence-innovus-postroute/.prebuilt)","")
20-cadence-innovus-postroute/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib: 20-cadence-innovus-postroute/.stamp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
	$(call symlink,20-cadence-innovus-postroute/inputs,sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib,../../6-sram/outputs/sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib)
endif

# execute

ifeq ("$(wildcard 20-cadence-innovus-postroute/.prebuilt)","")

define 20_cadence_innovus_postroute_commands_rule
	mkdir -p 20-cadence-innovus-postroute/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-postroute && chmod +x .mflowgen/20-cadence-innovus-postroute/mflowgen-run && cp -f .mflowgen/20-cadence-innovus-postroute/mflowgen-run 20-cadence-innovus-postroute && if [[ -e .mflowgen/20-cadence-innovus-postroute/mflowgen-debug ]]; then chmod +x .mflowgen/20-cadence-innovus-postroute/mflowgen-debug && cp -f .mflowgen/20-cadence-innovus-postroute/mflowgen-debug 20-cadence-innovus-postroute; fi && if [[ -e .mflowgen/20-cadence-innovus-postroute/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/20-cadence-innovus-postroute/mflowgen-check-preconditions.py && cp -f .mflowgen/20-cadence-innovus-postroute/mflowgen-check-preconditions.py 20-cadence-innovus-postroute; fi && if [[ -e .mflowgen/20-cadence-innovus-postroute/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/20-cadence-innovus-postroute/mflowgen-check-postconditions.py && cp -f .mflowgen/20-cadence-innovus-postroute/mflowgen-check-postconditions.py 20-cadence-innovus-postroute; fi && cd 20-cadence-innovus-postroute && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 20-cadence-innovus-postroute/outputs/*
endef

20-cadence-innovus-postroute/.execstamp: 20-cadence-innovus-postroute/.stamp 20-cadence-innovus-postroute/inputs/.stamp.adk 20-cadence-innovus-postroute/inputs/.stamp.design.checkpoint 20-cadence-innovus-postroute/inputs/.stamp.innovus-foundation-flow 20-cadence-innovus-postroute/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 20-cadence-innovus-postroute/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
	$(call 20_cadence_innovus_postroute_commands_rule)
	touch $@

20-cadence-innovus-postroute/outputs/.execstamp.design.checkpoint: 20-cadence-innovus-postroute/.execstamp
	touch $@

endif

# collect outputs

20-cadence-innovus-postroute/outputs/.stamp.design.checkpoint: 20-cadence-innovus-postroute/.execstamp 20-cadence-innovus-postroute/outputs/.execstamp.design.checkpoint
	$(call stamp,20-cadence-innovus-postroute/outputs/.stamp.design.checkpoint)

# post-conditions

define 20_cadence_innovus_postroute_post_conditions_commands_rule
	cd 20-cadence-innovus-postroute && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

20-cadence-innovus-postroute/.postconditions.stamp: 20-cadence-innovus-postroute/.execstamp 20-cadence-innovus-postroute/outputs/.execstamp.design.checkpoint 20-cadence-innovus-postroute/outputs/.stamp.design.checkpoint
	$(call 20_cadence_innovus_postroute_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-postroute

cadence-innovus-postroute: 20-cadence-innovus-postroute/.execstamp 20-cadence-innovus-postroute/.postconditions.stamp 20-cadence-innovus-postroute/outputs/.execstamp.design.checkpoint 20-cadence-innovus-postroute/outputs/.stamp.design.checkpoint

.PHONY: 20

20: 20-cadence-innovus-postroute/.execstamp 20-cadence-innovus-postroute/.postconditions.stamp 20-cadence-innovus-postroute/outputs/.execstamp.design.checkpoint 20-cadence-innovus-postroute/outputs/.stamp.design.checkpoint

# debug

define 20_debug_rule
	cd 20-cadence-innovus-postroute && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-cadence-innovus-postroute: 
	$(call 20_debug_rule)

.PHONY: debug-20

debug-20: debug-cadence-innovus-postroute

# ------------------------------------------------------------------------
# cadence-innovus-signoff
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 21-cadence-innovus-signoff/.prebuilt)","")
21-cadence-innovus-signoff/.stamp: 13-cadence-innovus-flowsetup/.execstamp 13-cadence-innovus-flowsetup/.postconditions.stamp 13-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 13-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
21-cadence-innovus-signoff/.stamp: 20-cadence-innovus-postroute/.execstamp 20-cadence-innovus-postroute/.postconditions.stamp 20-cadence-innovus-postroute/outputs/.execstamp.design.checkpoint 20-cadence-innovus-postroute/outputs/.stamp.design.checkpoint
21-cadence-innovus-signoff/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
21-cadence-innovus-signoff/.stamp: 6-sram/.execstamp 6-sram/.postconditions.stamp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
21-cadence-innovus-signoff/.stamp:
	$(call cpdir-and-parameterize,21-cadence-innovus-signoff,../design/cadence-innovus-signoff,21-cadence-innovus-signoff/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 21-cadence-innovus-signoff/.prebuilt)","")
21-cadence-innovus-signoff/inputs/.stamp.adk: 21-cadence-innovus-signoff/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,21-cadence-innovus-signoff/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 21-cadence-innovus-signoff/.prebuilt)","")
21-cadence-innovus-signoff/inputs/.stamp.design.checkpoint: 21-cadence-innovus-signoff/.stamp 20-cadence-innovus-postroute/outputs/.stamp.design.checkpoint
	$(call symlink,21-cadence-innovus-signoff/inputs,design.checkpoint,../../20-cadence-innovus-postroute/outputs/design.checkpoint,.stamp.design.checkpoint)
endif

ifeq ("$(wildcard 21-cadence-innovus-signoff/.prebuilt)","")
21-cadence-innovus-signoff/inputs/.stamp.innovus-foundation-flow: 21-cadence-innovus-signoff/.stamp 13-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call symlink,21-cadence-innovus-signoff/inputs,innovus-foundation-flow,../../13-cadence-innovus-flowsetup/outputs/innovus-foundation-flow,.stamp.innovus-foundation-flow)
endif

ifeq ("$(wildcard 21-cadence-innovus-signoff/.prebuilt)","")
21-cadence-innovus-signoff/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef: 21-cadence-innovus-signoff/.stamp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef
	$(call symlink,21-cadence-innovus-signoff/inputs,sky130_sram_2kbyte_1rw1r_32x512_8.lef,../../6-sram/outputs/sky130_sram_2kbyte_1rw1r_32x512_8.lef,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef)
endif

ifeq ("$(wildcard 21-cadence-innovus-signoff/.prebuilt)","")
21-cadence-innovus-signoff/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib: 21-cadence-innovus-signoff/.stamp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
	$(call symlink,21-cadence-innovus-signoff/inputs,sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib,../../6-sram/outputs/sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib)
endif

# execute

ifeq ("$(wildcard 21-cadence-innovus-signoff/.prebuilt)","")

define 21_cadence_innovus_signoff_commands_rule
	mkdir -p 21-cadence-innovus-signoff/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-signoff && chmod +x .mflowgen/21-cadence-innovus-signoff/mflowgen-run && cp -f .mflowgen/21-cadence-innovus-signoff/mflowgen-run 21-cadence-innovus-signoff && if [[ -e .mflowgen/21-cadence-innovus-signoff/mflowgen-debug ]]; then chmod +x .mflowgen/21-cadence-innovus-signoff/mflowgen-debug && cp -f .mflowgen/21-cadence-innovus-signoff/mflowgen-debug 21-cadence-innovus-signoff; fi && if [[ -e .mflowgen/21-cadence-innovus-signoff/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/21-cadence-innovus-signoff/mflowgen-check-preconditions.py && cp -f .mflowgen/21-cadence-innovus-signoff/mflowgen-check-preconditions.py 21-cadence-innovus-signoff; fi && if [[ -e .mflowgen/21-cadence-innovus-signoff/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/21-cadence-innovus-signoff/mflowgen-check-postconditions.py && cp -f .mflowgen/21-cadence-innovus-signoff/mflowgen-check-postconditions.py 21-cadence-innovus-signoff; fi && cd 21-cadence-innovus-signoff && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 21-cadence-innovus-signoff/outputs/*
endef

21-cadence-innovus-signoff/.execstamp: 21-cadence-innovus-signoff/.stamp 21-cadence-innovus-signoff/inputs/.stamp.adk 21-cadence-innovus-signoff/inputs/.stamp.design.checkpoint 21-cadence-innovus-signoff/inputs/.stamp.innovus-foundation-flow 21-cadence-innovus-signoff/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 21-cadence-innovus-signoff/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
	$(call 21_cadence_innovus_signoff_commands_rule)
	touch $@

21-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint: 21-cadence-innovus-signoff/.execstamp
	touch $@
21-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz: 21-cadence-innovus-signoff/.execstamp
	touch $@
21-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds: 21-cadence-innovus-signoff/.execstamp
	touch $@
21-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v: 21-cadence-innovus-signoff/.execstamp
	touch $@
21-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v: 21-cadence-innovus-signoff/.execstamp
	touch $@
21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v: 21-cadence-innovus-signoff/.execstamp
	touch $@
21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v: 21-cadence-innovus-signoff/.execstamp
	touch $@
21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v: 21-cadence-innovus-signoff/.execstamp
	touch $@
21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v: 21-cadence-innovus-signoff/.execstamp
	touch $@
21-cadence-innovus-signoff/outputs/.execstamp.design.lef: 21-cadence-innovus-signoff/.execstamp
	touch $@
21-cadence-innovus-signoff/outputs/.execstamp.design.def.gz: 21-cadence-innovus-signoff/.execstamp
	touch $@
21-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc: 21-cadence-innovus-signoff/.execstamp
	touch $@
21-cadence-innovus-signoff/outputs/.execstamp.design.sdf: 21-cadence-innovus-signoff/.execstamp
	touch $@
21-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v: 21-cadence-innovus-signoff/.execstamp
	touch $@
21-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz: 21-cadence-innovus-signoff/.execstamp
	touch $@
21-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz: 21-cadence-innovus-signoff/.execstamp
	touch $@

endif

# collect outputs

21-cadence-innovus-signoff/outputs/.stamp.design.checkpoint: 21-cadence-innovus-signoff/.execstamp 21-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.lef 21-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.sdf 21-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,21-cadence-innovus-signoff/outputs/.stamp.design.checkpoint)

21-cadence-innovus-signoff/outputs/.stamp.design.gds.gz: 21-cadence-innovus-signoff/.execstamp 21-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.lef 21-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.sdf 21-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,21-cadence-innovus-signoff/outputs/.stamp.design.gds.gz)

21-cadence-innovus-signoff/outputs/.stamp.design-merged.gds: 21-cadence-innovus-signoff/.execstamp 21-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.lef 21-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.sdf 21-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,21-cadence-innovus-signoff/outputs/.stamp.design-merged.gds)

21-cadence-innovus-signoff/outputs/.stamp.design.lvs.v: 21-cadence-innovus-signoff/.execstamp 21-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.lef 21-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.sdf 21-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,21-cadence-innovus-signoff/outputs/.stamp.design.lvs.v)

21-cadence-innovus-signoff/outputs/.stamp.design.flatbuslvs.v: 21-cadence-innovus-signoff/.execstamp 21-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.lef 21-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.sdf 21-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,21-cadence-innovus-signoff/outputs/.stamp.design.flatbuslvs.v)

21-cadence-innovus-signoff/outputs/.stamp.design.nofillerlvs.v: 21-cadence-innovus-signoff/.execstamp 21-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.lef 21-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.sdf 21-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,21-cadence-innovus-signoff/outputs/.stamp.design.nofillerlvs.v)

21-cadence-innovus-signoff/outputs/.stamp.design.nofillerflatbuslvs.v: 21-cadence-innovus-signoff/.execstamp 21-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.lef 21-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.sdf 21-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,21-cadence-innovus-signoff/outputs/.stamp.design.nofillerflatbuslvs.v)

21-cadence-innovus-signoff/outputs/.stamp.design.vcs.v: 21-cadence-innovus-signoff/.execstamp 21-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.lef 21-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.sdf 21-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,21-cadence-innovus-signoff/outputs/.stamp.design.vcs.v)

21-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v: 21-cadence-innovus-signoff/.execstamp 21-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.lef 21-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.sdf 21-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,21-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v)

21-cadence-innovus-signoff/outputs/.stamp.design.lef: 21-cadence-innovus-signoff/.execstamp 21-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.lef 21-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.sdf 21-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,21-cadence-innovus-signoff/outputs/.stamp.design.lef)

21-cadence-innovus-signoff/outputs/.stamp.design.def.gz: 21-cadence-innovus-signoff/.execstamp 21-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.lef 21-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.sdf 21-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,21-cadence-innovus-signoff/outputs/.stamp.design.def.gz)

21-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc: 21-cadence-innovus-signoff/.execstamp 21-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.lef 21-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.sdf 21-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,21-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc)

21-cadence-innovus-signoff/outputs/.stamp.design.sdf: 21-cadence-innovus-signoff/.execstamp 21-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.lef 21-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.sdf 21-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,21-cadence-innovus-signoff/outputs/.stamp.design.sdf)

21-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v: 21-cadence-innovus-signoff/.execstamp 21-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.lef 21-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.sdf 21-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,21-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v)

21-cadence-innovus-signoff/outputs/.stamp.design.spef.gz: 21-cadence-innovus-signoff/.execstamp 21-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.lef 21-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.sdf 21-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,21-cadence-innovus-signoff/outputs/.stamp.design.spef.gz)

21-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz: 21-cadence-innovus-signoff/.execstamp 21-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.lef 21-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.sdf 21-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,21-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz)

# post-conditions

define 21_cadence_innovus_signoff_post_conditions_commands_rule
	cd 21-cadence-innovus-signoff && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

21-cadence-innovus-signoff/.postconditions.stamp: 21-cadence-innovus-signoff/.execstamp 21-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.lef 21-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.sdf 21-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 21-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.stamp.design.def.gz 21-cadence-innovus-signoff/outputs/.stamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.stamp.design.lef 21-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.stamp.design.sdf 21-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
	$(call 21_cadence_innovus_signoff_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-signoff

cadence-innovus-signoff: 21-cadence-innovus-signoff/.execstamp 21-cadence-innovus-signoff/.postconditions.stamp 21-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.lef 21-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.sdf 21-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 21-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.stamp.design.def.gz 21-cadence-innovus-signoff/outputs/.stamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.stamp.design.lef 21-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.stamp.design.sdf 21-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v

.PHONY: 21

21: 21-cadence-innovus-signoff/.execstamp 21-cadence-innovus-signoff/.postconditions.stamp 21-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.lef 21-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.sdf 21-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 21-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.stamp.design.def.gz 21-cadence-innovus-signoff/outputs/.stamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.stamp.design.lef 21-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.stamp.design.sdf 21-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v

# debug

define 21_debug_rule
	cd 21-cadence-innovus-signoff && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-cadence-innovus-signoff: 
	$(call 21_debug_rule)

.PHONY: debug-21

debug-21: debug-cadence-innovus-signoff

# ------------------------------------------------------------------------
# mentor-calibre-gdsmerge
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 22-mentor-calibre-gdsmerge/.prebuilt)","")
22-mentor-calibre-gdsmerge/.stamp: 21-cadence-innovus-signoff/.execstamp 21-cadence-innovus-signoff/.postconditions.stamp 21-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.lef 21-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.sdf 21-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 21-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.stamp.design.def.gz 21-cadence-innovus-signoff/outputs/.stamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.stamp.design.lef 21-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.stamp.design.sdf 21-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
22-mentor-calibre-gdsmerge/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
22-mentor-calibre-gdsmerge/.stamp: 6-sram/.execstamp 6-sram/.postconditions.stamp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
22-mentor-calibre-gdsmerge/.stamp:
	$(call cpdir-and-parameterize,22-mentor-calibre-gdsmerge,../../mflowgen/steps/mentor-calibre-gdsmerge,22-mentor-calibre-gdsmerge/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 22-mentor-calibre-gdsmerge/.prebuilt)","")
22-mentor-calibre-gdsmerge/inputs/.stamp.adk: 22-mentor-calibre-gdsmerge/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,22-mentor-calibre-gdsmerge/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 22-mentor-calibre-gdsmerge/.prebuilt)","")
22-mentor-calibre-gdsmerge/inputs/.stamp.design.gds.gz: 22-mentor-calibre-gdsmerge/.stamp 21-cadence-innovus-signoff/outputs/.stamp.design.gds.gz
	$(call symlink,22-mentor-calibre-gdsmerge/inputs,design.gds.gz,../../21-cadence-innovus-signoff/outputs/design.gds.gz,.stamp.design.gds.gz)
endif

ifeq ("$(wildcard 22-mentor-calibre-gdsmerge/.prebuilt)","")
22-mentor-calibre-gdsmerge/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds: 22-mentor-calibre-gdsmerge/.stamp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds
	$(call symlink,22-mentor-calibre-gdsmerge/inputs,sky130_sram_2kbyte_1rw1r_32x512_8.gds,../../6-sram/outputs/sky130_sram_2kbyte_1rw1r_32x512_8.gds,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds)
endif

# execute

ifeq ("$(wildcard 22-mentor-calibre-gdsmerge/.prebuilt)","")

define 22_mentor_calibre_gdsmerge_commands_rule
	mkdir -p 22-mentor-calibre-gdsmerge/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t mentor-calibre-gdsmerge && chmod +x .mflowgen/22-mentor-calibre-gdsmerge/mflowgen-run && cp -f .mflowgen/22-mentor-calibre-gdsmerge/mflowgen-run 22-mentor-calibre-gdsmerge && if [[ -e .mflowgen/22-mentor-calibre-gdsmerge/mflowgen-debug ]]; then chmod +x .mflowgen/22-mentor-calibre-gdsmerge/mflowgen-debug && cp -f .mflowgen/22-mentor-calibre-gdsmerge/mflowgen-debug 22-mentor-calibre-gdsmerge; fi && if [[ -e .mflowgen/22-mentor-calibre-gdsmerge/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/22-mentor-calibre-gdsmerge/mflowgen-check-preconditions.py && cp -f .mflowgen/22-mentor-calibre-gdsmerge/mflowgen-check-preconditions.py 22-mentor-calibre-gdsmerge; fi && if [[ -e .mflowgen/22-mentor-calibre-gdsmerge/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/22-mentor-calibre-gdsmerge/mflowgen-check-postconditions.py && cp -f .mflowgen/22-mentor-calibre-gdsmerge/mflowgen-check-postconditions.py 22-mentor-calibre-gdsmerge; fi && cd 22-mentor-calibre-gdsmerge && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 22-mentor-calibre-gdsmerge/outputs/*
endef

22-mentor-calibre-gdsmerge/.execstamp: 22-mentor-calibre-gdsmerge/.stamp 22-mentor-calibre-gdsmerge/inputs/.stamp.adk 22-mentor-calibre-gdsmerge/inputs/.stamp.design.gds.gz 22-mentor-calibre-gdsmerge/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds
	$(call 22_mentor_calibre_gdsmerge_commands_rule)
	touch $@

22-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds: 22-mentor-calibre-gdsmerge/.execstamp
	touch $@

endif

# collect outputs

22-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds: 22-mentor-calibre-gdsmerge/.execstamp 22-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds
	$(call stamp,22-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds)

# post-conditions

define 22_mentor_calibre_gdsmerge_post_conditions_commands_rule
	cd 22-mentor-calibre-gdsmerge && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

22-mentor-calibre-gdsmerge/.postconditions.stamp: 22-mentor-calibre-gdsmerge/.execstamp 22-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 22-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
	$(call 22_mentor_calibre_gdsmerge_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: mentor-calibre-gdsmerge

mentor-calibre-gdsmerge: 22-mentor-calibre-gdsmerge/.execstamp 22-mentor-calibre-gdsmerge/.postconditions.stamp 22-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 22-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds

.PHONY: 22

22: 22-mentor-calibre-gdsmerge/.execstamp 22-mentor-calibre-gdsmerge/.postconditions.stamp 22-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 22-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds

# debug

define 22_debug_rule
	cd 22-mentor-calibre-gdsmerge && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-mentor-calibre-gdsmerge: 
	$(call 22_debug_rule)

.PHONY: debug-22

debug-22: debug-mentor-calibre-gdsmerge

# ------------------------------------------------------------------------
# open-magic-def2spice
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 23-open-magic-def2spice/.prebuilt)","")
23-open-magic-def2spice/.stamp: 21-cadence-innovus-signoff/.execstamp 21-cadence-innovus-signoff/.postconditions.stamp 21-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.lef 21-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.sdf 21-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 21-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.stamp.design.def.gz 21-cadence-innovus-signoff/outputs/.stamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.stamp.design.lef 21-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.stamp.design.sdf 21-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
23-open-magic-def2spice/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
23-open-magic-def2spice/.stamp: 6-sram/.execstamp 6-sram/.postconditions.stamp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
23-open-magic-def2spice/.stamp:
	$(call cpdir-and-parameterize,23-open-magic-def2spice,../design/open-magic-def2spice,23-open-magic-def2spice/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 23-open-magic-def2spice/.prebuilt)","")
23-open-magic-def2spice/inputs/.stamp.adk: 23-open-magic-def2spice/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,23-open-magic-def2spice/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 23-open-magic-def2spice/.prebuilt)","")
23-open-magic-def2spice/inputs/.stamp.design.def.gz: 23-open-magic-def2spice/.stamp 21-cadence-innovus-signoff/outputs/.stamp.design.def.gz
	$(call symlink,23-open-magic-def2spice/inputs,design.def.gz,../../21-cadence-innovus-signoff/outputs/design.def.gz,.stamp.design.def.gz)
endif

ifeq ("$(wildcard 23-open-magic-def2spice/.prebuilt)","")
23-open-magic-def2spice/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef: 23-open-magic-def2spice/.stamp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef
	$(call symlink,23-open-magic-def2spice/inputs,sky130_sram_2kbyte_1rw1r_32x512_8.lef,../../6-sram/outputs/sky130_sram_2kbyte_1rw1r_32x512_8.lef,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef)
endif

# execute

ifeq ("$(wildcard 23-open-magic-def2spice/.prebuilt)","")

define 23_open_magic_def2spice_commands_rule
	mkdir -p 23-open-magic-def2spice/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-def2spice && chmod +x .mflowgen/23-open-magic-def2spice/mflowgen-run && cp -f .mflowgen/23-open-magic-def2spice/mflowgen-run 23-open-magic-def2spice && if [[ -e .mflowgen/23-open-magic-def2spice/mflowgen-debug ]]; then chmod +x .mflowgen/23-open-magic-def2spice/mflowgen-debug && cp -f .mflowgen/23-open-magic-def2spice/mflowgen-debug 23-open-magic-def2spice; fi && if [[ -e .mflowgen/23-open-magic-def2spice/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/23-open-magic-def2spice/mflowgen-check-preconditions.py && cp -f .mflowgen/23-open-magic-def2spice/mflowgen-check-preconditions.py 23-open-magic-def2spice; fi && if [[ -e .mflowgen/23-open-magic-def2spice/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/23-open-magic-def2spice/mflowgen-check-postconditions.py && cp -f .mflowgen/23-open-magic-def2spice/mflowgen-check-postconditions.py 23-open-magic-def2spice; fi && cd 23-open-magic-def2spice && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 23-open-magic-def2spice/outputs/*
endef

23-open-magic-def2spice/.execstamp: 23-open-magic-def2spice/.stamp 23-open-magic-def2spice/inputs/.stamp.adk 23-open-magic-def2spice/inputs/.stamp.design.def.gz 23-open-magic-def2spice/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef
	$(call 23_open_magic_def2spice_commands_rule)
	touch $@

23-open-magic-def2spice/outputs/.execstamp.design_extracted.spice: 23-open-magic-def2spice/.execstamp
	touch $@

endif

# collect outputs

23-open-magic-def2spice/outputs/.stamp.design_extracted.spice: 23-open-magic-def2spice/.execstamp 23-open-magic-def2spice/outputs/.execstamp.design_extracted.spice
	$(call stamp,23-open-magic-def2spice/outputs/.stamp.design_extracted.spice)

# post-conditions

define 23_open_magic_def2spice_post_conditions_commands_rule
	cd 23-open-magic-def2spice && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

23-open-magic-def2spice/.postconditions.stamp: 23-open-magic-def2spice/.execstamp 23-open-magic-def2spice/outputs/.execstamp.design_extracted.spice 23-open-magic-def2spice/outputs/.stamp.design_extracted.spice
	$(call 23_open_magic_def2spice_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: open-magic-def2spice

open-magic-def2spice: 23-open-magic-def2spice/.execstamp 23-open-magic-def2spice/.postconditions.stamp 23-open-magic-def2spice/outputs/.execstamp.design_extracted.spice 23-open-magic-def2spice/outputs/.stamp.design_extracted.spice

.PHONY: 23

23: 23-open-magic-def2spice/.execstamp 23-open-magic-def2spice/.postconditions.stamp 23-open-magic-def2spice/outputs/.execstamp.design_extracted.spice 23-open-magic-def2spice/outputs/.stamp.design_extracted.spice

# debug

# ------------------------------------------------------------------------
# synopsys-pt-timing-signoff
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 24-synopsys-pt-timing-signoff/.prebuilt)","")
24-synopsys-pt-timing-signoff/.stamp: 21-cadence-innovus-signoff/.execstamp 21-cadence-innovus-signoff/.postconditions.stamp 21-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.lef 21-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.sdf 21-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 21-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.stamp.design.def.gz 21-cadence-innovus-signoff/outputs/.stamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.stamp.design.lef 21-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.stamp.design.sdf 21-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
24-synopsys-pt-timing-signoff/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
24-synopsys-pt-timing-signoff/.stamp: 6-sram/.execstamp 6-sram/.postconditions.stamp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
24-synopsys-pt-timing-signoff/.stamp:
	$(call cpdir-and-parameterize,24-synopsys-pt-timing-signoff,../../mflowgen/steps/synopsys-pt-timing-signoff,24-synopsys-pt-timing-signoff/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 24-synopsys-pt-timing-signoff/.prebuilt)","")
24-synopsys-pt-timing-signoff/inputs/.stamp.adk: 24-synopsys-pt-timing-signoff/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,24-synopsys-pt-timing-signoff/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 24-synopsys-pt-timing-signoff/.prebuilt)","")
24-synopsys-pt-timing-signoff/inputs/.stamp.design.pt.sdc: 24-synopsys-pt-timing-signoff/.stamp 21-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc
	$(call symlink,24-synopsys-pt-timing-signoff/inputs,design.pt.sdc,../../21-cadence-innovus-signoff/outputs/design.pt.sdc,.stamp.design.pt.sdc)
endif

ifeq ("$(wildcard 24-synopsys-pt-timing-signoff/.prebuilt)","")
24-synopsys-pt-timing-signoff/inputs/.stamp.design.spef.gz: 24-synopsys-pt-timing-signoff/.stamp 21-cadence-innovus-signoff/outputs/.stamp.design.spef.gz
	$(call symlink,24-synopsys-pt-timing-signoff/inputs,design.spef.gz,../../21-cadence-innovus-signoff/outputs/design.spef.gz,.stamp.design.spef.gz)
endif

ifeq ("$(wildcard 24-synopsys-pt-timing-signoff/.prebuilt)","")
24-synopsys-pt-timing-signoff/inputs/.stamp.design.vcs.v: 24-synopsys-pt-timing-signoff/.stamp 21-cadence-innovus-signoff/outputs/.stamp.design.vcs.v
	$(call symlink,24-synopsys-pt-timing-signoff/inputs,design.vcs.v,../../21-cadence-innovus-signoff/outputs/design.vcs.v,.stamp.design.vcs.v)
endif

ifeq ("$(wildcard 24-synopsys-pt-timing-signoff/.prebuilt)","")
24-synopsys-pt-timing-signoff/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db: 24-synopsys-pt-timing-signoff/.stamp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db
	$(call symlink,24-synopsys-pt-timing-signoff/inputs,sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db,../../6-sram/outputs/sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db)
endif

# execute

ifeq ("$(wildcard 24-synopsys-pt-timing-signoff/.prebuilt)","")

define 24_synopsys_pt_timing_signoff_commands_rule
	mkdir -p 24-synopsys-pt-timing-signoff/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t synopsys-pt-timing-signoff && chmod +x .mflowgen/24-synopsys-pt-timing-signoff/mflowgen-run && cp -f .mflowgen/24-synopsys-pt-timing-signoff/mflowgen-run 24-synopsys-pt-timing-signoff && if [[ -e .mflowgen/24-synopsys-pt-timing-signoff/mflowgen-debug ]]; then chmod +x .mflowgen/24-synopsys-pt-timing-signoff/mflowgen-debug && cp -f .mflowgen/24-synopsys-pt-timing-signoff/mflowgen-debug 24-synopsys-pt-timing-signoff; fi && if [[ -e .mflowgen/24-synopsys-pt-timing-signoff/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/24-synopsys-pt-timing-signoff/mflowgen-check-preconditions.py && cp -f .mflowgen/24-synopsys-pt-timing-signoff/mflowgen-check-preconditions.py 24-synopsys-pt-timing-signoff; fi && if [[ -e .mflowgen/24-synopsys-pt-timing-signoff/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/24-synopsys-pt-timing-signoff/mflowgen-check-postconditions.py && cp -f .mflowgen/24-synopsys-pt-timing-signoff/mflowgen-check-postconditions.py 24-synopsys-pt-timing-signoff; fi && cd 24-synopsys-pt-timing-signoff && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 24-synopsys-pt-timing-signoff/outputs/*
endef

24-synopsys-pt-timing-signoff/.execstamp: 24-synopsys-pt-timing-signoff/.stamp 24-synopsys-pt-timing-signoff/inputs/.stamp.adk 24-synopsys-pt-timing-signoff/inputs/.stamp.design.pt.sdc 24-synopsys-pt-timing-signoff/inputs/.stamp.design.spef.gz 24-synopsys-pt-timing-signoff/inputs/.stamp.design.vcs.v 24-synopsys-pt-timing-signoff/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db
	$(call 24_synopsys_pt_timing_signoff_commands_rule)
	touch $@

24-synopsys-pt-timing-signoff/outputs/.execstamp.design.sdf: 24-synopsys-pt-timing-signoff/.execstamp
	touch $@

endif

# collect outputs

24-synopsys-pt-timing-signoff/outputs/.stamp.design.sdf: 24-synopsys-pt-timing-signoff/.execstamp 24-synopsys-pt-timing-signoff/outputs/.execstamp.design.sdf
	$(call stamp,24-synopsys-pt-timing-signoff/outputs/.stamp.design.sdf)

# post-conditions

define 24_synopsys_pt_timing_signoff_post_conditions_commands_rule
	cd 24-synopsys-pt-timing-signoff && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

24-synopsys-pt-timing-signoff/.postconditions.stamp: 24-synopsys-pt-timing-signoff/.execstamp 24-synopsys-pt-timing-signoff/outputs/.execstamp.design.sdf 24-synopsys-pt-timing-signoff/outputs/.stamp.design.sdf
	$(call 24_synopsys_pt_timing_signoff_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: synopsys-pt-timing-signoff

synopsys-pt-timing-signoff: 24-synopsys-pt-timing-signoff/.execstamp 24-synopsys-pt-timing-signoff/.postconditions.stamp 24-synopsys-pt-timing-signoff/outputs/.execstamp.design.sdf 24-synopsys-pt-timing-signoff/outputs/.stamp.design.sdf

.PHONY: 24

24: 24-synopsys-pt-timing-signoff/.execstamp 24-synopsys-pt-timing-signoff/.postconditions.stamp 24-synopsys-pt-timing-signoff/outputs/.execstamp.design.sdf 24-synopsys-pt-timing-signoff/outputs/.stamp.design.sdf

# debug

# ------------------------------------------------------------------------
# synopsys-ptpx-rtl
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 25-synopsys-ptpx-rtl/.prebuilt)","")
25-synopsys-ptpx-rtl/.stamp: 10-synopsys-vcs-sim/.execstamp 10-synopsys-vcs-sim/.postconditions.stamp 10-synopsys-vcs-sim/outputs/.execstamp.design.vpd 10-synopsys-vcs-sim/outputs/.execstamp.run.saif 10-synopsys-vcs-sim/outputs/.stamp.design.vpd 10-synopsys-vcs-sim/outputs/.stamp.run.saif
25-synopsys-ptpx-rtl/.stamp: 11-synopsys-dc-synthesis/.execstamp 11-synopsys-dc-synthesis/.postconditions.stamp 11-synopsys-dc-synthesis/outputs/.execstamp.design.namemap 11-synopsys-dc-synthesis/outputs/.execstamp.design.sdc 11-synopsys-dc-synthesis/outputs/.execstamp.design.svf 11-synopsys-dc-synthesis/outputs/.execstamp.design.v 11-synopsys-dc-synthesis/outputs/.stamp.design.namemap 11-synopsys-dc-synthesis/outputs/.stamp.design.sdc 11-synopsys-dc-synthesis/outputs/.stamp.design.svf 11-synopsys-dc-synthesis/outputs/.stamp.design.v
25-synopsys-ptpx-rtl/.stamp: 21-cadence-innovus-signoff/.execstamp 21-cadence-innovus-signoff/.postconditions.stamp 21-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.lef 21-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.sdf 21-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 21-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.stamp.design.def.gz 21-cadence-innovus-signoff/outputs/.stamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.stamp.design.lef 21-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.stamp.design.sdf 21-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
25-synopsys-ptpx-rtl/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
25-synopsys-ptpx-rtl/.stamp: 6-sram/.execstamp 6-sram/.postconditions.stamp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
25-synopsys-ptpx-rtl/.stamp:
	$(call cpdir-and-parameterize,25-synopsys-ptpx-rtl,../design/synopsys-ptpx-rtl,25-synopsys-ptpx-rtl/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 25-synopsys-ptpx-rtl/.prebuilt)","")
25-synopsys-ptpx-rtl/inputs/.stamp.adk: 25-synopsys-ptpx-rtl/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,25-synopsys-ptpx-rtl/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 25-synopsys-ptpx-rtl/.prebuilt)","")
25-synopsys-ptpx-rtl/inputs/.stamp.design.namemap: 25-synopsys-ptpx-rtl/.stamp 11-synopsys-dc-synthesis/outputs/.stamp.design.namemap
	$(call symlink,25-synopsys-ptpx-rtl/inputs,design.namemap,../../11-synopsys-dc-synthesis/outputs/design.namemap,.stamp.design.namemap)
endif

ifeq ("$(wildcard 25-synopsys-ptpx-rtl/.prebuilt)","")
25-synopsys-ptpx-rtl/inputs/.stamp.design.pt.sdc: 25-synopsys-ptpx-rtl/.stamp 21-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc
	$(call symlink,25-synopsys-ptpx-rtl/inputs,design.pt.sdc,../../21-cadence-innovus-signoff/outputs/design.pt.sdc,.stamp.design.pt.sdc)
endif

ifeq ("$(wildcard 25-synopsys-ptpx-rtl/.prebuilt)","")
25-synopsys-ptpx-rtl/inputs/.stamp.design.spef.gz: 25-synopsys-ptpx-rtl/.stamp 21-cadence-innovus-signoff/outputs/.stamp.design.spef.gz
	$(call symlink,25-synopsys-ptpx-rtl/inputs,design.spef.gz,../../21-cadence-innovus-signoff/outputs/design.spef.gz,.stamp.design.spef.gz)
endif

ifeq ("$(wildcard 25-synopsys-ptpx-rtl/.prebuilt)","")
25-synopsys-ptpx-rtl/inputs/.stamp.design.vcs.v: 25-synopsys-ptpx-rtl/.stamp 21-cadence-innovus-signoff/outputs/.stamp.design.vcs.v
	$(call symlink,25-synopsys-ptpx-rtl/inputs,design.vcs.v,../../21-cadence-innovus-signoff/outputs/design.vcs.v,.stamp.design.vcs.v)
endif

ifeq ("$(wildcard 25-synopsys-ptpx-rtl/.prebuilt)","")
25-synopsys-ptpx-rtl/inputs/.stamp.run.saif: 25-synopsys-ptpx-rtl/.stamp 10-synopsys-vcs-sim/outputs/.stamp.run.saif
	$(call symlink,25-synopsys-ptpx-rtl/inputs,run.saif,../../10-synopsys-vcs-sim/outputs/run.saif,.stamp.run.saif)
endif

ifeq ("$(wildcard 25-synopsys-ptpx-rtl/.prebuilt)","")
25-synopsys-ptpx-rtl/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db: 25-synopsys-ptpx-rtl/.stamp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db
	$(call symlink,25-synopsys-ptpx-rtl/inputs,sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db,../../6-sram/outputs/sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db)
endif

# execute

ifeq ("$(wildcard 25-synopsys-ptpx-rtl/.prebuilt)","")

define 25_synopsys_ptpx_rtl_commands_rule
	mkdir -p 25-synopsys-ptpx-rtl/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t synopsys-ptpx-rtl && chmod +x .mflowgen/25-synopsys-ptpx-rtl/mflowgen-run && cp -f .mflowgen/25-synopsys-ptpx-rtl/mflowgen-run 25-synopsys-ptpx-rtl && if [[ -e .mflowgen/25-synopsys-ptpx-rtl/mflowgen-debug ]]; then chmod +x .mflowgen/25-synopsys-ptpx-rtl/mflowgen-debug && cp -f .mflowgen/25-synopsys-ptpx-rtl/mflowgen-debug 25-synopsys-ptpx-rtl; fi && if [[ -e .mflowgen/25-synopsys-ptpx-rtl/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/25-synopsys-ptpx-rtl/mflowgen-check-preconditions.py && cp -f .mflowgen/25-synopsys-ptpx-rtl/mflowgen-check-preconditions.py 25-synopsys-ptpx-rtl; fi && if [[ -e .mflowgen/25-synopsys-ptpx-rtl/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/25-synopsys-ptpx-rtl/mflowgen-check-postconditions.py && cp -f .mflowgen/25-synopsys-ptpx-rtl/mflowgen-check-postconditions.py 25-synopsys-ptpx-rtl; fi && cd 25-synopsys-ptpx-rtl && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 25-synopsys-ptpx-rtl/outputs/*
endef

25-synopsys-ptpx-rtl/.execstamp: 25-synopsys-ptpx-rtl/.stamp 25-synopsys-ptpx-rtl/inputs/.stamp.adk 25-synopsys-ptpx-rtl/inputs/.stamp.design.namemap 25-synopsys-ptpx-rtl/inputs/.stamp.design.pt.sdc 25-synopsys-ptpx-rtl/inputs/.stamp.design.spef.gz 25-synopsys-ptpx-rtl/inputs/.stamp.design.vcs.v 25-synopsys-ptpx-rtl/inputs/.stamp.run.saif 25-synopsys-ptpx-rtl/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db
	$(call 25_synopsys_ptpx_rtl_commands_rule)
	touch $@

25-synopsys-ptpx-rtl/outputs/.execstamp.design.pwr.rpt: 25-synopsys-ptpx-rtl/.execstamp
	touch $@
25-synopsys-ptpx-rtl/outputs/.execstamp.design.pwr.hier.rpt: 25-synopsys-ptpx-rtl/.execstamp
	touch $@
25-synopsys-ptpx-rtl/outputs/.execstamp.design.sw.rpt: 25-synopsys-ptpx-rtl/.execstamp
	touch $@

endif

# collect outputs

25-synopsys-ptpx-rtl/outputs/.stamp.design.pwr.rpt: 25-synopsys-ptpx-rtl/.execstamp 25-synopsys-ptpx-rtl/outputs/.execstamp.design.pwr.hier.rpt 25-synopsys-ptpx-rtl/outputs/.execstamp.design.pwr.rpt 25-synopsys-ptpx-rtl/outputs/.execstamp.design.sw.rpt
	$(call stamp,25-synopsys-ptpx-rtl/outputs/.stamp.design.pwr.rpt)

25-synopsys-ptpx-rtl/outputs/.stamp.design.pwr.hier.rpt: 25-synopsys-ptpx-rtl/.execstamp 25-synopsys-ptpx-rtl/outputs/.execstamp.design.pwr.hier.rpt 25-synopsys-ptpx-rtl/outputs/.execstamp.design.pwr.rpt 25-synopsys-ptpx-rtl/outputs/.execstamp.design.sw.rpt
	$(call stamp,25-synopsys-ptpx-rtl/outputs/.stamp.design.pwr.hier.rpt)

25-synopsys-ptpx-rtl/outputs/.stamp.design.sw.rpt: 25-synopsys-ptpx-rtl/.execstamp 25-synopsys-ptpx-rtl/outputs/.execstamp.design.pwr.hier.rpt 25-synopsys-ptpx-rtl/outputs/.execstamp.design.pwr.rpt 25-synopsys-ptpx-rtl/outputs/.execstamp.design.sw.rpt
	$(call stamp,25-synopsys-ptpx-rtl/outputs/.stamp.design.sw.rpt)

# post-conditions

define 25_synopsys_ptpx_rtl_post_conditions_commands_rule
	cd 25-synopsys-ptpx-rtl && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

25-synopsys-ptpx-rtl/.postconditions.stamp: 25-synopsys-ptpx-rtl/.execstamp 25-synopsys-ptpx-rtl/outputs/.execstamp.design.pwr.hier.rpt 25-synopsys-ptpx-rtl/outputs/.execstamp.design.pwr.rpt 25-synopsys-ptpx-rtl/outputs/.execstamp.design.sw.rpt 25-synopsys-ptpx-rtl/outputs/.stamp.design.pwr.hier.rpt 25-synopsys-ptpx-rtl/outputs/.stamp.design.pwr.rpt 25-synopsys-ptpx-rtl/outputs/.stamp.design.sw.rpt
	$(call 25_synopsys_ptpx_rtl_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: synopsys-ptpx-rtl

synopsys-ptpx-rtl: 25-synopsys-ptpx-rtl/.execstamp 25-synopsys-ptpx-rtl/.postconditions.stamp 25-synopsys-ptpx-rtl/outputs/.execstamp.design.pwr.hier.rpt 25-synopsys-ptpx-rtl/outputs/.execstamp.design.pwr.rpt 25-synopsys-ptpx-rtl/outputs/.execstamp.design.sw.rpt 25-synopsys-ptpx-rtl/outputs/.stamp.design.pwr.hier.rpt 25-synopsys-ptpx-rtl/outputs/.stamp.design.pwr.rpt 25-synopsys-ptpx-rtl/outputs/.stamp.design.sw.rpt

.PHONY: 25

25: 25-synopsys-ptpx-rtl/.execstamp 25-synopsys-ptpx-rtl/.postconditions.stamp 25-synopsys-ptpx-rtl/outputs/.execstamp.design.pwr.hier.rpt 25-synopsys-ptpx-rtl/outputs/.execstamp.design.pwr.rpt 25-synopsys-ptpx-rtl/outputs/.execstamp.design.sw.rpt 25-synopsys-ptpx-rtl/outputs/.stamp.design.pwr.hier.rpt 25-synopsys-ptpx-rtl/outputs/.stamp.design.pwr.rpt 25-synopsys-ptpx-rtl/outputs/.stamp.design.sw.rpt

# debug

# ------------------------------------------------------------------------
# gl-sim
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 26-gl-sim/.prebuilt)","")
26-gl-sim/.stamp: 21-cadence-innovus-signoff/.execstamp 21-cadence-innovus-signoff/.postconditions.stamp 21-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.lef 21-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.sdf 21-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 21-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.stamp.design.def.gz 21-cadence-innovus-signoff/outputs/.stamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.stamp.design.lef 21-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.stamp.design.sdf 21-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
26-gl-sim/.stamp: 24-synopsys-pt-timing-signoff/.execstamp 24-synopsys-pt-timing-signoff/.postconditions.stamp 24-synopsys-pt-timing-signoff/outputs/.execstamp.design.sdf 24-synopsys-pt-timing-signoff/outputs/.stamp.design.sdf
26-gl-sim/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
26-gl-sim/.stamp: 6-sram/.execstamp 6-sram/.postconditions.stamp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
26-gl-sim/.stamp: 8-testbench/.execstamp 8-testbench/.postconditions.stamp 8-testbench/outputs/.execstamp.design.args 8-testbench/outputs/.execstamp.design.args.gls 8-testbench/outputs/.execstamp.freq_vec_data.txt 8-testbench/outputs/.execstamp.testbench.sv 8-testbench/outputs/.execstamp.testbench.v 8-testbench/outputs/.execstamp.tf_coeff_data.txt 8-testbench/outputs/.stamp.design.args 8-testbench/outputs/.stamp.design.args.gls 8-testbench/outputs/.stamp.freq_vec_data.txt 8-testbench/outputs/.stamp.testbench.sv 8-testbench/outputs/.stamp.testbench.v 8-testbench/outputs/.stamp.tf_coeff_data.txt
26-gl-sim/.stamp:
	$(call cpdir-and-parameterize,26-gl-sim,../design/synopsys-vcs-sim,26-gl-sim/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 26-gl-sim/.prebuilt)","")
26-gl-sim/inputs/.stamp.adk: 26-gl-sim/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,26-gl-sim/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 26-gl-sim/.prebuilt)","")
26-gl-sim/inputs/.stamp.design.args: 26-gl-sim/.stamp 8-testbench/outputs/.stamp.design.args.gls
	$(call symlink,26-gl-sim/inputs,design.args,../../8-testbench/outputs/design.args.gls,.stamp.design.args)
endif

ifeq ("$(wildcard 26-gl-sim/.prebuilt)","")
26-gl-sim/inputs/.stamp.design.sdf: 26-gl-sim/.stamp 24-synopsys-pt-timing-signoff/outputs/.stamp.design.sdf
	$(call symlink,26-gl-sim/inputs,design.sdf,../../24-synopsys-pt-timing-signoff/outputs/design.sdf,.stamp.design.sdf)
endif

ifeq ("$(wildcard 26-gl-sim/.prebuilt)","")
26-gl-sim/inputs/.stamp.design.vcs.v: 26-gl-sim/.stamp 21-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v
	$(call symlink,26-gl-sim/inputs,design.vcs.v,../../21-cadence-innovus-signoff/outputs/design.vcs.pg.v,.stamp.design.vcs.v)
endif

ifeq ("$(wildcard 26-gl-sim/.prebuilt)","")
26-gl-sim/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v: 26-gl-sim/.stamp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v
	$(call symlink,26-gl-sim/inputs,sky130_sram_2kbyte_1rw1r_32x512_8.v,../../6-sram/outputs/sky130_sram_2kbyte_1rw1r_32x512_8.v,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v)
endif

ifeq ("$(wildcard 26-gl-sim/.prebuilt)","")
26-gl-sim/inputs/.stamp.testbench.sv: 26-gl-sim/.stamp 8-testbench/outputs/.stamp.testbench.sv
	$(call symlink,26-gl-sim/inputs,testbench.sv,../../8-testbench/outputs/testbench.sv,.stamp.testbench.sv)
endif

# execute

ifeq ("$(wildcard 26-gl-sim/.prebuilt)","")

define 26_gl_sim_commands_rule
	mkdir -p 26-gl-sim/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t gl-sim && chmod +x .mflowgen/26-gl-sim/mflowgen-run && cp -f .mflowgen/26-gl-sim/mflowgen-run 26-gl-sim && if [[ -e .mflowgen/26-gl-sim/mflowgen-debug ]]; then chmod +x .mflowgen/26-gl-sim/mflowgen-debug && cp -f .mflowgen/26-gl-sim/mflowgen-debug 26-gl-sim; fi && if [[ -e .mflowgen/26-gl-sim/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/26-gl-sim/mflowgen-check-preconditions.py && cp -f .mflowgen/26-gl-sim/mflowgen-check-preconditions.py 26-gl-sim; fi && if [[ -e .mflowgen/26-gl-sim/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/26-gl-sim/mflowgen-check-postconditions.py && cp -f .mflowgen/26-gl-sim/mflowgen-check-postconditions.py 26-gl-sim; fi && cd 26-gl-sim && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 26-gl-sim/outputs/*
endef

26-gl-sim/.execstamp: 26-gl-sim/.stamp 26-gl-sim/inputs/.stamp.adk 26-gl-sim/inputs/.stamp.design.args 26-gl-sim/inputs/.stamp.design.sdf 26-gl-sim/inputs/.stamp.design.vcs.v 26-gl-sim/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 26-gl-sim/inputs/.stamp.testbench.sv
	$(call 26_gl_sim_commands_rule)
	touch $@

26-gl-sim/outputs/.execstamp.design.vpd: 26-gl-sim/.execstamp
	touch $@

endif

# collect outputs

26-gl-sim/outputs/.stamp.design.vpd: 26-gl-sim/.execstamp 26-gl-sim/outputs/.execstamp.design.vpd
	$(call stamp,26-gl-sim/outputs/.stamp.design.vpd)

# post-conditions

define 26_gl_sim_post_conditions_commands_rule
	cd 26-gl-sim && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

26-gl-sim/.postconditions.stamp: 26-gl-sim/.execstamp 26-gl-sim/outputs/.execstamp.design.vpd 26-gl-sim/outputs/.stamp.design.vpd
	$(call 26_gl_sim_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: gl-sim

gl-sim: 26-gl-sim/.execstamp 26-gl-sim/.postconditions.stamp 26-gl-sim/outputs/.execstamp.design.vpd 26-gl-sim/outputs/.stamp.design.vpd

.PHONY: 26

26: 26-gl-sim/.execstamp 26-gl-sim/.postconditions.stamp 26-gl-sim/outputs/.execstamp.design.vpd 26-gl-sim/outputs/.stamp.design.vpd

# debug

# ------------------------------------------------------------------------
# netgen-lvs-def
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 27-netgen-lvs-def/.prebuilt)","")
27-netgen-lvs-def/.stamp: 21-cadence-innovus-signoff/.execstamp 21-cadence-innovus-signoff/.postconditions.stamp 21-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.lef 21-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.sdf 21-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 21-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.stamp.design.def.gz 21-cadence-innovus-signoff/outputs/.stamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.stamp.design.lef 21-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.stamp.design.sdf 21-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
27-netgen-lvs-def/.stamp: 23-open-magic-def2spice/.execstamp 23-open-magic-def2spice/.postconditions.stamp 23-open-magic-def2spice/outputs/.execstamp.design_extracted.spice 23-open-magic-def2spice/outputs/.stamp.design_extracted.spice
27-netgen-lvs-def/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
27-netgen-lvs-def/.stamp: 6-sram/.execstamp 6-sram/.postconditions.stamp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
27-netgen-lvs-def/.stamp:
	$(call cpdir-and-parameterize,27-netgen-lvs-def,../design/open-netgen-lvs-def-spice,27-netgen-lvs-def/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 27-netgen-lvs-def/.prebuilt)","")
27-netgen-lvs-def/inputs/.stamp.adk: 27-netgen-lvs-def/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,27-netgen-lvs-def/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 27-netgen-lvs-def/.prebuilt)","")
27-netgen-lvs-def/inputs/.stamp.design.flatbuslvs.v: 27-netgen-lvs-def/.stamp 21-cadence-innovus-signoff/outputs/.stamp.design.flatbuslvs.v
	$(call symlink,27-netgen-lvs-def/inputs,design.flatbuslvs.v,../../21-cadence-innovus-signoff/outputs/design.flatbuslvs.v,.stamp.design.flatbuslvs.v)
endif

ifeq ("$(wildcard 27-netgen-lvs-def/.prebuilt)","")
27-netgen-lvs-def/inputs/.stamp.design_extracted.spice: 27-netgen-lvs-def/.stamp 23-open-magic-def2spice/outputs/.stamp.design_extracted.spice
	$(call symlink,27-netgen-lvs-def/inputs,design_extracted.spice,../../23-open-magic-def2spice/outputs/design_extracted.spice,.stamp.design_extracted.spice)
endif

ifeq ("$(wildcard 27-netgen-lvs-def/.prebuilt)","")
27-netgen-lvs-def/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp: 27-netgen-lvs-def/.stamp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp
	$(call symlink,27-netgen-lvs-def/inputs,sky130_sram_2kbyte_1rw1r_32x512_8.sp,../../6-sram/outputs/sky130_sram_2kbyte_1rw1r_32x512_8.sp,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp)
endif

# execute

ifeq ("$(wildcard 27-netgen-lvs-def/.prebuilt)","")

define 27_netgen_lvs_def_commands_rule
	mkdir -p 27-netgen-lvs-def/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t netgen-lvs-def && chmod +x .mflowgen/27-netgen-lvs-def/mflowgen-run && cp -f .mflowgen/27-netgen-lvs-def/mflowgen-run 27-netgen-lvs-def && if [[ -e .mflowgen/27-netgen-lvs-def/mflowgen-debug ]]; then chmod +x .mflowgen/27-netgen-lvs-def/mflowgen-debug && cp -f .mflowgen/27-netgen-lvs-def/mflowgen-debug 27-netgen-lvs-def; fi && if [[ -e .mflowgen/27-netgen-lvs-def/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/27-netgen-lvs-def/mflowgen-check-preconditions.py && cp -f .mflowgen/27-netgen-lvs-def/mflowgen-check-preconditions.py 27-netgen-lvs-def; fi && if [[ -e .mflowgen/27-netgen-lvs-def/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/27-netgen-lvs-def/mflowgen-check-postconditions.py && cp -f .mflowgen/27-netgen-lvs-def/mflowgen-check-postconditions.py 27-netgen-lvs-def; fi && cd 27-netgen-lvs-def && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 27-netgen-lvs-def/outputs/*
endef

27-netgen-lvs-def/.execstamp: 27-netgen-lvs-def/.stamp 27-netgen-lvs-def/inputs/.stamp.adk 27-netgen-lvs-def/inputs/.stamp.design.flatbuslvs.v 27-netgen-lvs-def/inputs/.stamp.design_extracted.spice 27-netgen-lvs-def/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp
	$(call 27_netgen_lvs_def_commands_rule)
	touch $@

27-netgen-lvs-def/outputs/.execstamp.lvs_results.log: 27-netgen-lvs-def/.execstamp
	touch $@

endif

# collect outputs

27-netgen-lvs-def/outputs/.stamp.lvs_results.log: 27-netgen-lvs-def/.execstamp 27-netgen-lvs-def/outputs/.execstamp.lvs_results.log
	$(call stamp,27-netgen-lvs-def/outputs/.stamp.lvs_results.log)

# post-conditions

define 27_netgen_lvs_def_post_conditions_commands_rule
	cd 27-netgen-lvs-def && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

27-netgen-lvs-def/.postconditions.stamp: 27-netgen-lvs-def/.execstamp 27-netgen-lvs-def/outputs/.execstamp.lvs_results.log 27-netgen-lvs-def/outputs/.stamp.lvs_results.log
	$(call 27_netgen_lvs_def_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: netgen-lvs-def

netgen-lvs-def: 27-netgen-lvs-def/.execstamp 27-netgen-lvs-def/.postconditions.stamp 27-netgen-lvs-def/outputs/.execstamp.lvs_results.log 27-netgen-lvs-def/outputs/.stamp.lvs_results.log

.PHONY: 27

27: 27-netgen-lvs-def/.execstamp 27-netgen-lvs-def/.postconditions.stamp 27-netgen-lvs-def/outputs/.execstamp.lvs_results.log 27-netgen-lvs-def/outputs/.stamp.lvs_results.log

# debug

# ------------------------------------------------------------------------
# open-magic-drc
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 28-open-magic-drc/.prebuilt)","")
28-open-magic-drc/.stamp: 22-mentor-calibre-gdsmerge/.execstamp 22-mentor-calibre-gdsmerge/.postconditions.stamp 22-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 22-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
28-open-magic-drc/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
28-open-magic-drc/.stamp: 6-sram/.execstamp 6-sram/.postconditions.stamp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
28-open-magic-drc/.stamp:
	$(call cpdir-and-parameterize,28-open-magic-drc,../design/open-magic-drc,28-open-magic-drc/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 28-open-magic-drc/.prebuilt)","")
28-open-magic-drc/inputs/.stamp.adk: 28-open-magic-drc/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,28-open-magic-drc/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 28-open-magic-drc/.prebuilt)","")
28-open-magic-drc/inputs/.stamp.design_merged.gds: 28-open-magic-drc/.stamp 22-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
	$(call symlink,28-open-magic-drc/inputs,design_merged.gds,../../22-mentor-calibre-gdsmerge/outputs/design_merged.gds,.stamp.design_merged.gds)
endif

ifeq ("$(wildcard 28-open-magic-drc/.prebuilt)","")
28-open-magic-drc/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef: 28-open-magic-drc/.stamp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef
	$(call symlink,28-open-magic-drc/inputs,sky130_sram_2kbyte_1rw1r_32x512_8.lef,../../6-sram/outputs/sky130_sram_2kbyte_1rw1r_32x512_8.lef,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef)
endif

# execute

ifeq ("$(wildcard 28-open-magic-drc/.prebuilt)","")

define 28_open_magic_drc_commands_rule
	mkdir -p 28-open-magic-drc/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-drc && chmod +x .mflowgen/28-open-magic-drc/mflowgen-run && cp -f .mflowgen/28-open-magic-drc/mflowgen-run 28-open-magic-drc && if [[ -e .mflowgen/28-open-magic-drc/mflowgen-debug ]]; then chmod +x .mflowgen/28-open-magic-drc/mflowgen-debug && cp -f .mflowgen/28-open-magic-drc/mflowgen-debug 28-open-magic-drc; fi && if [[ -e .mflowgen/28-open-magic-drc/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/28-open-magic-drc/mflowgen-check-preconditions.py && cp -f .mflowgen/28-open-magic-drc/mflowgen-check-preconditions.py 28-open-magic-drc; fi && if [[ -e .mflowgen/28-open-magic-drc/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/28-open-magic-drc/mflowgen-check-postconditions.py && cp -f .mflowgen/28-open-magic-drc/mflowgen-check-postconditions.py 28-open-magic-drc; fi && cd 28-open-magic-drc && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 28-open-magic-drc/outputs/*
endef

28-open-magic-drc/.execstamp: 28-open-magic-drc/.stamp 28-open-magic-drc/inputs/.stamp.adk 28-open-magic-drc/inputs/.stamp.design_merged.gds 28-open-magic-drc/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef
	$(call 28_open_magic_drc_commands_rule)
	touch $@

28-open-magic-drc/outputs/.execstamp.drc_results.log: 28-open-magic-drc/.execstamp
	touch $@

endif

# collect outputs

28-open-magic-drc/outputs/.stamp.drc_results.log: 28-open-magic-drc/.execstamp 28-open-magic-drc/outputs/.execstamp.drc_results.log
	$(call stamp,28-open-magic-drc/outputs/.stamp.drc_results.log)

# post-conditions

define 28_open_magic_drc_post_conditions_commands_rule
	cd 28-open-magic-drc && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

28-open-magic-drc/.postconditions.stamp: 28-open-magic-drc/.execstamp 28-open-magic-drc/outputs/.execstamp.drc_results.log 28-open-magic-drc/outputs/.stamp.drc_results.log
	$(call 28_open_magic_drc_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: open-magic-drc

open-magic-drc: 28-open-magic-drc/.execstamp 28-open-magic-drc/.postconditions.stamp 28-open-magic-drc/outputs/.execstamp.drc_results.log 28-open-magic-drc/outputs/.stamp.drc_results.log

.PHONY: 28

28: 28-open-magic-drc/.execstamp 28-open-magic-drc/.postconditions.stamp 28-open-magic-drc/outputs/.execstamp.drc_results.log 28-open-magic-drc/outputs/.stamp.drc_results.log

# debug

# ------------------------------------------------------------------------
# open-magic-gds2spice
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 29-open-magic-gds2spice/.prebuilt)","")
29-open-magic-gds2spice/.stamp: 22-mentor-calibre-gdsmerge/.execstamp 22-mentor-calibre-gdsmerge/.postconditions.stamp 22-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 22-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
29-open-magic-gds2spice/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
29-open-magic-gds2spice/.stamp:
	$(call cpdir-and-parameterize,29-open-magic-gds2spice,../design/open-magic-gds2spice,29-open-magic-gds2spice/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 29-open-magic-gds2spice/.prebuilt)","")
29-open-magic-gds2spice/inputs/.stamp.adk: 29-open-magic-gds2spice/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,29-open-magic-gds2spice/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 29-open-magic-gds2spice/.prebuilt)","")
29-open-magic-gds2spice/inputs/.stamp.design_merged.gds: 29-open-magic-gds2spice/.stamp 22-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
	$(call symlink,29-open-magic-gds2spice/inputs,design_merged.gds,../../22-mentor-calibre-gdsmerge/outputs/design_merged.gds,.stamp.design_merged.gds)
endif

# execute

ifeq ("$(wildcard 29-open-magic-gds2spice/.prebuilt)","")

define 29_open_magic_gds2spice_commands_rule
	mkdir -p 29-open-magic-gds2spice/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-gds2spice && chmod +x .mflowgen/29-open-magic-gds2spice/mflowgen-run && cp -f .mflowgen/29-open-magic-gds2spice/mflowgen-run 29-open-magic-gds2spice && if [[ -e .mflowgen/29-open-magic-gds2spice/mflowgen-debug ]]; then chmod +x .mflowgen/29-open-magic-gds2spice/mflowgen-debug && cp -f .mflowgen/29-open-magic-gds2spice/mflowgen-debug 29-open-magic-gds2spice; fi && if [[ -e .mflowgen/29-open-magic-gds2spice/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/29-open-magic-gds2spice/mflowgen-check-preconditions.py && cp -f .mflowgen/29-open-magic-gds2spice/mflowgen-check-preconditions.py 29-open-magic-gds2spice; fi && if [[ -e .mflowgen/29-open-magic-gds2spice/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/29-open-magic-gds2spice/mflowgen-check-postconditions.py && cp -f .mflowgen/29-open-magic-gds2spice/mflowgen-check-postconditions.py 29-open-magic-gds2spice; fi && cd 29-open-magic-gds2spice && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 29-open-magic-gds2spice/outputs/*
endef

29-open-magic-gds2spice/.execstamp: 29-open-magic-gds2spice/.stamp 29-open-magic-gds2spice/inputs/.stamp.adk 29-open-magic-gds2spice/inputs/.stamp.design_merged.gds
	$(call 29_open_magic_gds2spice_commands_rule)
	touch $@

29-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice: 29-open-magic-gds2spice/.execstamp
	touch $@

endif

# collect outputs

29-open-magic-gds2spice/outputs/.stamp.design_extracted.spice: 29-open-magic-gds2spice/.execstamp 29-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice
	$(call stamp,29-open-magic-gds2spice/outputs/.stamp.design_extracted.spice)

# post-conditions

define 29_open_magic_gds2spice_post_conditions_commands_rule
	cd 29-open-magic-gds2spice && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

29-open-magic-gds2spice/.postconditions.stamp: 29-open-magic-gds2spice/.execstamp 29-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice 29-open-magic-gds2spice/outputs/.stamp.design_extracted.spice
	$(call 29_open_magic_gds2spice_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: open-magic-gds2spice

open-magic-gds2spice: 29-open-magic-gds2spice/.execstamp 29-open-magic-gds2spice/.postconditions.stamp 29-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice 29-open-magic-gds2spice/outputs/.stamp.design_extracted.spice

.PHONY: 29

29: 29-open-magic-gds2spice/.execstamp 29-open-magic-gds2spice/.postconditions.stamp 29-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice 29-open-magic-gds2spice/outputs/.stamp.design_extracted.spice

# debug

# ------------------------------------------------------------------------
# open-magic-gds2spice-nobbox
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 30-open-magic-gds2spice-nobbox/.prebuilt)","")
30-open-magic-gds2spice-nobbox/.stamp: 22-mentor-calibre-gdsmerge/.execstamp 22-mentor-calibre-gdsmerge/.postconditions.stamp 22-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 22-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
30-open-magic-gds2spice-nobbox/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
30-open-magic-gds2spice-nobbox/.stamp: 6-sram/.execstamp 6-sram/.postconditions.stamp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
30-open-magic-gds2spice-nobbox/.stamp:
	$(call cpdir-and-parameterize,30-open-magic-gds2spice-nobbox,../design/open-magic-gds2spice-nobbox,30-open-magic-gds2spice-nobbox/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 30-open-magic-gds2spice-nobbox/.prebuilt)","")
30-open-magic-gds2spice-nobbox/inputs/.stamp.adk: 30-open-magic-gds2spice-nobbox/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,30-open-magic-gds2spice-nobbox/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 30-open-magic-gds2spice-nobbox/.prebuilt)","")
30-open-magic-gds2spice-nobbox/inputs/.stamp.design_merged.gds: 30-open-magic-gds2spice-nobbox/.stamp 22-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
	$(call symlink,30-open-magic-gds2spice-nobbox/inputs,design_merged.gds,../../22-mentor-calibre-gdsmerge/outputs/design_merged.gds,.stamp.design_merged.gds)
endif

ifeq ("$(wildcard 30-open-magic-gds2spice-nobbox/.prebuilt)","")
30-open-magic-gds2spice-nobbox/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef: 30-open-magic-gds2spice-nobbox/.stamp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef
	$(call symlink,30-open-magic-gds2spice-nobbox/inputs,sky130_sram_2kbyte_1rw1r_32x512_8.lef,../../6-sram/outputs/sky130_sram_2kbyte_1rw1r_32x512_8.lef,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef)
endif

# execute

ifeq ("$(wildcard 30-open-magic-gds2spice-nobbox/.prebuilt)","")

define 30_open_magic_gds2spice_nobbox_commands_rule
	mkdir -p 30-open-magic-gds2spice-nobbox/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-gds2spice-nobbox && chmod +x .mflowgen/30-open-magic-gds2spice-nobbox/mflowgen-run && cp -f .mflowgen/30-open-magic-gds2spice-nobbox/mflowgen-run 30-open-magic-gds2spice-nobbox && if [[ -e .mflowgen/30-open-magic-gds2spice-nobbox/mflowgen-debug ]]; then chmod +x .mflowgen/30-open-magic-gds2spice-nobbox/mflowgen-debug && cp -f .mflowgen/30-open-magic-gds2spice-nobbox/mflowgen-debug 30-open-magic-gds2spice-nobbox; fi && if [[ -e .mflowgen/30-open-magic-gds2spice-nobbox/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/30-open-magic-gds2spice-nobbox/mflowgen-check-preconditions.py && cp -f .mflowgen/30-open-magic-gds2spice-nobbox/mflowgen-check-preconditions.py 30-open-magic-gds2spice-nobbox; fi && if [[ -e .mflowgen/30-open-magic-gds2spice-nobbox/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/30-open-magic-gds2spice-nobbox/mflowgen-check-postconditions.py && cp -f .mflowgen/30-open-magic-gds2spice-nobbox/mflowgen-check-postconditions.py 30-open-magic-gds2spice-nobbox; fi && cd 30-open-magic-gds2spice-nobbox && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 30-open-magic-gds2spice-nobbox/outputs/*
endef

30-open-magic-gds2spice-nobbox/.execstamp: 30-open-magic-gds2spice-nobbox/.stamp 30-open-magic-gds2spice-nobbox/inputs/.stamp.adk 30-open-magic-gds2spice-nobbox/inputs/.stamp.design_merged.gds 30-open-magic-gds2spice-nobbox/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef
	$(call 30_open_magic_gds2spice_nobbox_commands_rule)
	touch $@

30-open-magic-gds2spice-nobbox/outputs/.execstamp.design_extracted.spice: 30-open-magic-gds2spice-nobbox/.execstamp
	touch $@

endif

# collect outputs

30-open-magic-gds2spice-nobbox/outputs/.stamp.design_extracted.spice: 30-open-magic-gds2spice-nobbox/.execstamp 30-open-magic-gds2spice-nobbox/outputs/.execstamp.design_extracted.spice
	$(call stamp,30-open-magic-gds2spice-nobbox/outputs/.stamp.design_extracted.spice)

# post-conditions

define 30_open_magic_gds2spice_nobbox_post_conditions_commands_rule
	cd 30-open-magic-gds2spice-nobbox && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

30-open-magic-gds2spice-nobbox/.postconditions.stamp: 30-open-magic-gds2spice-nobbox/.execstamp 30-open-magic-gds2spice-nobbox/outputs/.execstamp.design_extracted.spice 30-open-magic-gds2spice-nobbox/outputs/.stamp.design_extracted.spice
	$(call 30_open_magic_gds2spice_nobbox_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: open-magic-gds2spice-nobbox

open-magic-gds2spice-nobbox: 30-open-magic-gds2spice-nobbox/.execstamp 30-open-magic-gds2spice-nobbox/.postconditions.stamp 30-open-magic-gds2spice-nobbox/outputs/.execstamp.design_extracted.spice 30-open-magic-gds2spice-nobbox/outputs/.stamp.design_extracted.spice

.PHONY: 30

30: 30-open-magic-gds2spice-nobbox/.execstamp 30-open-magic-gds2spice-nobbox/.postconditions.stamp 30-open-magic-gds2spice-nobbox/outputs/.execstamp.design_extracted.spice 30-open-magic-gds2spice-nobbox/outputs/.stamp.design_extracted.spice

# debug

# ------------------------------------------------------------------------
# gen-saif-gl
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 31-gen-saif-gl/.prebuilt)","")
31-gen-saif-gl/.stamp: 26-gl-sim/.execstamp 26-gl-sim/.postconditions.stamp 26-gl-sim/outputs/.execstamp.design.vpd 26-gl-sim/outputs/.stamp.design.vpd
31-gen-saif-gl/.stamp:
	$(call cpdir-and-parameterize,31-gen-saif-gl,../../mflowgen/steps/synopsys-vcd2saif-convert,31-gen-saif-gl/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 31-gen-saif-gl/.prebuilt)","")
31-gen-saif-gl/inputs/.stamp.run.vcd: 31-gen-saif-gl/.stamp 26-gl-sim/outputs/.stamp.design.vpd
	$(call symlink,31-gen-saif-gl/inputs,run.vcd,../../26-gl-sim/outputs/design.vpd,.stamp.run.vcd)
endif

# execute

ifeq ("$(wildcard 31-gen-saif-gl/.prebuilt)","")

define 31_gen_saif_gl_commands_rule
	mkdir -p 31-gen-saif-gl/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t gen-saif-gl && chmod +x .mflowgen/31-gen-saif-gl/mflowgen-run && cp -f .mflowgen/31-gen-saif-gl/mflowgen-run 31-gen-saif-gl && if [[ -e .mflowgen/31-gen-saif-gl/mflowgen-debug ]]; then chmod +x .mflowgen/31-gen-saif-gl/mflowgen-debug && cp -f .mflowgen/31-gen-saif-gl/mflowgen-debug 31-gen-saif-gl; fi && if [[ -e .mflowgen/31-gen-saif-gl/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/31-gen-saif-gl/mflowgen-check-preconditions.py && cp -f .mflowgen/31-gen-saif-gl/mflowgen-check-preconditions.py 31-gen-saif-gl; fi && if [[ -e .mflowgen/31-gen-saif-gl/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/31-gen-saif-gl/mflowgen-check-postconditions.py && cp -f .mflowgen/31-gen-saif-gl/mflowgen-check-postconditions.py 31-gen-saif-gl; fi && cd 31-gen-saif-gl && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 31-gen-saif-gl/outputs/*
endef

31-gen-saif-gl/.execstamp: 31-gen-saif-gl/.stamp 31-gen-saif-gl/inputs/.stamp.run.vcd
	$(call 31_gen_saif_gl_commands_rule)
	touch $@

31-gen-saif-gl/outputs/.execstamp.run.saif: 31-gen-saif-gl/.execstamp
	touch $@

endif

# collect outputs

31-gen-saif-gl/outputs/.stamp.run.saif: 31-gen-saif-gl/.execstamp 31-gen-saif-gl/outputs/.execstamp.run.saif
	$(call stamp,31-gen-saif-gl/outputs/.stamp.run.saif)

# post-conditions

define 31_gen_saif_gl_post_conditions_commands_rule
	cd 31-gen-saif-gl && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

31-gen-saif-gl/.postconditions.stamp: 31-gen-saif-gl/.execstamp 31-gen-saif-gl/outputs/.execstamp.run.saif 31-gen-saif-gl/outputs/.stamp.run.saif
	$(call 31_gen_saif_gl_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: gen-saif-gl

gen-saif-gl: 31-gen-saif-gl/.execstamp 31-gen-saif-gl/.postconditions.stamp 31-gen-saif-gl/outputs/.execstamp.run.saif 31-gen-saif-gl/outputs/.stamp.run.saif

.PHONY: 31

31: 31-gen-saif-gl/.execstamp 31-gen-saif-gl/.postconditions.stamp 31-gen-saif-gl/outputs/.execstamp.run.saif 31-gen-saif-gl/outputs/.stamp.run.saif

# debug

# ------------------------------------------------------------------------
# mentor-calibre-comparison
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 32-mentor-calibre-comparison/.prebuilt)","")
32-mentor-calibre-comparison/.stamp: 21-cadence-innovus-signoff/.execstamp 21-cadence-innovus-signoff/.postconditions.stamp 21-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.lef 21-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.sdf 21-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 21-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.stamp.design.def.gz 21-cadence-innovus-signoff/outputs/.stamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.stamp.design.lef 21-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.stamp.design.sdf 21-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
32-mentor-calibre-comparison/.stamp: 30-open-magic-gds2spice-nobbox/.execstamp 30-open-magic-gds2spice-nobbox/.postconditions.stamp 30-open-magic-gds2spice-nobbox/outputs/.execstamp.design_extracted.spice 30-open-magic-gds2spice-nobbox/outputs/.stamp.design_extracted.spice
32-mentor-calibre-comparison/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
32-mentor-calibre-comparison/.stamp: 6-sram/.execstamp 6-sram/.postconditions.stamp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
32-mentor-calibre-comparison/.stamp:
	$(call cpdir-and-parameterize,32-mentor-calibre-comparison,../design/mentor-calibre-comparison,32-mentor-calibre-comparison/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 32-mentor-calibre-comparison/.prebuilt)","")
32-mentor-calibre-comparison/inputs/.stamp.adk: 32-mentor-calibre-comparison/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,32-mentor-calibre-comparison/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 32-mentor-calibre-comparison/.prebuilt)","")
32-mentor-calibre-comparison/inputs/.stamp.design.flatbuslvs.v: 32-mentor-calibre-comparison/.stamp 21-cadence-innovus-signoff/outputs/.stamp.design.flatbuslvs.v
	$(call symlink,32-mentor-calibre-comparison/inputs,design.flatbuslvs.v,../../21-cadence-innovus-signoff/outputs/design.flatbuslvs.v,.stamp.design.flatbuslvs.v)
endif

ifeq ("$(wildcard 32-mentor-calibre-comparison/.prebuilt)","")
32-mentor-calibre-comparison/inputs/.stamp.design_extracted.spice: 32-mentor-calibre-comparison/.stamp 30-open-magic-gds2spice-nobbox/outputs/.stamp.design_extracted.spice
	$(call symlink,32-mentor-calibre-comparison/inputs,design_extracted.spice,../../30-open-magic-gds2spice-nobbox/outputs/design_extracted.spice,.stamp.design_extracted.spice)
endif

ifeq ("$(wildcard 32-mentor-calibre-comparison/.prebuilt)","")
32-mentor-calibre-comparison/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp: 32-mentor-calibre-comparison/.stamp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp
	$(call symlink,32-mentor-calibre-comparison/inputs,sky130_sram_2kbyte_1rw1r_32x512_8.sp,../../6-sram/outputs/sky130_sram_2kbyte_1rw1r_32x512_8.sp,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp)
endif

# execute

ifeq ("$(wildcard 32-mentor-calibre-comparison/.prebuilt)","")

define 32_mentor_calibre_comparison_commands_rule
	mkdir -p 32-mentor-calibre-comparison/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t mentor-calibre-comparison && chmod +x .mflowgen/32-mentor-calibre-comparison/mflowgen-run && cp -f .mflowgen/32-mentor-calibre-comparison/mflowgen-run 32-mentor-calibre-comparison && if [[ -e .mflowgen/32-mentor-calibre-comparison/mflowgen-debug ]]; then chmod +x .mflowgen/32-mentor-calibre-comparison/mflowgen-debug && cp -f .mflowgen/32-mentor-calibre-comparison/mflowgen-debug 32-mentor-calibre-comparison; fi && if [[ -e .mflowgen/32-mentor-calibre-comparison/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/32-mentor-calibre-comparison/mflowgen-check-preconditions.py && cp -f .mflowgen/32-mentor-calibre-comparison/mflowgen-check-preconditions.py 32-mentor-calibre-comparison; fi && if [[ -e .mflowgen/32-mentor-calibre-comparison/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/32-mentor-calibre-comparison/mflowgen-check-postconditions.py && cp -f .mflowgen/32-mentor-calibre-comparison/mflowgen-check-postconditions.py 32-mentor-calibre-comparison; fi && cd 32-mentor-calibre-comparison && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 32-mentor-calibre-comparison/outputs/*
endef

32-mentor-calibre-comparison/.execstamp: 32-mentor-calibre-comparison/.stamp 32-mentor-calibre-comparison/inputs/.stamp.adk 32-mentor-calibre-comparison/inputs/.stamp.design.flatbuslvs.v 32-mentor-calibre-comparison/inputs/.stamp.design_extracted.spice 32-mentor-calibre-comparison/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp
	$(call 32_mentor_calibre_comparison_commands_rule)
	touch $@

32-mentor-calibre-comparison/outputs/.execstamp.lvs.report: 32-mentor-calibre-comparison/.execstamp
	touch $@

endif

# collect outputs

32-mentor-calibre-comparison/outputs/.stamp.lvs.report: 32-mentor-calibre-comparison/.execstamp 32-mentor-calibre-comparison/outputs/.execstamp.lvs.report
	$(call stamp,32-mentor-calibre-comparison/outputs/.stamp.lvs.report)

# post-conditions

define 32_mentor_calibre_comparison_post_conditions_commands_rule
	cd 32-mentor-calibre-comparison && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

32-mentor-calibre-comparison/.postconditions.stamp: 32-mentor-calibre-comparison/.execstamp 32-mentor-calibre-comparison/outputs/.execstamp.lvs.report 32-mentor-calibre-comparison/outputs/.stamp.lvs.report
	$(call 32_mentor_calibre_comparison_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: mentor-calibre-comparison

mentor-calibre-comparison: 32-mentor-calibre-comparison/.execstamp 32-mentor-calibre-comparison/.postconditions.stamp 32-mentor-calibre-comparison/outputs/.execstamp.lvs.report 32-mentor-calibre-comparison/outputs/.stamp.lvs.report

.PHONY: 32

32: 32-mentor-calibre-comparison/.execstamp 32-mentor-calibre-comparison/.postconditions.stamp 32-mentor-calibre-comparison/outputs/.execstamp.lvs.report 32-mentor-calibre-comparison/outputs/.stamp.lvs.report

# debug

define 32_debug_rule
	cd 32-mentor-calibre-comparison && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-mentor-calibre-comparison: 
	$(call 32_debug_rule)

.PHONY: debug-32

debug-32: debug-mentor-calibre-comparison

# ------------------------------------------------------------------------
# mentor-calibre-comparison-nobbox
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 33-mentor-calibre-comparison-nobbox/.prebuilt)","")
33-mentor-calibre-comparison-nobbox/.stamp: 21-cadence-innovus-signoff/.execstamp 21-cadence-innovus-signoff/.postconditions.stamp 21-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.lef 21-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.sdf 21-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 21-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.stamp.design.def.gz 21-cadence-innovus-signoff/outputs/.stamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.stamp.design.lef 21-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.stamp.design.sdf 21-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
33-mentor-calibre-comparison-nobbox/.stamp: 30-open-magic-gds2spice-nobbox/.execstamp 30-open-magic-gds2spice-nobbox/.postconditions.stamp 30-open-magic-gds2spice-nobbox/outputs/.execstamp.design_extracted.spice 30-open-magic-gds2spice-nobbox/outputs/.stamp.design_extracted.spice
33-mentor-calibre-comparison-nobbox/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
33-mentor-calibre-comparison-nobbox/.stamp: 6-sram/.execstamp 6-sram/.postconditions.stamp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
33-mentor-calibre-comparison-nobbox/.stamp:
	$(call cpdir-and-parameterize,33-mentor-calibre-comparison-nobbox,../design/mentor-calibre-comparison-nobbox,33-mentor-calibre-comparison-nobbox/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 33-mentor-calibre-comparison-nobbox/.prebuilt)","")
33-mentor-calibre-comparison-nobbox/inputs/.stamp.adk: 33-mentor-calibre-comparison-nobbox/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,33-mentor-calibre-comparison-nobbox/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 33-mentor-calibre-comparison-nobbox/.prebuilt)","")
33-mentor-calibre-comparison-nobbox/inputs/.stamp.design.nofillerflatbuslvs.v: 33-mentor-calibre-comparison-nobbox/.stamp 21-cadence-innovus-signoff/outputs/.stamp.design.nofillerflatbuslvs.v
	$(call symlink,33-mentor-calibre-comparison-nobbox/inputs,design.nofillerflatbuslvs.v,../../21-cadence-innovus-signoff/outputs/design.nofillerflatbuslvs.v,.stamp.design.nofillerflatbuslvs.v)
endif

ifeq ("$(wildcard 33-mentor-calibre-comparison-nobbox/.prebuilt)","")
33-mentor-calibre-comparison-nobbox/inputs/.stamp.design_extracted.spice: 33-mentor-calibre-comparison-nobbox/.stamp 30-open-magic-gds2spice-nobbox/outputs/.stamp.design_extracted.spice
	$(call symlink,33-mentor-calibre-comparison-nobbox/inputs,design_extracted.spice,../../30-open-magic-gds2spice-nobbox/outputs/design_extracted.spice,.stamp.design_extracted.spice)
endif

ifeq ("$(wildcard 33-mentor-calibre-comparison-nobbox/.prebuilt)","")
33-mentor-calibre-comparison-nobbox/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp: 33-mentor-calibre-comparison-nobbox/.stamp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp
	$(call symlink,33-mentor-calibre-comparison-nobbox/inputs,sky130_sram_2kbyte_1rw1r_32x512_8.sp,../../6-sram/outputs/sky130_sram_2kbyte_1rw1r_32x512_8.sp,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp)
endif

# execute

ifeq ("$(wildcard 33-mentor-calibre-comparison-nobbox/.prebuilt)","")

define 33_mentor_calibre_comparison_nobbox_commands_rule
	mkdir -p 33-mentor-calibre-comparison-nobbox/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t mentor-calibre-comparison-nobbox && chmod +x .mflowgen/33-mentor-calibre-comparison-nobbox/mflowgen-run && cp -f .mflowgen/33-mentor-calibre-comparison-nobbox/mflowgen-run 33-mentor-calibre-comparison-nobbox && if [[ -e .mflowgen/33-mentor-calibre-comparison-nobbox/mflowgen-debug ]]; then chmod +x .mflowgen/33-mentor-calibre-comparison-nobbox/mflowgen-debug && cp -f .mflowgen/33-mentor-calibre-comparison-nobbox/mflowgen-debug 33-mentor-calibre-comparison-nobbox; fi && if [[ -e .mflowgen/33-mentor-calibre-comparison-nobbox/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/33-mentor-calibre-comparison-nobbox/mflowgen-check-preconditions.py && cp -f .mflowgen/33-mentor-calibre-comparison-nobbox/mflowgen-check-preconditions.py 33-mentor-calibre-comparison-nobbox; fi && if [[ -e .mflowgen/33-mentor-calibre-comparison-nobbox/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/33-mentor-calibre-comparison-nobbox/mflowgen-check-postconditions.py && cp -f .mflowgen/33-mentor-calibre-comparison-nobbox/mflowgen-check-postconditions.py 33-mentor-calibre-comparison-nobbox; fi && cd 33-mentor-calibre-comparison-nobbox && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 33-mentor-calibre-comparison-nobbox/outputs/*
endef

33-mentor-calibre-comparison-nobbox/.execstamp: 33-mentor-calibre-comparison-nobbox/.stamp 33-mentor-calibre-comparison-nobbox/inputs/.stamp.adk 33-mentor-calibre-comparison-nobbox/inputs/.stamp.design.nofillerflatbuslvs.v 33-mentor-calibre-comparison-nobbox/inputs/.stamp.design_extracted.spice 33-mentor-calibre-comparison-nobbox/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp
	$(call 33_mentor_calibre_comparison_nobbox_commands_rule)
	touch $@

33-mentor-calibre-comparison-nobbox/outputs/.execstamp.lvs.report: 33-mentor-calibre-comparison-nobbox/.execstamp
	touch $@

endif

# collect outputs

33-mentor-calibre-comparison-nobbox/outputs/.stamp.lvs.report: 33-mentor-calibre-comparison-nobbox/.execstamp 33-mentor-calibre-comparison-nobbox/outputs/.execstamp.lvs.report
	$(call stamp,33-mentor-calibre-comparison-nobbox/outputs/.stamp.lvs.report)

# post-conditions

define 33_mentor_calibre_comparison_nobbox_post_conditions_commands_rule
	cd 33-mentor-calibre-comparison-nobbox && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

33-mentor-calibre-comparison-nobbox/.postconditions.stamp: 33-mentor-calibre-comparison-nobbox/.execstamp 33-mentor-calibre-comparison-nobbox/outputs/.execstamp.lvs.report 33-mentor-calibre-comparison-nobbox/outputs/.stamp.lvs.report
	$(call 33_mentor_calibre_comparison_nobbox_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: mentor-calibre-comparison-nobbox

mentor-calibre-comparison-nobbox: 33-mentor-calibre-comparison-nobbox/.execstamp 33-mentor-calibre-comparison-nobbox/.postconditions.stamp 33-mentor-calibre-comparison-nobbox/outputs/.execstamp.lvs.report 33-mentor-calibre-comparison-nobbox/outputs/.stamp.lvs.report

.PHONY: 33

33: 33-mentor-calibre-comparison-nobbox/.execstamp 33-mentor-calibre-comparison-nobbox/.postconditions.stamp 33-mentor-calibre-comparison-nobbox/outputs/.execstamp.lvs.report 33-mentor-calibre-comparison-nobbox/outputs/.stamp.lvs.report

# debug

define 33_debug_rule
	cd 33-mentor-calibre-comparison-nobbox && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-mentor-calibre-comparison-nobbox: 
	$(call 33_debug_rule)

.PHONY: debug-33

debug-33: debug-mentor-calibre-comparison-nobbox

# ------------------------------------------------------------------------
# netgen-lvs-gds
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 34-netgen-lvs-gds/.prebuilt)","")
34-netgen-lvs-gds/.stamp: 21-cadence-innovus-signoff/.execstamp 21-cadence-innovus-signoff/.postconditions.stamp 21-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.lef 21-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.sdf 21-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 21-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.stamp.design.def.gz 21-cadence-innovus-signoff/outputs/.stamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.stamp.design.lef 21-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.stamp.design.sdf 21-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
34-netgen-lvs-gds/.stamp: 30-open-magic-gds2spice-nobbox/.execstamp 30-open-magic-gds2spice-nobbox/.postconditions.stamp 30-open-magic-gds2spice-nobbox/outputs/.execstamp.design_extracted.spice 30-open-magic-gds2spice-nobbox/outputs/.stamp.design_extracted.spice
34-netgen-lvs-gds/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
34-netgen-lvs-gds/.stamp: 6-sram/.execstamp 6-sram/.postconditions.stamp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
34-netgen-lvs-gds/.stamp:
	$(call cpdir-and-parameterize,34-netgen-lvs-gds,../design/open-netgen-lvs,34-netgen-lvs-gds/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 34-netgen-lvs-gds/.prebuilt)","")
34-netgen-lvs-gds/inputs/.stamp.adk: 34-netgen-lvs-gds/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,34-netgen-lvs-gds/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 34-netgen-lvs-gds/.prebuilt)","")
34-netgen-lvs-gds/inputs/.stamp.design.lvs.v: 34-netgen-lvs-gds/.stamp 21-cadence-innovus-signoff/outputs/.stamp.design.lvs.v
	$(call symlink,34-netgen-lvs-gds/inputs,design.lvs.v,../../21-cadence-innovus-signoff/outputs/design.lvs.v,.stamp.design.lvs.v)
endif

ifeq ("$(wildcard 34-netgen-lvs-gds/.prebuilt)","")
34-netgen-lvs-gds/inputs/.stamp.design_extracted.spice: 34-netgen-lvs-gds/.stamp 30-open-magic-gds2spice-nobbox/outputs/.stamp.design_extracted.spice
	$(call symlink,34-netgen-lvs-gds/inputs,design_extracted.spice,../../30-open-magic-gds2spice-nobbox/outputs/design_extracted.spice,.stamp.design_extracted.spice)
endif

ifeq ("$(wildcard 34-netgen-lvs-gds/.prebuilt)","")
34-netgen-lvs-gds/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp: 34-netgen-lvs-gds/.stamp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp
	$(call symlink,34-netgen-lvs-gds/inputs,sky130_sram_2kbyte_1rw1r_32x512_8.sp,../../6-sram/outputs/sky130_sram_2kbyte_1rw1r_32x512_8.sp,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp)
endif

# execute

ifeq ("$(wildcard 34-netgen-lvs-gds/.prebuilt)","")

define 34_netgen_lvs_gds_commands_rule
	mkdir -p 34-netgen-lvs-gds/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t netgen-lvs-gds && chmod +x .mflowgen/34-netgen-lvs-gds/mflowgen-run && cp -f .mflowgen/34-netgen-lvs-gds/mflowgen-run 34-netgen-lvs-gds && if [[ -e .mflowgen/34-netgen-lvs-gds/mflowgen-debug ]]; then chmod +x .mflowgen/34-netgen-lvs-gds/mflowgen-debug && cp -f .mflowgen/34-netgen-lvs-gds/mflowgen-debug 34-netgen-lvs-gds; fi && if [[ -e .mflowgen/34-netgen-lvs-gds/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/34-netgen-lvs-gds/mflowgen-check-preconditions.py && cp -f .mflowgen/34-netgen-lvs-gds/mflowgen-check-preconditions.py 34-netgen-lvs-gds; fi && if [[ -e .mflowgen/34-netgen-lvs-gds/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/34-netgen-lvs-gds/mflowgen-check-postconditions.py && cp -f .mflowgen/34-netgen-lvs-gds/mflowgen-check-postconditions.py 34-netgen-lvs-gds; fi && cd 34-netgen-lvs-gds && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 34-netgen-lvs-gds/outputs/*
endef

34-netgen-lvs-gds/.execstamp: 34-netgen-lvs-gds/.stamp 34-netgen-lvs-gds/inputs/.stamp.adk 34-netgen-lvs-gds/inputs/.stamp.design.lvs.v 34-netgen-lvs-gds/inputs/.stamp.design_extracted.spice 34-netgen-lvs-gds/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp
	$(call 34_netgen_lvs_gds_commands_rule)
	touch $@

34-netgen-lvs-gds/outputs/.execstamp.lvs_results.log: 34-netgen-lvs-gds/.execstamp
	touch $@

endif

# collect outputs

34-netgen-lvs-gds/outputs/.stamp.lvs_results.log: 34-netgen-lvs-gds/.execstamp 34-netgen-lvs-gds/outputs/.execstamp.lvs_results.log
	$(call stamp,34-netgen-lvs-gds/outputs/.stamp.lvs_results.log)

# post-conditions

define 34_netgen_lvs_gds_post_conditions_commands_rule
	cd 34-netgen-lvs-gds && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

34-netgen-lvs-gds/.postconditions.stamp: 34-netgen-lvs-gds/.execstamp 34-netgen-lvs-gds/outputs/.execstamp.lvs_results.log 34-netgen-lvs-gds/outputs/.stamp.lvs_results.log
	$(call 34_netgen_lvs_gds_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: netgen-lvs-gds

netgen-lvs-gds: 34-netgen-lvs-gds/.execstamp 34-netgen-lvs-gds/.postconditions.stamp 34-netgen-lvs-gds/outputs/.execstamp.lvs_results.log 34-netgen-lvs-gds/outputs/.stamp.lvs_results.log

.PHONY: 34

34: 34-netgen-lvs-gds/.execstamp 34-netgen-lvs-gds/.postconditions.stamp 34-netgen-lvs-gds/outputs/.execstamp.lvs_results.log 34-netgen-lvs-gds/outputs/.stamp.lvs_results.log

# debug

# ------------------------------------------------------------------------
# synopsys-ptpx-gl
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 35-synopsys-ptpx-gl/.prebuilt)","")
35-synopsys-ptpx-gl/.stamp: 21-cadence-innovus-signoff/.execstamp 21-cadence-innovus-signoff/.postconditions.stamp 21-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.lef 21-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.sdf 21-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 21-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 21-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 21-cadence-innovus-signoff/outputs/.stamp.design.def.gz 21-cadence-innovus-signoff/outputs/.stamp.design.flatbuslvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 21-cadence-innovus-signoff/outputs/.stamp.design.lef 21-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.nofillerflatbuslvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.nofillerlvs.v 21-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 21-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 21-cadence-innovus-signoff/outputs/.stamp.design.sdf 21-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 21-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 21-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 21-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
35-synopsys-ptpx-gl/.stamp: 31-gen-saif-gl/.execstamp 31-gen-saif-gl/.postconditions.stamp 31-gen-saif-gl/outputs/.execstamp.run.saif 31-gen-saif-gl/outputs/.stamp.run.saif
35-synopsys-ptpx-gl/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
35-synopsys-ptpx-gl/.stamp: 6-sram/.execstamp 6-sram/.postconditions.stamp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.execstamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.gds 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.lef 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.sp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8.v 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.lib
35-synopsys-ptpx-gl/.stamp:
	$(call cpdir-and-parameterize,35-synopsys-ptpx-gl,../../mflowgen/steps/synopsys-ptpx-gl,35-synopsys-ptpx-gl/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 35-synopsys-ptpx-gl/.prebuilt)","")
35-synopsys-ptpx-gl/inputs/.stamp.adk: 35-synopsys-ptpx-gl/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,35-synopsys-ptpx-gl/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 35-synopsys-ptpx-gl/.prebuilt)","")
35-synopsys-ptpx-gl/inputs/.stamp.design.pt.sdc: 35-synopsys-ptpx-gl/.stamp 21-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc
	$(call symlink,35-synopsys-ptpx-gl/inputs,design.pt.sdc,../../21-cadence-innovus-signoff/outputs/design.pt.sdc,.stamp.design.pt.sdc)
endif

ifeq ("$(wildcard 35-synopsys-ptpx-gl/.prebuilt)","")
35-synopsys-ptpx-gl/inputs/.stamp.design.spef.gz: 35-synopsys-ptpx-gl/.stamp 21-cadence-innovus-signoff/outputs/.stamp.design.spef.gz
	$(call symlink,35-synopsys-ptpx-gl/inputs,design.spef.gz,../../21-cadence-innovus-signoff/outputs/design.spef.gz,.stamp.design.spef.gz)
endif

ifeq ("$(wildcard 35-synopsys-ptpx-gl/.prebuilt)","")
35-synopsys-ptpx-gl/inputs/.stamp.design.vcs.v: 35-synopsys-ptpx-gl/.stamp 21-cadence-innovus-signoff/outputs/.stamp.design.vcs.v
	$(call symlink,35-synopsys-ptpx-gl/inputs,design.vcs.v,../../21-cadence-innovus-signoff/outputs/design.vcs.v,.stamp.design.vcs.v)
endif

ifeq ("$(wildcard 35-synopsys-ptpx-gl/.prebuilt)","")
35-synopsys-ptpx-gl/inputs/.stamp.run.saif: 35-synopsys-ptpx-gl/.stamp 31-gen-saif-gl/outputs/.stamp.run.saif
	$(call symlink,35-synopsys-ptpx-gl/inputs,run.saif,../../31-gen-saif-gl/outputs/run.saif,.stamp.run.saif)
endif

ifeq ("$(wildcard 35-synopsys-ptpx-gl/.prebuilt)","")
35-synopsys-ptpx-gl/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db: 35-synopsys-ptpx-gl/.stamp 6-sram/outputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db
	$(call symlink,35-synopsys-ptpx-gl/inputs,sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db,../../6-sram/outputs/sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db,.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db)
endif

# execute

ifeq ("$(wildcard 35-synopsys-ptpx-gl/.prebuilt)","")

define 35_synopsys_ptpx_gl_commands_rule
	mkdir -p 35-synopsys-ptpx-gl/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t synopsys-ptpx-gl && chmod +x .mflowgen/35-synopsys-ptpx-gl/mflowgen-run && cp -f .mflowgen/35-synopsys-ptpx-gl/mflowgen-run 35-synopsys-ptpx-gl && if [[ -e .mflowgen/35-synopsys-ptpx-gl/mflowgen-debug ]]; then chmod +x .mflowgen/35-synopsys-ptpx-gl/mflowgen-debug && cp -f .mflowgen/35-synopsys-ptpx-gl/mflowgen-debug 35-synopsys-ptpx-gl; fi && if [[ -e .mflowgen/35-synopsys-ptpx-gl/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/35-synopsys-ptpx-gl/mflowgen-check-preconditions.py && cp -f .mflowgen/35-synopsys-ptpx-gl/mflowgen-check-preconditions.py 35-synopsys-ptpx-gl; fi && if [[ -e .mflowgen/35-synopsys-ptpx-gl/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/35-synopsys-ptpx-gl/mflowgen-check-postconditions.py && cp -f .mflowgen/35-synopsys-ptpx-gl/mflowgen-check-postconditions.py 35-synopsys-ptpx-gl; fi && cd 35-synopsys-ptpx-gl && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 35-synopsys-ptpx-gl/outputs/*
endef

35-synopsys-ptpx-gl/.execstamp: 35-synopsys-ptpx-gl/.stamp 35-synopsys-ptpx-gl/inputs/.stamp.adk 35-synopsys-ptpx-gl/inputs/.stamp.design.pt.sdc 35-synopsys-ptpx-gl/inputs/.stamp.design.spef.gz 35-synopsys-ptpx-gl/inputs/.stamp.design.vcs.v 35-synopsys-ptpx-gl/inputs/.stamp.run.saif 35-synopsys-ptpx-gl/inputs/.stamp.sky130_sram_2kbyte_1rw1r_32x512_8_TT_1p8V_25C.db
	$(call 35_synopsys_ptpx_gl_commands_rule)

35-synopsys-ptpx-gl/.execstamp.execute-phony: 35-synopsys-ptpx-gl/.execstamp
	touch $@

endif

# collect outputs

# post-conditions

define 35_synopsys_ptpx_gl_post_conditions_commands_rule
	cd 35-synopsys-ptpx-gl && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

35-synopsys-ptpx-gl/.postconditions.stamp: 35-synopsys-ptpx-gl/.execstamp 35-synopsys-ptpx-gl/.execstamp.execute-phony
	$(call 35_synopsys_ptpx_gl_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: synopsys-ptpx-gl

synopsys-ptpx-gl: 35-synopsys-ptpx-gl/.execstamp 35-synopsys-ptpx-gl/.execstamp.execute-phony 35-synopsys-ptpx-gl/.postconditions.stamp

.PHONY: 35

35: 35-synopsys-ptpx-gl/.execstamp 35-synopsys-ptpx-gl/.execstamp.execute-phony 35-synopsys-ptpx-gl/.postconditions.stamp

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
	rm -rf ./0-constraints

.PHONY: clean-constraints

clean-constraints: clean-0

.PHONY: clean-1

clean-1:
	rm -rf ./1-floorplan

.PHONY: clean-floorplan

clean-floorplan: clean-1

.PHONY: clean-10

clean-10:
	rm -rf ./10-synopsys-vcs-sim

.PHONY: clean-synopsys-vcs-sim

clean-synopsys-vcs-sim: clean-10

.PHONY: clean-11

clean-11:
	rm -rf ./11-synopsys-dc-synthesis

.PHONY: clean-synopsys-dc-synthesis

clean-synopsys-dc-synthesis: clean-11

.PHONY: clean-12

clean-12:
	rm -rf ./12-cadence-ncsim-sim

.PHONY: clean-cadence-ncsim-sim

clean-cadence-ncsim-sim: clean-12

.PHONY: clean-13

clean-13:
	rm -rf ./13-cadence-innovus-flowsetup

.PHONY: clean-cadence-innovus-flowsetup

clean-cadence-innovus-flowsetup: clean-13

.PHONY: clean-14

clean-14:
	rm -rf ./14-cadence-innovus-init

.PHONY: clean-cadence-innovus-init

clean-cadence-innovus-init: clean-14

.PHONY: clean-15

clean-15:
	rm -rf ./15-cadence-innovus-power

.PHONY: clean-cadence-innovus-power

clean-cadence-innovus-power: clean-15

.PHONY: clean-16

clean-16:
	rm -rf ./16-cadence-innovus-place

.PHONY: clean-cadence-innovus-place

clean-cadence-innovus-place: clean-16

.PHONY: clean-17

clean-17:
	rm -rf ./17-cadence-innovus-cts

.PHONY: clean-cadence-innovus-cts

clean-cadence-innovus-cts: clean-17

.PHONY: clean-18

clean-18:
	rm -rf ./18-cadence-innovus-postcts_hold

.PHONY: clean-cadence-innovus-postcts_hold

clean-cadence-innovus-postcts_hold: clean-18

.PHONY: clean-19

clean-19:
	rm -rf ./19-cadence-innovus-route

.PHONY: clean-cadence-innovus-route

clean-cadence-innovus-route: clean-19

.PHONY: clean-2

clean-2:
	rm -rf ./2-cadence-innovus-dont-use-cells

.PHONY: clean-cadence-innovus-dont-use-cells

clean-cadence-innovus-dont-use-cells: clean-2

.PHONY: clean-20

clean-20:
	rm -rf ./20-cadence-innovus-postroute

.PHONY: clean-cadence-innovus-postroute

clean-cadence-innovus-postroute: clean-20

.PHONY: clean-21

clean-21:
	rm -rf ./21-cadence-innovus-signoff

.PHONY: clean-cadence-innovus-signoff

clean-cadence-innovus-signoff: clean-21

.PHONY: clean-22

clean-22:
	rm -rf ./22-mentor-calibre-gdsmerge

.PHONY: clean-mentor-calibre-gdsmerge

clean-mentor-calibre-gdsmerge: clean-22

.PHONY: clean-23

clean-23:
	rm -rf ./23-open-magic-def2spice

.PHONY: clean-open-magic-def2spice

clean-open-magic-def2spice: clean-23

.PHONY: clean-24

clean-24:
	rm -rf ./24-synopsys-pt-timing-signoff

.PHONY: clean-synopsys-pt-timing-signoff

clean-synopsys-pt-timing-signoff: clean-24

.PHONY: clean-25

clean-25:
	rm -rf ./25-synopsys-ptpx-rtl

.PHONY: clean-synopsys-ptpx-rtl

clean-synopsys-ptpx-rtl: clean-25

.PHONY: clean-26

clean-26:
	rm -rf ./26-gl-sim

.PHONY: clean-gl-sim

clean-gl-sim: clean-26

.PHONY: clean-27

clean-27:
	rm -rf ./27-netgen-lvs-def

.PHONY: clean-netgen-lvs-def

clean-netgen-lvs-def: clean-27

.PHONY: clean-28

clean-28:
	rm -rf ./28-open-magic-drc

.PHONY: clean-open-magic-drc

clean-open-magic-drc: clean-28

.PHONY: clean-29

clean-29:
	rm -rf ./29-open-magic-gds2spice

.PHONY: clean-open-magic-gds2spice

clean-open-magic-gds2spice: clean-29

.PHONY: clean-3

clean-3:
	rm -rf ./3-pin-placement

.PHONY: clean-pin-placement

clean-pin-placement: clean-3

.PHONY: clean-30

clean-30:
	rm -rf ./30-open-magic-gds2spice-nobbox

.PHONY: clean-open-magic-gds2spice-nobbox

clean-open-magic-gds2spice-nobbox: clean-30

.PHONY: clean-31

clean-31:
	rm -rf ./31-gen-saif-gl

.PHONY: clean-gen-saif-gl

clean-gen-saif-gl: clean-31

.PHONY: clean-32

clean-32:
	rm -rf ./32-mentor-calibre-comparison

.PHONY: clean-mentor-calibre-comparison

clean-mentor-calibre-comparison: clean-32

.PHONY: clean-33

clean-33:
	rm -rf ./33-mentor-calibre-comparison-nobbox

.PHONY: clean-mentor-calibre-comparison-nobbox

clean-mentor-calibre-comparison-nobbox: clean-33

.PHONY: clean-34

clean-34:
	rm -rf ./34-netgen-lvs-gds

.PHONY: clean-netgen-lvs-gds

clean-netgen-lvs-gds: clean-34

.PHONY: clean-35

clean-35:
	rm -rf ./35-synopsys-ptpx-gl

.PHONY: clean-synopsys-ptpx-gl

clean-synopsys-ptpx-gl: clean-35

.PHONY: clean-4

clean-4:
	rm -rf ./4-rtl

.PHONY: clean-rtl

clean-rtl: clean-4

.PHONY: clean-5

clean-5:
	rm -rf ./5-skywater-130nm

.PHONY: clean-skywater-130nm

clean-skywater-130nm: clean-5

.PHONY: clean-6

clean-6:
	rm -rf ./6-sram

.PHONY: clean-sram

clean-sram: clean-6

.PHONY: clean-7

clean-7:
	rm -rf ./7-synopsys-dc-compile

.PHONY: clean-synopsys-dc-compile

clean-synopsys-dc-compile: clean-7

.PHONY: clean-8

clean-8:
	rm -rf ./8-testbench

.PHONY: clean-testbench

clean-testbench: clean-8

.PHONY: clean-9

clean-9:
	rm -rf ./9-info

.PHONY: clean-info

clean-info: clean-9

# Diff

.PHONY: diff-2

diff-2:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/cadence-innovus-dont-use-cells 2-cadence-innovus-dont-use-cells | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/cadence-innovus-dont-use-cells.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 2-cadence-innovus-dont-use-cells.*' && echo || true

.PHONY: diff-0

diff-0:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/constraints 0-constraints | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/constraints.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 0-constraints.*' && echo || true

.PHONY: diff-1

diff-1:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/floorplan 1-floorplan | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/floorplan.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 1-floorplan.*' && echo || true

.PHONY: diff-9

diff-9:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../mflowgen/steps/info 9-info | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../mflowgen/steps/info.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 9-info.*' && echo || true

.PHONY: diff-3

diff-3:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/pin-placement 3-pin-placement | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/pin-placement.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 3-pin-placement.*' && echo || true

.PHONY: diff-4

diff-4:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/rtl 4-rtl | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/rtl.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 4-rtl.*' && echo || true

.PHONY: diff-5

diff-5:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../../../../../../../afs/ir.stanford.edu/class/ee272/skywater-130nm-adk 5-skywater-130nm | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../../../../../../../afs/ir.stanford.edu/class/ee272/skywater-130nm-adk.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 5-skywater-130nm.*' && echo || true

.PHONY: diff-6

diff-6:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/sram 6-sram | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/sram.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 6-sram.*' && echo || true

.PHONY: diff-7

diff-7:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/synopsys-dc-compile 7-synopsys-dc-compile | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/synopsys-dc-compile.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 7-synopsys-dc-compile.*' && echo || true

.PHONY: diff-8

diff-8:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/testbench 8-testbench | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/testbench.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 8-testbench.*' && echo || true

.PHONY: diff-12

diff-12:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/cadence-xcelium-sim 12-cadence-ncsim-sim | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/cadence-xcelium-sim.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 12-cadence-ncsim-sim.*' && echo || true

.PHONY: diff-10

diff-10:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/synopsys-vcs-sim 10-synopsys-vcs-sim | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/synopsys-vcs-sim.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 10-synopsys-vcs-sim.*' && echo || true

.PHONY: diff-11

diff-11:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../mflowgen/steps/synopsys-dc-synthesis 11-synopsys-dc-synthesis | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../mflowgen/steps/synopsys-dc-synthesis.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 11-synopsys-dc-synthesis.*' && echo || true

.PHONY: diff-13

diff-13:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../mflowgen/steps/cadence-innovus-flowsetup 13-cadence-innovus-flowsetup | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../mflowgen/steps/cadence-innovus-flowsetup.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 13-cadence-innovus-flowsetup.*' && echo || true

.PHONY: diff-14

diff-14:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../mflowgen/steps/cadence-innovus-init 14-cadence-innovus-init | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../mflowgen/steps/cadence-innovus-init.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 14-cadence-innovus-init.*' && echo || true

.PHONY: diff-15

diff-15:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/cadence-innovus-power 15-cadence-innovus-power | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/cadence-innovus-power.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 15-cadence-innovus-power.*' && echo || true

.PHONY: diff-16

diff-16:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../mflowgen/steps/cadence-innovus-place 16-cadence-innovus-place | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../mflowgen/steps/cadence-innovus-place.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 16-cadence-innovus-place.*' && echo || true

.PHONY: diff-17

diff-17:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../mflowgen/steps/cadence-innovus-cts 17-cadence-innovus-cts | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../mflowgen/steps/cadence-innovus-cts.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 17-cadence-innovus-cts.*' && echo || true

.PHONY: diff-18

diff-18:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../mflowgen/steps/cadence-innovus-postcts_hold 18-cadence-innovus-postcts_hold | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../mflowgen/steps/cadence-innovus-postcts_hold.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 18-cadence-innovus-postcts_hold.*' && echo || true

.PHONY: diff-19

diff-19:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../mflowgen/steps/cadence-innovus-route 19-cadence-innovus-route | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../mflowgen/steps/cadence-innovus-route.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 19-cadence-innovus-route.*' && echo || true

.PHONY: diff-20

diff-20:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../mflowgen/steps/cadence-innovus-postroute 20-cadence-innovus-postroute | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../mflowgen/steps/cadence-innovus-postroute.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 20-cadence-innovus-postroute.*' && echo || true

.PHONY: diff-21

diff-21:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/cadence-innovus-signoff 21-cadence-innovus-signoff | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/cadence-innovus-signoff.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 21-cadence-innovus-signoff.*' && echo || true

.PHONY: diff-22

diff-22:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../mflowgen/steps/mentor-calibre-gdsmerge 22-mentor-calibre-gdsmerge | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../mflowgen/steps/mentor-calibre-gdsmerge.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 22-mentor-calibre-gdsmerge.*' && echo || true

.PHONY: diff-23

diff-23:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/open-magic-def2spice 23-open-magic-def2spice | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/open-magic-def2spice.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 23-open-magic-def2spice.*' && echo || true

.PHONY: diff-24

diff-24:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../mflowgen/steps/synopsys-pt-timing-signoff 24-synopsys-pt-timing-signoff | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../mflowgen/steps/synopsys-pt-timing-signoff.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 24-synopsys-pt-timing-signoff.*' && echo || true

.PHONY: diff-25

diff-25:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/synopsys-ptpx-rtl 25-synopsys-ptpx-rtl | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/synopsys-ptpx-rtl.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 25-synopsys-ptpx-rtl.*' && echo || true

.PHONY: diff-26

diff-26:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/synopsys-vcs-sim 26-gl-sim | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/synopsys-vcs-sim.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 26-gl-sim.*' && echo || true

.PHONY: diff-27

diff-27:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/open-netgen-lvs-def-spice 27-netgen-lvs-def | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/open-netgen-lvs-def-spice.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 27-netgen-lvs-def.*' && echo || true

.PHONY: diff-28

diff-28:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/open-magic-drc 28-open-magic-drc | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/open-magic-drc.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 28-open-magic-drc.*' && echo || true

.PHONY: diff-29

diff-29:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/open-magic-gds2spice 29-open-magic-gds2spice | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/open-magic-gds2spice.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 29-open-magic-gds2spice.*' && echo || true

.PHONY: diff-30

diff-30:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/open-magic-gds2spice-nobbox 30-open-magic-gds2spice-nobbox | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/open-magic-gds2spice-nobbox.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 30-open-magic-gds2spice-nobbox.*' && echo || true

.PHONY: diff-31

diff-31:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../mflowgen/steps/synopsys-vcd2saif-convert 31-gen-saif-gl | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../mflowgen/steps/synopsys-vcd2saif-convert.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 31-gen-saif-gl.*' && echo || true

.PHONY: diff-32

diff-32:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/mentor-calibre-comparison 32-mentor-calibre-comparison | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/mentor-calibre-comparison.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 32-mentor-calibre-comparison.*' && echo || true

.PHONY: diff-33

diff-33:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/mentor-calibre-comparison-nobbox 33-mentor-calibre-comparison-nobbox | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/mentor-calibre-comparison-nobbox.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 33-mentor-calibre-comparison-nobbox.*' && echo || true

.PHONY: diff-34

diff-34:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/open-netgen-lvs 34-netgen-lvs-gds | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/open-netgen-lvs.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 34-netgen-lvs-gds.*' && echo || true

.PHONY: diff-35

diff-35:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../mflowgen/steps/synopsys-ptpx-gl 35-synopsys-ptpx-gl | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../mflowgen/steps/synopsys-ptpx-gl.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 35-synopsys-ptpx-gl.*' && echo || true

# Info

.PHONY: info-2

info-2:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-dont-use-cells && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/2-cadence-innovus-dont-use-cells/configure.yml

.PHONY: info-0

info-0:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t constraints && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/0-constraints/configure.yml

.PHONY: info-1

info-1:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t floorplan && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/1-floorplan/configure.yml

.PHONY: info-9

info-9:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t info && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/9-info/configure.yml

.PHONY: info-3

info-3:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t pin-placement && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/3-pin-placement/configure.yml

.PHONY: info-4

info-4:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t rtl && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/4-rtl/configure.yml

.PHONY: info-5

info-5:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t skywater-130nm && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/5-skywater-130nm/configure.yml

.PHONY: info-6

info-6:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t sram && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/6-sram/configure.yml

.PHONY: info-7

info-7:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t synopsys-dc-compile && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/7-synopsys-dc-compile/configure.yml

.PHONY: info-8

info-8:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t testbench && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/8-testbench/configure.yml

.PHONY: info-12

info-12:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-ncsim-sim && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/12-cadence-ncsim-sim/configure.yml

.PHONY: info-10

info-10:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t synopsys-vcs-sim && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/10-synopsys-vcs-sim/configure.yml

.PHONY: info-11

info-11:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t synopsys-dc-synthesis && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/11-synopsys-dc-synthesis/configure.yml

.PHONY: info-13

info-13:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-flowsetup && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/13-cadence-innovus-flowsetup/configure.yml

.PHONY: info-14

info-14:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-init && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/14-cadence-innovus-init/configure.yml

.PHONY: info-15

info-15:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-power && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/15-cadence-innovus-power/configure.yml

.PHONY: info-16

info-16:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-place && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/16-cadence-innovus-place/configure.yml

.PHONY: info-17

info-17:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-cts && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/17-cadence-innovus-cts/configure.yml

.PHONY: info-18

info-18:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-postcts_hold && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/18-cadence-innovus-postcts_hold/configure.yml

.PHONY: info-19

info-19:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-route && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/19-cadence-innovus-route/configure.yml

.PHONY: info-20

info-20:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-postroute && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/20-cadence-innovus-postroute/configure.yml

.PHONY: info-21

info-21:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-signoff && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/21-cadence-innovus-signoff/configure.yml

.PHONY: info-22

info-22:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t mentor-calibre-gdsmerge && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/22-mentor-calibre-gdsmerge/configure.yml

.PHONY: info-23

info-23:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-def2spice && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/23-open-magic-def2spice/configure.yml

.PHONY: info-24

info-24:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t synopsys-pt-timing-signoff && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/24-synopsys-pt-timing-signoff/configure.yml

.PHONY: info-25

info-25:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t synopsys-ptpx-rtl && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/25-synopsys-ptpx-rtl/configure.yml

.PHONY: info-26

info-26:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t gl-sim && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/26-gl-sim/configure.yml

.PHONY: info-27

info-27:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t netgen-lvs-def && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/27-netgen-lvs-def/configure.yml

.PHONY: info-28

info-28:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-drc && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/28-open-magic-drc/configure.yml

.PHONY: info-29

info-29:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-gds2spice && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/29-open-magic-gds2spice/configure.yml

.PHONY: info-30

info-30:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-gds2spice-nobbox && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/30-open-magic-gds2spice-nobbox/configure.yml

.PHONY: info-31

info-31:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t gen-saif-gl && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/31-gen-saif-gl/configure.yml

.PHONY: info-32

info-32:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t mentor-calibre-comparison && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/32-mentor-calibre-comparison/configure.yml

.PHONY: info-33

info-33:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t mentor-calibre-comparison-nobbox && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/33-mentor-calibre-comparison-nobbox/configure.yml

.PHONY: info-34

info-34:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t netgen-lvs-gds && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/34-netgen-lvs-gds/configure.yml

.PHONY: info-35

info-35:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t synopsys-ptpx-gl && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/35-synopsys-ptpx-gl/configure.yml

# Runtimes

.PHONY: runtimes

runtimes:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-runtimes

# List

.PHONY: list

list:
	@echo && echo Generic Targets: && echo && printf " - %s\\n" "list      -- List all steps" "status    -- Print build status for each step" "runtimes  -- Print runtimes for each step" "graph     -- Generate a PDF of the step dependency graph" "clean-all -- Remove all build directories" "clean-N   -- Clean target N" "info-N    -- Print configured info for step N" "diff-N    -- Diff target N" && echo && echo Targets: && echo && printf " - %s\\n" "  0 : constraints" "  1 : floorplan" "  2 : cadence-innovus-dont-use-cells" "  3 : pin-placement" "  4 : rtl" "  5 : skywater-130nm" "  6 : sram" "  7 : synopsys-dc-compile" "  8 : testbench" "  9 : info" " 10 : synopsys-vcs-sim" " 11 : synopsys-dc-synthesis" " 12 : cadence-ncsim-sim" " 13 : cadence-innovus-flowsetup" " 14 : cadence-innovus-init" " 15 : cadence-innovus-power" " 16 : cadence-innovus-place" " 17 : cadence-innovus-cts" " 18 : cadence-innovus-postcts_hold" " 19 : cadence-innovus-route" " 20 : cadence-innovus-postroute" " 21 : cadence-innovus-signoff" " 22 : mentor-calibre-gdsmerge" " 23 : open-magic-def2spice" " 24 : synopsys-pt-timing-signoff" " 25 : synopsys-ptpx-rtl" " 26 : gl-sim" " 27 : netgen-lvs-def" " 28 : open-magic-drc" " 29 : open-magic-gds2spice" " 30 : open-magic-gds2spice-nobbox" " 31 : gen-saif-gl" " 32 : mentor-calibre-comparison" " 33 : mentor-calibre-comparison-nobbox" " 34 : netgen-lvs-gds" " 35 : synopsys-ptpx-gl" && echo && echo Debug Targets: && echo && printf " - %s\\n" "debug-11 : debug-synopsys-dc-synthesis" "debug-14 : debug-cadence-innovus-init" "debug-15 : debug-cadence-innovus-power" "debug-16 : debug-cadence-innovus-place" "debug-17 : debug-cadence-innovus-cts" "debug-18 : debug-cadence-innovus-postcts_hold" "debug-19 : debug-cadence-innovus-route" "debug-20 : debug-cadence-innovus-postroute" "debug-21 : debug-cadence-innovus-signoff" "debug-22 : debug-mentor-calibre-gdsmerge" "debug-32 : debug-mentor-calibre-comparison" "debug-33 : debug-mentor-calibre-comparison-nobbox" && echo

# Graph

.PHONY: graph

graph:
	dot -Tpdf .mflowgen/graph.dot > graph.pdf

# Status

.PHONY: status

status:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-status --backend make -s 16-cadence-innovus-place,11-synopsys-dc-synthesis,3-pin-placement,14-cadence-innovus-init,13-cadence-innovus-flowsetup,20-cadence-innovus-postroute,1-floorplan,15-cadence-innovus-power,4-rtl,10-synopsys-vcs-sim,17-cadence-innovus-cts,18-cadence-innovus-postcts_hold,8-testbench,7-synopsys-dc-compile,0-constraints,19-cadence-innovus-route,5-skywater-130nm,2-cadence-innovus-dont-use-cells,6-sram,9-info,12-cadence-ncsim-sim,21-cadence-innovus-signoff,22-mentor-calibre-gdsmerge,23-open-magic-def2spice,24-synopsys-pt-timing-signoff,25-synopsys-ptpx-rtl,26-gl-sim,27-netgen-lvs-def,28-open-magic-drc,29-open-magic-gds2spice,30-open-magic-gds2spice-nobbox,31-gen-saif-gl,32-mentor-calibre-comparison,33-mentor-calibre-comparison-nobbox,34-netgen-lvs-gds,35-synopsys-ptpx-gl

