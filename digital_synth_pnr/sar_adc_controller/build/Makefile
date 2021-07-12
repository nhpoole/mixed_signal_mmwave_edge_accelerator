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

default: constraints floorplan info pin-placement rtl skywater-130nm testbench cadence-ncsim-sim synopsys-vcs-sim synopsys-dc-synthesis cadence-innovus-flowsetup cadence-innovus-init cadence-innovus-power cadence-innovus-place cadence-innovus-cts cadence-innovus-postcts_hold cadence-innovus-route cadence-innovus-postroute cadence-innovus-signoff mentor-calibre-gdsmerge open-magic-def2spice synopsys-pt-timing-signoff synopsys-ptpx-rtl gl-sim netgen-lvs-def open-magic-antenna open-magic-drc open-magic-gds2spice gen-saif-gl mentor-calibre-comparison netgen-lvs-gds synopsys-ptpx-gl

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

ifeq ("$(wildcard 2-info/.prebuilt)","")
2-info/.stamp:
	$(call cpdir-and-parameterize,2-info,../../mflowgen/steps/info,2-info/.stamp)
endif

# collect inputs

# execute

ifeq ("$(wildcard 2-info/.prebuilt)","")

define 2_info_commands_rule
	mkdir -p 2-info/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t info && chmod +x .mflowgen/2-info/mflowgen-run && cp -f .mflowgen/2-info/mflowgen-run 2-info && if [[ -e .mflowgen/2-info/mflowgen-debug ]]; then chmod +x .mflowgen/2-info/mflowgen-debug && cp -f .mflowgen/2-info/mflowgen-debug 2-info; fi && if [[ -e .mflowgen/2-info/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/2-info/mflowgen-check-preconditions.py && cp -f .mflowgen/2-info/mflowgen-check-preconditions.py 2-info; fi && if [[ -e .mflowgen/2-info/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/2-info/mflowgen-check-postconditions.py && cp -f .mflowgen/2-info/mflowgen-check-postconditions.py 2-info; fi && cd 2-info && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 2-info/outputs/*
endef

2-info/.execstamp: 2-info/.stamp
	$(call 2_info_commands_rule)

2-info/.execstamp.execute-phony: 2-info/.execstamp
	touch $@

endif

# collect outputs

# post-conditions

define 2_info_post_conditions_commands_rule
	cd 2-info && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

2-info/.postconditions.stamp: 2-info/.execstamp 2-info/.execstamp.execute-phony
	$(call 2_info_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: info

info: 2-info/.execstamp 2-info/.execstamp.execute-phony 2-info/.postconditions.stamp

.PHONY: 2

2: 2-info/.execstamp 2-info/.execstamp.execute-phony 2-info/.postconditions.stamp

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
# testbench
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 6-testbench/.prebuilt)","")
6-testbench/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
6-testbench/.stamp:
	$(call cpdir-and-parameterize,6-testbench,../design/testbench,6-testbench/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 6-testbench/.prebuilt)","")
6-testbench/inputs/.stamp.adk: 6-testbench/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,6-testbench/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

# execute

ifeq ("$(wildcard 6-testbench/.prebuilt)","")

define 6_testbench_commands_rule
	mkdir -p 6-testbench/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t testbench && chmod +x .mflowgen/6-testbench/mflowgen-run && cp -f .mflowgen/6-testbench/mflowgen-run 6-testbench && if [[ -e .mflowgen/6-testbench/mflowgen-debug ]]; then chmod +x .mflowgen/6-testbench/mflowgen-debug && cp -f .mflowgen/6-testbench/mflowgen-debug 6-testbench; fi && if [[ -e .mflowgen/6-testbench/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/6-testbench/mflowgen-check-preconditions.py && cp -f .mflowgen/6-testbench/mflowgen-check-preconditions.py 6-testbench; fi && if [[ -e .mflowgen/6-testbench/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/6-testbench/mflowgen-check-postconditions.py && cp -f .mflowgen/6-testbench/mflowgen-check-postconditions.py 6-testbench; fi && cd 6-testbench && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 6-testbench/outputs/*
endef

6-testbench/.execstamp: 6-testbench/.stamp 6-testbench/inputs/.stamp.adk
	$(call 6_testbench_commands_rule)
	touch $@

6-testbench/outputs/.execstamp.testbench.sv: 6-testbench/.execstamp
	touch $@
6-testbench/outputs/.execstamp.testbench.v: 6-testbench/.execstamp
	touch $@
6-testbench/outputs/.execstamp.design.args: 6-testbench/.execstamp
	touch $@
6-testbench/outputs/.execstamp.design.args.gls: 6-testbench/.execstamp
	touch $@

endif

# collect outputs

6-testbench/outputs/.stamp.testbench.sv: 6-testbench/.execstamp 6-testbench/outputs/.execstamp.design.args 6-testbench/outputs/.execstamp.design.args.gls 6-testbench/outputs/.execstamp.testbench.sv 6-testbench/outputs/.execstamp.testbench.v
	$(call stamp,6-testbench/outputs/.stamp.testbench.sv)

6-testbench/outputs/.stamp.testbench.v: 6-testbench/.execstamp 6-testbench/outputs/.execstamp.design.args 6-testbench/outputs/.execstamp.design.args.gls 6-testbench/outputs/.execstamp.testbench.sv 6-testbench/outputs/.execstamp.testbench.v
	$(call stamp,6-testbench/outputs/.stamp.testbench.v)

6-testbench/outputs/.stamp.design.args: 6-testbench/.execstamp 6-testbench/outputs/.execstamp.design.args 6-testbench/outputs/.execstamp.design.args.gls 6-testbench/outputs/.execstamp.testbench.sv 6-testbench/outputs/.execstamp.testbench.v
	$(call stamp,6-testbench/outputs/.stamp.design.args)

6-testbench/outputs/.stamp.design.args.gls: 6-testbench/.execstamp 6-testbench/outputs/.execstamp.design.args 6-testbench/outputs/.execstamp.design.args.gls 6-testbench/outputs/.execstamp.testbench.sv 6-testbench/outputs/.execstamp.testbench.v
	$(call stamp,6-testbench/outputs/.stamp.design.args.gls)

# post-conditions

define 6_testbench_post_conditions_commands_rule
	cd 6-testbench && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

6-testbench/.postconditions.stamp: 6-testbench/.execstamp 6-testbench/outputs/.execstamp.design.args 6-testbench/outputs/.execstamp.design.args.gls 6-testbench/outputs/.execstamp.testbench.sv 6-testbench/outputs/.execstamp.testbench.v 6-testbench/outputs/.stamp.design.args 6-testbench/outputs/.stamp.design.args.gls 6-testbench/outputs/.stamp.testbench.sv 6-testbench/outputs/.stamp.testbench.v
	$(call 6_testbench_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: testbench

testbench: 6-testbench/.execstamp 6-testbench/.postconditions.stamp 6-testbench/outputs/.execstamp.design.args 6-testbench/outputs/.execstamp.design.args.gls 6-testbench/outputs/.execstamp.testbench.sv 6-testbench/outputs/.execstamp.testbench.v 6-testbench/outputs/.stamp.design.args 6-testbench/outputs/.stamp.design.args.gls 6-testbench/outputs/.stamp.testbench.sv 6-testbench/outputs/.stamp.testbench.v

.PHONY: 6

6: 6-testbench/.execstamp 6-testbench/.postconditions.stamp 6-testbench/outputs/.execstamp.design.args 6-testbench/outputs/.execstamp.design.args.gls 6-testbench/outputs/.execstamp.testbench.sv 6-testbench/outputs/.execstamp.testbench.v 6-testbench/outputs/.stamp.design.args 6-testbench/outputs/.stamp.design.args.gls 6-testbench/outputs/.stamp.testbench.sv 6-testbench/outputs/.stamp.testbench.v

# debug

# ------------------------------------------------------------------------
# cadence-ncsim-sim
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 7-cadence-ncsim-sim/.prebuilt)","")
7-cadence-ncsim-sim/.stamp: 4-rtl/.execstamp 4-rtl/.postconditions.stamp 4-rtl/outputs/.execstamp.design.v 4-rtl/outputs/.execstamp.design.vcs.v 4-rtl/outputs/.stamp.design.v 4-rtl/outputs/.stamp.design.vcs.v
7-cadence-ncsim-sim/.stamp: 6-testbench/.execstamp 6-testbench/.postconditions.stamp 6-testbench/outputs/.execstamp.design.args 6-testbench/outputs/.execstamp.design.args.gls 6-testbench/outputs/.execstamp.testbench.sv 6-testbench/outputs/.execstamp.testbench.v 6-testbench/outputs/.stamp.design.args 6-testbench/outputs/.stamp.design.args.gls 6-testbench/outputs/.stamp.testbench.sv 6-testbench/outputs/.stamp.testbench.v
7-cadence-ncsim-sim/.stamp:
	$(call cpdir-and-parameterize,7-cadence-ncsim-sim,../design/cadence-xcelium-sim,7-cadence-ncsim-sim/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 7-cadence-ncsim-sim/.prebuilt)","")
7-cadence-ncsim-sim/inputs/.stamp.design.args: 7-cadence-ncsim-sim/.stamp 6-testbench/outputs/.stamp.design.args
	$(call symlink,7-cadence-ncsim-sim/inputs,design.args,../../6-testbench/outputs/design.args,.stamp.design.args)
endif

ifeq ("$(wildcard 7-cadence-ncsim-sim/.prebuilt)","")
7-cadence-ncsim-sim/inputs/.stamp.design.v: 7-cadence-ncsim-sim/.stamp 4-rtl/outputs/.stamp.design.v
	$(call symlink,7-cadence-ncsim-sim/inputs,design.v,../../4-rtl/outputs/design.v,.stamp.design.v)
endif

ifeq ("$(wildcard 7-cadence-ncsim-sim/.prebuilt)","")
7-cadence-ncsim-sim/inputs/.stamp.testbench.v: 7-cadence-ncsim-sim/.stamp 6-testbench/outputs/.stamp.testbench.v
	$(call symlink,7-cadence-ncsim-sim/inputs,testbench.v,../../6-testbench/outputs/testbench.v,.stamp.testbench.v)
endif

# execute

ifeq ("$(wildcard 7-cadence-ncsim-sim/.prebuilt)","")

define 7_cadence_ncsim_sim_commands_rule
	mkdir -p 7-cadence-ncsim-sim/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-ncsim-sim && chmod +x .mflowgen/7-cadence-ncsim-sim/mflowgen-run && cp -f .mflowgen/7-cadence-ncsim-sim/mflowgen-run 7-cadence-ncsim-sim && if [[ -e .mflowgen/7-cadence-ncsim-sim/mflowgen-debug ]]; then chmod +x .mflowgen/7-cadence-ncsim-sim/mflowgen-debug && cp -f .mflowgen/7-cadence-ncsim-sim/mflowgen-debug 7-cadence-ncsim-sim; fi && if [[ -e .mflowgen/7-cadence-ncsim-sim/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/7-cadence-ncsim-sim/mflowgen-check-preconditions.py && cp -f .mflowgen/7-cadence-ncsim-sim/mflowgen-check-preconditions.py 7-cadence-ncsim-sim; fi && if [[ -e .mflowgen/7-cadence-ncsim-sim/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/7-cadence-ncsim-sim/mflowgen-check-postconditions.py && cp -f .mflowgen/7-cadence-ncsim-sim/mflowgen-check-postconditions.py 7-cadence-ncsim-sim; fi && cd 7-cadence-ncsim-sim && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 7-cadence-ncsim-sim/outputs/*
endef

7-cadence-ncsim-sim/.execstamp: 7-cadence-ncsim-sim/.stamp 7-cadence-ncsim-sim/inputs/.stamp.design.args 7-cadence-ncsim-sim/inputs/.stamp.design.v 7-cadence-ncsim-sim/inputs/.stamp.testbench.v
	$(call 7_cadence_ncsim_sim_commands_rule)
	touch $@

7-cadence-ncsim-sim/outputs/.execstamp.design.vcd: 7-cadence-ncsim-sim/.execstamp
	touch $@

endif

# collect outputs

7-cadence-ncsim-sim/outputs/.stamp.design.vcd: 7-cadence-ncsim-sim/.execstamp 7-cadence-ncsim-sim/outputs/.execstamp.design.vcd
	$(call stamp,7-cadence-ncsim-sim/outputs/.stamp.design.vcd)

# post-conditions

define 7_cadence_ncsim_sim_post_conditions_commands_rule
	cd 7-cadence-ncsim-sim && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

7-cadence-ncsim-sim/.postconditions.stamp: 7-cadence-ncsim-sim/.execstamp 7-cadence-ncsim-sim/outputs/.execstamp.design.vcd 7-cadence-ncsim-sim/outputs/.stamp.design.vcd
	$(call 7_cadence_ncsim_sim_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-ncsim-sim

cadence-ncsim-sim: 7-cadence-ncsim-sim/.execstamp 7-cadence-ncsim-sim/.postconditions.stamp 7-cadence-ncsim-sim/outputs/.execstamp.design.vcd 7-cadence-ncsim-sim/outputs/.stamp.design.vcd

.PHONY: 7

7: 7-cadence-ncsim-sim/.execstamp 7-cadence-ncsim-sim/.postconditions.stamp 7-cadence-ncsim-sim/outputs/.execstamp.design.vcd 7-cadence-ncsim-sim/outputs/.stamp.design.vcd

# debug

# ------------------------------------------------------------------------
# synopsys-vcs-sim
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 8-synopsys-vcs-sim/.prebuilt)","")
8-synopsys-vcs-sim/.stamp: 4-rtl/.execstamp 4-rtl/.postconditions.stamp 4-rtl/outputs/.execstamp.design.v 4-rtl/outputs/.execstamp.design.vcs.v 4-rtl/outputs/.stamp.design.v 4-rtl/outputs/.stamp.design.vcs.v
8-synopsys-vcs-sim/.stamp: 6-testbench/.execstamp 6-testbench/.postconditions.stamp 6-testbench/outputs/.execstamp.design.args 6-testbench/outputs/.execstamp.design.args.gls 6-testbench/outputs/.execstamp.testbench.sv 6-testbench/outputs/.execstamp.testbench.v 6-testbench/outputs/.stamp.design.args 6-testbench/outputs/.stamp.design.args.gls 6-testbench/outputs/.stamp.testbench.sv 6-testbench/outputs/.stamp.testbench.v
8-synopsys-vcs-sim/.stamp:
	$(call cpdir-and-parameterize,8-synopsys-vcs-sim,../design/synopsys-vcs-sim,8-synopsys-vcs-sim/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 8-synopsys-vcs-sim/.prebuilt)","")
8-synopsys-vcs-sim/inputs/.stamp.design.args: 8-synopsys-vcs-sim/.stamp 6-testbench/outputs/.stamp.design.args
	$(call symlink,8-synopsys-vcs-sim/inputs,design.args,../../6-testbench/outputs/design.args,.stamp.design.args)
endif

ifeq ("$(wildcard 8-synopsys-vcs-sim/.prebuilt)","")
8-synopsys-vcs-sim/inputs/.stamp.design.vcs.v: 8-synopsys-vcs-sim/.stamp 4-rtl/outputs/.stamp.design.vcs.v
	$(call symlink,8-synopsys-vcs-sim/inputs,design.vcs.v,../../4-rtl/outputs/design.vcs.v,.stamp.design.vcs.v)
endif

ifeq ("$(wildcard 8-synopsys-vcs-sim/.prebuilt)","")
8-synopsys-vcs-sim/inputs/.stamp.testbench.sv: 8-synopsys-vcs-sim/.stamp 6-testbench/outputs/.stamp.testbench.sv
	$(call symlink,8-synopsys-vcs-sim/inputs,testbench.sv,../../6-testbench/outputs/testbench.sv,.stamp.testbench.sv)
endif

# execute

ifeq ("$(wildcard 8-synopsys-vcs-sim/.prebuilt)","")

define 8_synopsys_vcs_sim_commands_rule
	mkdir -p 8-synopsys-vcs-sim/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t synopsys-vcs-sim && chmod +x .mflowgen/8-synopsys-vcs-sim/mflowgen-run && cp -f .mflowgen/8-synopsys-vcs-sim/mflowgen-run 8-synopsys-vcs-sim && if [[ -e .mflowgen/8-synopsys-vcs-sim/mflowgen-debug ]]; then chmod +x .mflowgen/8-synopsys-vcs-sim/mflowgen-debug && cp -f .mflowgen/8-synopsys-vcs-sim/mflowgen-debug 8-synopsys-vcs-sim; fi && if [[ -e .mflowgen/8-synopsys-vcs-sim/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/8-synopsys-vcs-sim/mflowgen-check-preconditions.py && cp -f .mflowgen/8-synopsys-vcs-sim/mflowgen-check-preconditions.py 8-synopsys-vcs-sim; fi && if [[ -e .mflowgen/8-synopsys-vcs-sim/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/8-synopsys-vcs-sim/mflowgen-check-postconditions.py && cp -f .mflowgen/8-synopsys-vcs-sim/mflowgen-check-postconditions.py 8-synopsys-vcs-sim; fi && cd 8-synopsys-vcs-sim && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 8-synopsys-vcs-sim/outputs/*
endef

8-synopsys-vcs-sim/.execstamp: 8-synopsys-vcs-sim/.stamp 8-synopsys-vcs-sim/inputs/.stamp.design.args 8-synopsys-vcs-sim/inputs/.stamp.design.vcs.v 8-synopsys-vcs-sim/inputs/.stamp.testbench.sv
	$(call 8_synopsys_vcs_sim_commands_rule)
	touch $@

8-synopsys-vcs-sim/outputs/.execstamp.design.vpd: 8-synopsys-vcs-sim/.execstamp
	touch $@
8-synopsys-vcs-sim/outputs/.execstamp.run.saif: 8-synopsys-vcs-sim/.execstamp
	touch $@

endif

# collect outputs

8-synopsys-vcs-sim/outputs/.stamp.design.vpd: 8-synopsys-vcs-sim/.execstamp 8-synopsys-vcs-sim/outputs/.execstamp.design.vpd 8-synopsys-vcs-sim/outputs/.execstamp.run.saif
	$(call stamp,8-synopsys-vcs-sim/outputs/.stamp.design.vpd)

8-synopsys-vcs-sim/outputs/.stamp.run.saif: 8-synopsys-vcs-sim/.execstamp 8-synopsys-vcs-sim/outputs/.execstamp.design.vpd 8-synopsys-vcs-sim/outputs/.execstamp.run.saif
	$(call stamp,8-synopsys-vcs-sim/outputs/.stamp.run.saif)

# post-conditions

define 8_synopsys_vcs_sim_post_conditions_commands_rule
	cd 8-synopsys-vcs-sim && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

8-synopsys-vcs-sim/.postconditions.stamp: 8-synopsys-vcs-sim/.execstamp 8-synopsys-vcs-sim/outputs/.execstamp.design.vpd 8-synopsys-vcs-sim/outputs/.execstamp.run.saif 8-synopsys-vcs-sim/outputs/.stamp.design.vpd 8-synopsys-vcs-sim/outputs/.stamp.run.saif
	$(call 8_synopsys_vcs_sim_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: synopsys-vcs-sim

synopsys-vcs-sim: 8-synopsys-vcs-sim/.execstamp 8-synopsys-vcs-sim/.postconditions.stamp 8-synopsys-vcs-sim/outputs/.execstamp.design.vpd 8-synopsys-vcs-sim/outputs/.execstamp.run.saif 8-synopsys-vcs-sim/outputs/.stamp.design.vpd 8-synopsys-vcs-sim/outputs/.stamp.run.saif

.PHONY: 8

8: 8-synopsys-vcs-sim/.execstamp 8-synopsys-vcs-sim/.postconditions.stamp 8-synopsys-vcs-sim/outputs/.execstamp.design.vpd 8-synopsys-vcs-sim/outputs/.execstamp.run.saif 8-synopsys-vcs-sim/outputs/.stamp.design.vpd 8-synopsys-vcs-sim/outputs/.stamp.run.saif

# debug

# ------------------------------------------------------------------------
# synopsys-dc-synthesis
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 9-synopsys-dc-synthesis/.prebuilt)","")
9-synopsys-dc-synthesis/.stamp: 0-constraints/.execstamp 0-constraints/.postconditions.stamp 0-constraints/outputs/.execstamp.constraints.tcl 0-constraints/outputs/.stamp.constraints.tcl
9-synopsys-dc-synthesis/.stamp: 4-rtl/.execstamp 4-rtl/.postconditions.stamp 4-rtl/outputs/.execstamp.design.v 4-rtl/outputs/.execstamp.design.vcs.v 4-rtl/outputs/.stamp.design.v 4-rtl/outputs/.stamp.design.vcs.v
9-synopsys-dc-synthesis/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
9-synopsys-dc-synthesis/.stamp: 8-synopsys-vcs-sim/.execstamp 8-synopsys-vcs-sim/.postconditions.stamp 8-synopsys-vcs-sim/outputs/.execstamp.design.vpd 8-synopsys-vcs-sim/outputs/.execstamp.run.saif 8-synopsys-vcs-sim/outputs/.stamp.design.vpd 8-synopsys-vcs-sim/outputs/.stamp.run.saif
9-synopsys-dc-synthesis/.stamp:
	$(call cpdir-and-parameterize,9-synopsys-dc-synthesis,../../mflowgen/steps/synopsys-dc-synthesis,9-synopsys-dc-synthesis/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 9-synopsys-dc-synthesis/.prebuilt)","")
9-synopsys-dc-synthesis/inputs/.stamp.adk: 9-synopsys-dc-synthesis/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,9-synopsys-dc-synthesis/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 9-synopsys-dc-synthesis/.prebuilt)","")
9-synopsys-dc-synthesis/inputs/.stamp.constraints.tcl: 9-synopsys-dc-synthesis/.stamp 0-constraints/outputs/.stamp.constraints.tcl
	$(call symlink,9-synopsys-dc-synthesis/inputs,constraints.tcl,../../0-constraints/outputs/constraints.tcl,.stamp.constraints.tcl)
endif

ifeq ("$(wildcard 9-synopsys-dc-synthesis/.prebuilt)","")
9-synopsys-dc-synthesis/inputs/.stamp.design.v: 9-synopsys-dc-synthesis/.stamp 4-rtl/outputs/.stamp.design.v
	$(call symlink,9-synopsys-dc-synthesis/inputs,design.v,../../4-rtl/outputs/design.v,.stamp.design.v)
endif

ifeq ("$(wildcard 9-synopsys-dc-synthesis/.prebuilt)","")
9-synopsys-dc-synthesis/inputs/.stamp.run.saif: 9-synopsys-dc-synthesis/.stamp 8-synopsys-vcs-sim/outputs/.stamp.run.saif
	$(call symlink,9-synopsys-dc-synthesis/inputs,run.saif,../../8-synopsys-vcs-sim/outputs/run.saif,.stamp.run.saif)
endif

# execute

ifeq ("$(wildcard 9-synopsys-dc-synthesis/.prebuilt)","")

define 9_synopsys_dc_synthesis_commands_rule
	mkdir -p 9-synopsys-dc-synthesis/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t synopsys-dc-synthesis && chmod +x .mflowgen/9-synopsys-dc-synthesis/mflowgen-run && cp -f .mflowgen/9-synopsys-dc-synthesis/mflowgen-run 9-synopsys-dc-synthesis && if [[ -e .mflowgen/9-synopsys-dc-synthesis/mflowgen-debug ]]; then chmod +x .mflowgen/9-synopsys-dc-synthesis/mflowgen-debug && cp -f .mflowgen/9-synopsys-dc-synthesis/mflowgen-debug 9-synopsys-dc-synthesis; fi && if [[ -e .mflowgen/9-synopsys-dc-synthesis/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/9-synopsys-dc-synthesis/mflowgen-check-preconditions.py && cp -f .mflowgen/9-synopsys-dc-synthesis/mflowgen-check-preconditions.py 9-synopsys-dc-synthesis; fi && if [[ -e .mflowgen/9-synopsys-dc-synthesis/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/9-synopsys-dc-synthesis/mflowgen-check-postconditions.py && cp -f .mflowgen/9-synopsys-dc-synthesis/mflowgen-check-postconditions.py 9-synopsys-dc-synthesis; fi && cd 9-synopsys-dc-synthesis && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 9-synopsys-dc-synthesis/outputs/*
endef

9-synopsys-dc-synthesis/.execstamp: 9-synopsys-dc-synthesis/.stamp 9-synopsys-dc-synthesis/inputs/.stamp.adk 9-synopsys-dc-synthesis/inputs/.stamp.constraints.tcl 9-synopsys-dc-synthesis/inputs/.stamp.design.v 9-synopsys-dc-synthesis/inputs/.stamp.run.saif
	$(call 9_synopsys_dc_synthesis_commands_rule)
	touch $@

9-synopsys-dc-synthesis/outputs/.execstamp.design.v: 9-synopsys-dc-synthesis/.execstamp
	touch $@
9-synopsys-dc-synthesis/outputs/.execstamp.design.sdc: 9-synopsys-dc-synthesis/.execstamp
	touch $@
9-synopsys-dc-synthesis/outputs/.execstamp.design.namemap: 9-synopsys-dc-synthesis/.execstamp
	touch $@
9-synopsys-dc-synthesis/outputs/.execstamp.design.svf: 9-synopsys-dc-synthesis/.execstamp
	touch $@

endif

# collect outputs

9-synopsys-dc-synthesis/outputs/.stamp.design.v: 9-synopsys-dc-synthesis/.execstamp 9-synopsys-dc-synthesis/outputs/.execstamp.design.namemap 9-synopsys-dc-synthesis/outputs/.execstamp.design.sdc 9-synopsys-dc-synthesis/outputs/.execstamp.design.svf 9-synopsys-dc-synthesis/outputs/.execstamp.design.v
	$(call stamp,9-synopsys-dc-synthesis/outputs/.stamp.design.v)

9-synopsys-dc-synthesis/outputs/.stamp.design.sdc: 9-synopsys-dc-synthesis/.execstamp 9-synopsys-dc-synthesis/outputs/.execstamp.design.namemap 9-synopsys-dc-synthesis/outputs/.execstamp.design.sdc 9-synopsys-dc-synthesis/outputs/.execstamp.design.svf 9-synopsys-dc-synthesis/outputs/.execstamp.design.v
	$(call stamp,9-synopsys-dc-synthesis/outputs/.stamp.design.sdc)

9-synopsys-dc-synthesis/outputs/.stamp.design.namemap: 9-synopsys-dc-synthesis/.execstamp 9-synopsys-dc-synthesis/outputs/.execstamp.design.namemap 9-synopsys-dc-synthesis/outputs/.execstamp.design.sdc 9-synopsys-dc-synthesis/outputs/.execstamp.design.svf 9-synopsys-dc-synthesis/outputs/.execstamp.design.v
	$(call stamp,9-synopsys-dc-synthesis/outputs/.stamp.design.namemap)

9-synopsys-dc-synthesis/outputs/.stamp.design.svf: 9-synopsys-dc-synthesis/.execstamp 9-synopsys-dc-synthesis/outputs/.execstamp.design.namemap 9-synopsys-dc-synthesis/outputs/.execstamp.design.sdc 9-synopsys-dc-synthesis/outputs/.execstamp.design.svf 9-synopsys-dc-synthesis/outputs/.execstamp.design.v
	$(call stamp,9-synopsys-dc-synthesis/outputs/.stamp.design.svf)

# post-conditions

define 9_synopsys_dc_synthesis_post_conditions_commands_rule
	cd 9-synopsys-dc-synthesis && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

9-synopsys-dc-synthesis/.postconditions.stamp: 9-synopsys-dc-synthesis/.execstamp 9-synopsys-dc-synthesis/outputs/.execstamp.design.namemap 9-synopsys-dc-synthesis/outputs/.execstamp.design.sdc 9-synopsys-dc-synthesis/outputs/.execstamp.design.svf 9-synopsys-dc-synthesis/outputs/.execstamp.design.v 9-synopsys-dc-synthesis/outputs/.stamp.design.namemap 9-synopsys-dc-synthesis/outputs/.stamp.design.sdc 9-synopsys-dc-synthesis/outputs/.stamp.design.svf 9-synopsys-dc-synthesis/outputs/.stamp.design.v
	$(call 9_synopsys_dc_synthesis_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: synopsys-dc-synthesis

synopsys-dc-synthesis: 9-synopsys-dc-synthesis/.execstamp 9-synopsys-dc-synthesis/.postconditions.stamp 9-synopsys-dc-synthesis/outputs/.execstamp.design.namemap 9-synopsys-dc-synthesis/outputs/.execstamp.design.sdc 9-synopsys-dc-synthesis/outputs/.execstamp.design.svf 9-synopsys-dc-synthesis/outputs/.execstamp.design.v 9-synopsys-dc-synthesis/outputs/.stamp.design.namemap 9-synopsys-dc-synthesis/outputs/.stamp.design.sdc 9-synopsys-dc-synthesis/outputs/.stamp.design.svf 9-synopsys-dc-synthesis/outputs/.stamp.design.v

.PHONY: 9

9: 9-synopsys-dc-synthesis/.execstamp 9-synopsys-dc-synthesis/.postconditions.stamp 9-synopsys-dc-synthesis/outputs/.execstamp.design.namemap 9-synopsys-dc-synthesis/outputs/.execstamp.design.sdc 9-synopsys-dc-synthesis/outputs/.execstamp.design.svf 9-synopsys-dc-synthesis/outputs/.execstamp.design.v 9-synopsys-dc-synthesis/outputs/.stamp.design.namemap 9-synopsys-dc-synthesis/outputs/.stamp.design.sdc 9-synopsys-dc-synthesis/outputs/.stamp.design.svf 9-synopsys-dc-synthesis/outputs/.stamp.design.v

# debug

define 9_debug_rule
	cd 9-synopsys-dc-synthesis && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-synopsys-dc-synthesis: 
	$(call 9_debug_rule)

.PHONY: debug-9

debug-9: debug-synopsys-dc-synthesis

# ------------------------------------------------------------------------
# cadence-innovus-flowsetup
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 10-cadence-innovus-flowsetup/.prebuilt)","")
10-cadence-innovus-flowsetup/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
10-cadence-innovus-flowsetup/.stamp: 9-synopsys-dc-synthesis/.execstamp 9-synopsys-dc-synthesis/.postconditions.stamp 9-synopsys-dc-synthesis/outputs/.execstamp.design.namemap 9-synopsys-dc-synthesis/outputs/.execstamp.design.sdc 9-synopsys-dc-synthesis/outputs/.execstamp.design.svf 9-synopsys-dc-synthesis/outputs/.execstamp.design.v 9-synopsys-dc-synthesis/outputs/.stamp.design.namemap 9-synopsys-dc-synthesis/outputs/.stamp.design.sdc 9-synopsys-dc-synthesis/outputs/.stamp.design.svf 9-synopsys-dc-synthesis/outputs/.stamp.design.v
10-cadence-innovus-flowsetup/.stamp:
	$(call cpdir-and-parameterize,10-cadence-innovus-flowsetup,../../mflowgen/steps/cadence-innovus-flowsetup,10-cadence-innovus-flowsetup/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 10-cadence-innovus-flowsetup/.prebuilt)","")
10-cadence-innovus-flowsetup/inputs/.stamp.adk: 10-cadence-innovus-flowsetup/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,10-cadence-innovus-flowsetup/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 10-cadence-innovus-flowsetup/.prebuilt)","")
10-cadence-innovus-flowsetup/inputs/.stamp.design.sdc: 10-cadence-innovus-flowsetup/.stamp 9-synopsys-dc-synthesis/outputs/.stamp.design.sdc
	$(call symlink,10-cadence-innovus-flowsetup/inputs,design.sdc,../../9-synopsys-dc-synthesis/outputs/design.sdc,.stamp.design.sdc)
endif

ifeq ("$(wildcard 10-cadence-innovus-flowsetup/.prebuilt)","")
10-cadence-innovus-flowsetup/inputs/.stamp.design.v: 10-cadence-innovus-flowsetup/.stamp 9-synopsys-dc-synthesis/outputs/.stamp.design.v
	$(call symlink,10-cadence-innovus-flowsetup/inputs,design.v,../../9-synopsys-dc-synthesis/outputs/design.v,.stamp.design.v)
endif

# execute

ifeq ("$(wildcard 10-cadence-innovus-flowsetup/.prebuilt)","")

define 10_cadence_innovus_flowsetup_commands_rule
	mkdir -p 10-cadence-innovus-flowsetup/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-flowsetup && chmod +x .mflowgen/10-cadence-innovus-flowsetup/mflowgen-run && cp -f .mflowgen/10-cadence-innovus-flowsetup/mflowgen-run 10-cadence-innovus-flowsetup && if [[ -e .mflowgen/10-cadence-innovus-flowsetup/mflowgen-debug ]]; then chmod +x .mflowgen/10-cadence-innovus-flowsetup/mflowgen-debug && cp -f .mflowgen/10-cadence-innovus-flowsetup/mflowgen-debug 10-cadence-innovus-flowsetup; fi && if [[ -e .mflowgen/10-cadence-innovus-flowsetup/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/10-cadence-innovus-flowsetup/mflowgen-check-preconditions.py && cp -f .mflowgen/10-cadence-innovus-flowsetup/mflowgen-check-preconditions.py 10-cadence-innovus-flowsetup; fi && if [[ -e .mflowgen/10-cadence-innovus-flowsetup/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/10-cadence-innovus-flowsetup/mflowgen-check-postconditions.py && cp -f .mflowgen/10-cadence-innovus-flowsetup/mflowgen-check-postconditions.py 10-cadence-innovus-flowsetup; fi && cd 10-cadence-innovus-flowsetup && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 10-cadence-innovus-flowsetup/outputs/*
endef

10-cadence-innovus-flowsetup/.execstamp: 10-cadence-innovus-flowsetup/.stamp 10-cadence-innovus-flowsetup/inputs/.stamp.adk 10-cadence-innovus-flowsetup/inputs/.stamp.design.sdc 10-cadence-innovus-flowsetup/inputs/.stamp.design.v
	$(call 10_cadence_innovus_flowsetup_commands_rule)
	touch $@

10-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow: 10-cadence-innovus-flowsetup/.execstamp
	touch $@

endif

# collect outputs

10-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow: 10-cadence-innovus-flowsetup/.execstamp 10-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow
	$(call stamp,10-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow)

# post-conditions

define 10_cadence_innovus_flowsetup_post_conditions_commands_rule
	cd 10-cadence-innovus-flowsetup && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

10-cadence-innovus-flowsetup/.postconditions.stamp: 10-cadence-innovus-flowsetup/.execstamp 10-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 10-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call 10_cadence_innovus_flowsetup_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-flowsetup

cadence-innovus-flowsetup: 10-cadence-innovus-flowsetup/.execstamp 10-cadence-innovus-flowsetup/.postconditions.stamp 10-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 10-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow

.PHONY: 10

10: 10-cadence-innovus-flowsetup/.execstamp 10-cadence-innovus-flowsetup/.postconditions.stamp 10-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 10-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow

# debug

# ------------------------------------------------------------------------
# cadence-innovus-init
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 11-cadence-innovus-init/.prebuilt)","")
11-cadence-innovus-init/.stamp: 1-floorplan/.execstamp 1-floorplan/.postconditions.stamp 1-floorplan/outputs/.execstamp.floorplan.tcl 1-floorplan/outputs/.stamp.floorplan.tcl
11-cadence-innovus-init/.stamp: 10-cadence-innovus-flowsetup/.execstamp 10-cadence-innovus-flowsetup/.postconditions.stamp 10-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 10-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
11-cadence-innovus-init/.stamp: 3-pin-placement/.execstamp 3-pin-placement/.postconditions.stamp 3-pin-placement/outputs/.execstamp.pin-assignments.tcl 3-pin-placement/outputs/.stamp.pin-assignments.tcl
11-cadence-innovus-init/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
11-cadence-innovus-init/.stamp: 9-synopsys-dc-synthesis/.execstamp 9-synopsys-dc-synthesis/.postconditions.stamp 9-synopsys-dc-synthesis/outputs/.execstamp.design.namemap 9-synopsys-dc-synthesis/outputs/.execstamp.design.sdc 9-synopsys-dc-synthesis/outputs/.execstamp.design.svf 9-synopsys-dc-synthesis/outputs/.execstamp.design.v 9-synopsys-dc-synthesis/outputs/.stamp.design.namemap 9-synopsys-dc-synthesis/outputs/.stamp.design.sdc 9-synopsys-dc-synthesis/outputs/.stamp.design.svf 9-synopsys-dc-synthesis/outputs/.stamp.design.v
11-cadence-innovus-init/.stamp:
	$(call cpdir-and-parameterize,11-cadence-innovus-init,../../mflowgen/steps/cadence-innovus-init,11-cadence-innovus-init/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 11-cadence-innovus-init/.prebuilt)","")
11-cadence-innovus-init/inputs/.stamp.adk: 11-cadence-innovus-init/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,11-cadence-innovus-init/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 11-cadence-innovus-init/.prebuilt)","")
11-cadence-innovus-init/inputs/.stamp.design.sdc: 11-cadence-innovus-init/.stamp 9-synopsys-dc-synthesis/outputs/.stamp.design.sdc
	$(call symlink,11-cadence-innovus-init/inputs,design.sdc,../../9-synopsys-dc-synthesis/outputs/design.sdc,.stamp.design.sdc)
endif

ifeq ("$(wildcard 11-cadence-innovus-init/.prebuilt)","")
11-cadence-innovus-init/inputs/.stamp.design.v: 11-cadence-innovus-init/.stamp 9-synopsys-dc-synthesis/outputs/.stamp.design.v
	$(call symlink,11-cadence-innovus-init/inputs,design.v,../../9-synopsys-dc-synthesis/outputs/design.v,.stamp.design.v)
endif

ifeq ("$(wildcard 11-cadence-innovus-init/.prebuilt)","")
11-cadence-innovus-init/inputs/.stamp.floorplan.tcl: 11-cadence-innovus-init/.stamp 1-floorplan/outputs/.stamp.floorplan.tcl
	$(call symlink,11-cadence-innovus-init/inputs,floorplan.tcl,../../1-floorplan/outputs/floorplan.tcl,.stamp.floorplan.tcl)
endif

ifeq ("$(wildcard 11-cadence-innovus-init/.prebuilt)","")
11-cadence-innovus-init/inputs/.stamp.innovus-foundation-flow: 11-cadence-innovus-init/.stamp 10-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call symlink,11-cadence-innovus-init/inputs,innovus-foundation-flow,../../10-cadence-innovus-flowsetup/outputs/innovus-foundation-flow,.stamp.innovus-foundation-flow)
endif

ifeq ("$(wildcard 11-cadence-innovus-init/.prebuilt)","")
11-cadence-innovus-init/inputs/.stamp.pin-assignments.tcl: 11-cadence-innovus-init/.stamp 3-pin-placement/outputs/.stamp.pin-assignments.tcl
	$(call symlink,11-cadence-innovus-init/inputs,pin-assignments.tcl,../../3-pin-placement/outputs/pin-assignments.tcl,.stamp.pin-assignments.tcl)
endif

# execute

ifeq ("$(wildcard 11-cadence-innovus-init/.prebuilt)","")

define 11_cadence_innovus_init_commands_rule
	mkdir -p 11-cadence-innovus-init/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-init && chmod +x .mflowgen/11-cadence-innovus-init/mflowgen-run && cp -f .mflowgen/11-cadence-innovus-init/mflowgen-run 11-cadence-innovus-init && if [[ -e .mflowgen/11-cadence-innovus-init/mflowgen-debug ]]; then chmod +x .mflowgen/11-cadence-innovus-init/mflowgen-debug && cp -f .mflowgen/11-cadence-innovus-init/mflowgen-debug 11-cadence-innovus-init; fi && if [[ -e .mflowgen/11-cadence-innovus-init/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/11-cadence-innovus-init/mflowgen-check-preconditions.py && cp -f .mflowgen/11-cadence-innovus-init/mflowgen-check-preconditions.py 11-cadence-innovus-init; fi && if [[ -e .mflowgen/11-cadence-innovus-init/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/11-cadence-innovus-init/mflowgen-check-postconditions.py && cp -f .mflowgen/11-cadence-innovus-init/mflowgen-check-postconditions.py 11-cadence-innovus-init; fi && cd 11-cadence-innovus-init && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 11-cadence-innovus-init/outputs/*
endef

11-cadence-innovus-init/.execstamp: 11-cadence-innovus-init/.stamp 11-cadence-innovus-init/inputs/.stamp.adk 11-cadence-innovus-init/inputs/.stamp.design.sdc 11-cadence-innovus-init/inputs/.stamp.design.v 11-cadence-innovus-init/inputs/.stamp.floorplan.tcl 11-cadence-innovus-init/inputs/.stamp.innovus-foundation-flow 11-cadence-innovus-init/inputs/.stamp.pin-assignments.tcl
	$(call 11_cadence_innovus_init_commands_rule)
	touch $@

11-cadence-innovus-init/outputs/.execstamp.design.checkpoint: 11-cadence-innovus-init/.execstamp
	touch $@

endif

# collect outputs

11-cadence-innovus-init/outputs/.stamp.design.checkpoint: 11-cadence-innovus-init/.execstamp 11-cadence-innovus-init/outputs/.execstamp.design.checkpoint
	$(call stamp,11-cadence-innovus-init/outputs/.stamp.design.checkpoint)

# post-conditions

define 11_cadence_innovus_init_post_conditions_commands_rule
	cd 11-cadence-innovus-init && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

11-cadence-innovus-init/.postconditions.stamp: 11-cadence-innovus-init/.execstamp 11-cadence-innovus-init/outputs/.execstamp.design.checkpoint 11-cadence-innovus-init/outputs/.stamp.design.checkpoint
	$(call 11_cadence_innovus_init_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-init

cadence-innovus-init: 11-cadence-innovus-init/.execstamp 11-cadence-innovus-init/.postconditions.stamp 11-cadence-innovus-init/outputs/.execstamp.design.checkpoint 11-cadence-innovus-init/outputs/.stamp.design.checkpoint

.PHONY: 11

11: 11-cadence-innovus-init/.execstamp 11-cadence-innovus-init/.postconditions.stamp 11-cadence-innovus-init/outputs/.execstamp.design.checkpoint 11-cadence-innovus-init/outputs/.stamp.design.checkpoint

# debug

define 11_debug_rule
	cd 11-cadence-innovus-init && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-cadence-innovus-init: 
	$(call 11_debug_rule)

.PHONY: debug-11

debug-11: debug-cadence-innovus-init

# ------------------------------------------------------------------------
# cadence-innovus-power
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 12-cadence-innovus-power/.prebuilt)","")
12-cadence-innovus-power/.stamp: 10-cadence-innovus-flowsetup/.execstamp 10-cadence-innovus-flowsetup/.postconditions.stamp 10-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 10-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
12-cadence-innovus-power/.stamp: 11-cadence-innovus-init/.execstamp 11-cadence-innovus-init/.postconditions.stamp 11-cadence-innovus-init/outputs/.execstamp.design.checkpoint 11-cadence-innovus-init/outputs/.stamp.design.checkpoint
12-cadence-innovus-power/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
12-cadence-innovus-power/.stamp: 9-synopsys-dc-synthesis/.execstamp 9-synopsys-dc-synthesis/.postconditions.stamp 9-synopsys-dc-synthesis/outputs/.execstamp.design.namemap 9-synopsys-dc-synthesis/outputs/.execstamp.design.sdc 9-synopsys-dc-synthesis/outputs/.execstamp.design.svf 9-synopsys-dc-synthesis/outputs/.execstamp.design.v 9-synopsys-dc-synthesis/outputs/.stamp.design.namemap 9-synopsys-dc-synthesis/outputs/.stamp.design.sdc 9-synopsys-dc-synthesis/outputs/.stamp.design.svf 9-synopsys-dc-synthesis/outputs/.stamp.design.v
12-cadence-innovus-power/.stamp:
	$(call cpdir-and-parameterize,12-cadence-innovus-power,../design/cadence-innovus-power,12-cadence-innovus-power/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 12-cadence-innovus-power/.prebuilt)","")
12-cadence-innovus-power/inputs/.stamp.adk: 12-cadence-innovus-power/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,12-cadence-innovus-power/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 12-cadence-innovus-power/.prebuilt)","")
12-cadence-innovus-power/inputs/.stamp.design.checkpoint: 12-cadence-innovus-power/.stamp 11-cadence-innovus-init/outputs/.stamp.design.checkpoint
	$(call symlink,12-cadence-innovus-power/inputs,design.checkpoint,../../11-cadence-innovus-init/outputs/design.checkpoint,.stamp.design.checkpoint)
endif

ifeq ("$(wildcard 12-cadence-innovus-power/.prebuilt)","")
12-cadence-innovus-power/inputs/.stamp.design.sdc: 12-cadence-innovus-power/.stamp 9-synopsys-dc-synthesis/outputs/.stamp.design.sdc
	$(call symlink,12-cadence-innovus-power/inputs,design.sdc,../../9-synopsys-dc-synthesis/outputs/design.sdc,.stamp.design.sdc)
endif

ifeq ("$(wildcard 12-cadence-innovus-power/.prebuilt)","")
12-cadence-innovus-power/inputs/.stamp.innovus-foundation-flow: 12-cadence-innovus-power/.stamp 10-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call symlink,12-cadence-innovus-power/inputs,innovus-foundation-flow,../../10-cadence-innovus-flowsetup/outputs/innovus-foundation-flow,.stamp.innovus-foundation-flow)
endif

# execute

ifeq ("$(wildcard 12-cadence-innovus-power/.prebuilt)","")

define 12_cadence_innovus_power_commands_rule
	mkdir -p 12-cadence-innovus-power/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-power && chmod +x .mflowgen/12-cadence-innovus-power/mflowgen-run && cp -f .mflowgen/12-cadence-innovus-power/mflowgen-run 12-cadence-innovus-power && if [[ -e .mflowgen/12-cadence-innovus-power/mflowgen-debug ]]; then chmod +x .mflowgen/12-cadence-innovus-power/mflowgen-debug && cp -f .mflowgen/12-cadence-innovus-power/mflowgen-debug 12-cadence-innovus-power; fi && if [[ -e .mflowgen/12-cadence-innovus-power/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/12-cadence-innovus-power/mflowgen-check-preconditions.py && cp -f .mflowgen/12-cadence-innovus-power/mflowgen-check-preconditions.py 12-cadence-innovus-power; fi && if [[ -e .mflowgen/12-cadence-innovus-power/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/12-cadence-innovus-power/mflowgen-check-postconditions.py && cp -f .mflowgen/12-cadence-innovus-power/mflowgen-check-postconditions.py 12-cadence-innovus-power; fi && cd 12-cadence-innovus-power && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 12-cadence-innovus-power/outputs/*
endef

12-cadence-innovus-power/.execstamp: 12-cadence-innovus-power/.stamp 12-cadence-innovus-power/inputs/.stamp.adk 12-cadence-innovus-power/inputs/.stamp.design.checkpoint 12-cadence-innovus-power/inputs/.stamp.design.sdc 12-cadence-innovus-power/inputs/.stamp.innovus-foundation-flow
	$(call 12_cadence_innovus_power_commands_rule)
	touch $@

12-cadence-innovus-power/outputs/.execstamp.design.checkpoint: 12-cadence-innovus-power/.execstamp
	touch $@

endif

# collect outputs

12-cadence-innovus-power/outputs/.stamp.design.checkpoint: 12-cadence-innovus-power/.execstamp 12-cadence-innovus-power/outputs/.execstamp.design.checkpoint
	$(call stamp,12-cadence-innovus-power/outputs/.stamp.design.checkpoint)

# post-conditions

define 12_cadence_innovus_power_post_conditions_commands_rule
	cd 12-cadence-innovus-power && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

12-cadence-innovus-power/.postconditions.stamp: 12-cadence-innovus-power/.execstamp 12-cadence-innovus-power/outputs/.execstamp.design.checkpoint 12-cadence-innovus-power/outputs/.stamp.design.checkpoint
	$(call 12_cadence_innovus_power_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-power

cadence-innovus-power: 12-cadence-innovus-power/.execstamp 12-cadence-innovus-power/.postconditions.stamp 12-cadence-innovus-power/outputs/.execstamp.design.checkpoint 12-cadence-innovus-power/outputs/.stamp.design.checkpoint

.PHONY: 12

12: 12-cadence-innovus-power/.execstamp 12-cadence-innovus-power/.postconditions.stamp 12-cadence-innovus-power/outputs/.execstamp.design.checkpoint 12-cadence-innovus-power/outputs/.stamp.design.checkpoint

# debug

define 12_debug_rule
	cd 12-cadence-innovus-power && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-cadence-innovus-power: 
	$(call 12_debug_rule)

.PHONY: debug-12

debug-12: debug-cadence-innovus-power

# ------------------------------------------------------------------------
# cadence-innovus-place
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 13-cadence-innovus-place/.prebuilt)","")
13-cadence-innovus-place/.stamp: 10-cadence-innovus-flowsetup/.execstamp 10-cadence-innovus-flowsetup/.postconditions.stamp 10-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 10-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
13-cadence-innovus-place/.stamp: 12-cadence-innovus-power/.execstamp 12-cadence-innovus-power/.postconditions.stamp 12-cadence-innovus-power/outputs/.execstamp.design.checkpoint 12-cadence-innovus-power/outputs/.stamp.design.checkpoint
13-cadence-innovus-place/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
13-cadence-innovus-place/.stamp: 9-synopsys-dc-synthesis/.execstamp 9-synopsys-dc-synthesis/.postconditions.stamp 9-synopsys-dc-synthesis/outputs/.execstamp.design.namemap 9-synopsys-dc-synthesis/outputs/.execstamp.design.sdc 9-synopsys-dc-synthesis/outputs/.execstamp.design.svf 9-synopsys-dc-synthesis/outputs/.execstamp.design.v 9-synopsys-dc-synthesis/outputs/.stamp.design.namemap 9-synopsys-dc-synthesis/outputs/.stamp.design.sdc 9-synopsys-dc-synthesis/outputs/.stamp.design.svf 9-synopsys-dc-synthesis/outputs/.stamp.design.v
13-cadence-innovus-place/.stamp:
	$(call cpdir-and-parameterize,13-cadence-innovus-place,../../mflowgen/steps/cadence-innovus-place,13-cadence-innovus-place/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 13-cadence-innovus-place/.prebuilt)","")
13-cadence-innovus-place/inputs/.stamp.adk: 13-cadence-innovus-place/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,13-cadence-innovus-place/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 13-cadence-innovus-place/.prebuilt)","")
13-cadence-innovus-place/inputs/.stamp.design.checkpoint: 13-cadence-innovus-place/.stamp 12-cadence-innovus-power/outputs/.stamp.design.checkpoint
	$(call symlink,13-cadence-innovus-place/inputs,design.checkpoint,../../12-cadence-innovus-power/outputs/design.checkpoint,.stamp.design.checkpoint)
endif

ifeq ("$(wildcard 13-cadence-innovus-place/.prebuilt)","")
13-cadence-innovus-place/inputs/.stamp.design.sdc: 13-cadence-innovus-place/.stamp 9-synopsys-dc-synthesis/outputs/.stamp.design.sdc
	$(call symlink,13-cadence-innovus-place/inputs,design.sdc,../../9-synopsys-dc-synthesis/outputs/design.sdc,.stamp.design.sdc)
endif

ifeq ("$(wildcard 13-cadence-innovus-place/.prebuilt)","")
13-cadence-innovus-place/inputs/.stamp.innovus-foundation-flow: 13-cadence-innovus-place/.stamp 10-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call symlink,13-cadence-innovus-place/inputs,innovus-foundation-flow,../../10-cadence-innovus-flowsetup/outputs/innovus-foundation-flow,.stamp.innovus-foundation-flow)
endif

# execute

ifeq ("$(wildcard 13-cadence-innovus-place/.prebuilt)","")

define 13_cadence_innovus_place_commands_rule
	mkdir -p 13-cadence-innovus-place/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-place && chmod +x .mflowgen/13-cadence-innovus-place/mflowgen-run && cp -f .mflowgen/13-cadence-innovus-place/mflowgen-run 13-cadence-innovus-place && if [[ -e .mflowgen/13-cadence-innovus-place/mflowgen-debug ]]; then chmod +x .mflowgen/13-cadence-innovus-place/mflowgen-debug && cp -f .mflowgen/13-cadence-innovus-place/mflowgen-debug 13-cadence-innovus-place; fi && if [[ -e .mflowgen/13-cadence-innovus-place/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/13-cadence-innovus-place/mflowgen-check-preconditions.py && cp -f .mflowgen/13-cadence-innovus-place/mflowgen-check-preconditions.py 13-cadence-innovus-place; fi && if [[ -e .mflowgen/13-cadence-innovus-place/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/13-cadence-innovus-place/mflowgen-check-postconditions.py && cp -f .mflowgen/13-cadence-innovus-place/mflowgen-check-postconditions.py 13-cadence-innovus-place; fi && cd 13-cadence-innovus-place && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 13-cadence-innovus-place/outputs/*
endef

13-cadence-innovus-place/.execstamp: 13-cadence-innovus-place/.stamp 13-cadence-innovus-place/inputs/.stamp.adk 13-cadence-innovus-place/inputs/.stamp.design.checkpoint 13-cadence-innovus-place/inputs/.stamp.design.sdc 13-cadence-innovus-place/inputs/.stamp.innovus-foundation-flow
	$(call 13_cadence_innovus_place_commands_rule)
	touch $@

13-cadence-innovus-place/outputs/.execstamp.design.checkpoint: 13-cadence-innovus-place/.execstamp
	touch $@

endif

# collect outputs

13-cadence-innovus-place/outputs/.stamp.design.checkpoint: 13-cadence-innovus-place/.execstamp 13-cadence-innovus-place/outputs/.execstamp.design.checkpoint
	$(call stamp,13-cadence-innovus-place/outputs/.stamp.design.checkpoint)

# post-conditions

define 13_cadence_innovus_place_post_conditions_commands_rule
	cd 13-cadence-innovus-place && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

13-cadence-innovus-place/.postconditions.stamp: 13-cadence-innovus-place/.execstamp 13-cadence-innovus-place/outputs/.execstamp.design.checkpoint 13-cadence-innovus-place/outputs/.stamp.design.checkpoint
	$(call 13_cadence_innovus_place_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-place

cadence-innovus-place: 13-cadence-innovus-place/.execstamp 13-cadence-innovus-place/.postconditions.stamp 13-cadence-innovus-place/outputs/.execstamp.design.checkpoint 13-cadence-innovus-place/outputs/.stamp.design.checkpoint

.PHONY: 13

13: 13-cadence-innovus-place/.execstamp 13-cadence-innovus-place/.postconditions.stamp 13-cadence-innovus-place/outputs/.execstamp.design.checkpoint 13-cadence-innovus-place/outputs/.stamp.design.checkpoint

# debug

define 13_debug_rule
	cd 13-cadence-innovus-place && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-cadence-innovus-place: 
	$(call 13_debug_rule)

.PHONY: debug-13

debug-13: debug-cadence-innovus-place

# ------------------------------------------------------------------------
# cadence-innovus-cts
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 14-cadence-innovus-cts/.prebuilt)","")
14-cadence-innovus-cts/.stamp: 10-cadence-innovus-flowsetup/.execstamp 10-cadence-innovus-flowsetup/.postconditions.stamp 10-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 10-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
14-cadence-innovus-cts/.stamp: 13-cadence-innovus-place/.execstamp 13-cadence-innovus-place/.postconditions.stamp 13-cadence-innovus-place/outputs/.execstamp.design.checkpoint 13-cadence-innovus-place/outputs/.stamp.design.checkpoint
14-cadence-innovus-cts/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
14-cadence-innovus-cts/.stamp: 9-synopsys-dc-synthesis/.execstamp 9-synopsys-dc-synthesis/.postconditions.stamp 9-synopsys-dc-synthesis/outputs/.execstamp.design.namemap 9-synopsys-dc-synthesis/outputs/.execstamp.design.sdc 9-synopsys-dc-synthesis/outputs/.execstamp.design.svf 9-synopsys-dc-synthesis/outputs/.execstamp.design.v 9-synopsys-dc-synthesis/outputs/.stamp.design.namemap 9-synopsys-dc-synthesis/outputs/.stamp.design.sdc 9-synopsys-dc-synthesis/outputs/.stamp.design.svf 9-synopsys-dc-synthesis/outputs/.stamp.design.v
14-cadence-innovus-cts/.stamp:
	$(call cpdir-and-parameterize,14-cadence-innovus-cts,../../mflowgen/steps/cadence-innovus-cts,14-cadence-innovus-cts/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 14-cadence-innovus-cts/.prebuilt)","")
14-cadence-innovus-cts/inputs/.stamp.adk: 14-cadence-innovus-cts/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,14-cadence-innovus-cts/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 14-cadence-innovus-cts/.prebuilt)","")
14-cadence-innovus-cts/inputs/.stamp.design.checkpoint: 14-cadence-innovus-cts/.stamp 13-cadence-innovus-place/outputs/.stamp.design.checkpoint
	$(call symlink,14-cadence-innovus-cts/inputs,design.checkpoint,../../13-cadence-innovus-place/outputs/design.checkpoint,.stamp.design.checkpoint)
endif

ifeq ("$(wildcard 14-cadence-innovus-cts/.prebuilt)","")
14-cadence-innovus-cts/inputs/.stamp.design.sdc: 14-cadence-innovus-cts/.stamp 9-synopsys-dc-synthesis/outputs/.stamp.design.sdc
	$(call symlink,14-cadence-innovus-cts/inputs,design.sdc,../../9-synopsys-dc-synthesis/outputs/design.sdc,.stamp.design.sdc)
endif

ifeq ("$(wildcard 14-cadence-innovus-cts/.prebuilt)","")
14-cadence-innovus-cts/inputs/.stamp.innovus-foundation-flow: 14-cadence-innovus-cts/.stamp 10-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call symlink,14-cadence-innovus-cts/inputs,innovus-foundation-flow,../../10-cadence-innovus-flowsetup/outputs/innovus-foundation-flow,.stamp.innovus-foundation-flow)
endif

# execute

ifeq ("$(wildcard 14-cadence-innovus-cts/.prebuilt)","")

define 14_cadence_innovus_cts_commands_rule
	mkdir -p 14-cadence-innovus-cts/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-cts && chmod +x .mflowgen/14-cadence-innovus-cts/mflowgen-run && cp -f .mflowgen/14-cadence-innovus-cts/mflowgen-run 14-cadence-innovus-cts && if [[ -e .mflowgen/14-cadence-innovus-cts/mflowgen-debug ]]; then chmod +x .mflowgen/14-cadence-innovus-cts/mflowgen-debug && cp -f .mflowgen/14-cadence-innovus-cts/mflowgen-debug 14-cadence-innovus-cts; fi && if [[ -e .mflowgen/14-cadence-innovus-cts/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/14-cadence-innovus-cts/mflowgen-check-preconditions.py && cp -f .mflowgen/14-cadence-innovus-cts/mflowgen-check-preconditions.py 14-cadence-innovus-cts; fi && if [[ -e .mflowgen/14-cadence-innovus-cts/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/14-cadence-innovus-cts/mflowgen-check-postconditions.py && cp -f .mflowgen/14-cadence-innovus-cts/mflowgen-check-postconditions.py 14-cadence-innovus-cts; fi && cd 14-cadence-innovus-cts && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 14-cadence-innovus-cts/outputs/*
endef

14-cadence-innovus-cts/.execstamp: 14-cadence-innovus-cts/.stamp 14-cadence-innovus-cts/inputs/.stamp.adk 14-cadence-innovus-cts/inputs/.stamp.design.checkpoint 14-cadence-innovus-cts/inputs/.stamp.design.sdc 14-cadence-innovus-cts/inputs/.stamp.innovus-foundation-flow
	$(call 14_cadence_innovus_cts_commands_rule)
	touch $@

14-cadence-innovus-cts/outputs/.execstamp.design.checkpoint: 14-cadence-innovus-cts/.execstamp
	touch $@

endif

# collect outputs

14-cadence-innovus-cts/outputs/.stamp.design.checkpoint: 14-cadence-innovus-cts/.execstamp 14-cadence-innovus-cts/outputs/.execstamp.design.checkpoint
	$(call stamp,14-cadence-innovus-cts/outputs/.stamp.design.checkpoint)

# post-conditions

define 14_cadence_innovus_cts_post_conditions_commands_rule
	cd 14-cadence-innovus-cts && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

14-cadence-innovus-cts/.postconditions.stamp: 14-cadence-innovus-cts/.execstamp 14-cadence-innovus-cts/outputs/.execstamp.design.checkpoint 14-cadence-innovus-cts/outputs/.stamp.design.checkpoint
	$(call 14_cadence_innovus_cts_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-cts

cadence-innovus-cts: 14-cadence-innovus-cts/.execstamp 14-cadence-innovus-cts/.postconditions.stamp 14-cadence-innovus-cts/outputs/.execstamp.design.checkpoint 14-cadence-innovus-cts/outputs/.stamp.design.checkpoint

.PHONY: 14

14: 14-cadence-innovus-cts/.execstamp 14-cadence-innovus-cts/.postconditions.stamp 14-cadence-innovus-cts/outputs/.execstamp.design.checkpoint 14-cadence-innovus-cts/outputs/.stamp.design.checkpoint

# debug

define 14_debug_rule
	cd 14-cadence-innovus-cts && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-cadence-innovus-cts: 
	$(call 14_debug_rule)

.PHONY: debug-14

debug-14: debug-cadence-innovus-cts

# ------------------------------------------------------------------------
# cadence-innovus-postcts_hold
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 15-cadence-innovus-postcts_hold/.prebuilt)","")
15-cadence-innovus-postcts_hold/.stamp: 10-cadence-innovus-flowsetup/.execstamp 10-cadence-innovus-flowsetup/.postconditions.stamp 10-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 10-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
15-cadence-innovus-postcts_hold/.stamp: 14-cadence-innovus-cts/.execstamp 14-cadence-innovus-cts/.postconditions.stamp 14-cadence-innovus-cts/outputs/.execstamp.design.checkpoint 14-cadence-innovus-cts/outputs/.stamp.design.checkpoint
15-cadence-innovus-postcts_hold/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
15-cadence-innovus-postcts_hold/.stamp:
	$(call cpdir-and-parameterize,15-cadence-innovus-postcts_hold,../../mflowgen/steps/cadence-innovus-postcts_hold,15-cadence-innovus-postcts_hold/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 15-cadence-innovus-postcts_hold/.prebuilt)","")
15-cadence-innovus-postcts_hold/inputs/.stamp.adk: 15-cadence-innovus-postcts_hold/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,15-cadence-innovus-postcts_hold/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 15-cadence-innovus-postcts_hold/.prebuilt)","")
15-cadence-innovus-postcts_hold/inputs/.stamp.design.checkpoint: 15-cadence-innovus-postcts_hold/.stamp 14-cadence-innovus-cts/outputs/.stamp.design.checkpoint
	$(call symlink,15-cadence-innovus-postcts_hold/inputs,design.checkpoint,../../14-cadence-innovus-cts/outputs/design.checkpoint,.stamp.design.checkpoint)
endif

ifeq ("$(wildcard 15-cadence-innovus-postcts_hold/.prebuilt)","")
15-cadence-innovus-postcts_hold/inputs/.stamp.innovus-foundation-flow: 15-cadence-innovus-postcts_hold/.stamp 10-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call symlink,15-cadence-innovus-postcts_hold/inputs,innovus-foundation-flow,../../10-cadence-innovus-flowsetup/outputs/innovus-foundation-flow,.stamp.innovus-foundation-flow)
endif

# execute

ifeq ("$(wildcard 15-cadence-innovus-postcts_hold/.prebuilt)","")

define 15_cadence_innovus_postcts_hold_commands_rule
	mkdir -p 15-cadence-innovus-postcts_hold/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-postcts_hold && chmod +x .mflowgen/15-cadence-innovus-postcts_hold/mflowgen-run && cp -f .mflowgen/15-cadence-innovus-postcts_hold/mflowgen-run 15-cadence-innovus-postcts_hold && if [[ -e .mflowgen/15-cadence-innovus-postcts_hold/mflowgen-debug ]]; then chmod +x .mflowgen/15-cadence-innovus-postcts_hold/mflowgen-debug && cp -f .mflowgen/15-cadence-innovus-postcts_hold/mflowgen-debug 15-cadence-innovus-postcts_hold; fi && if [[ -e .mflowgen/15-cadence-innovus-postcts_hold/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/15-cadence-innovus-postcts_hold/mflowgen-check-preconditions.py && cp -f .mflowgen/15-cadence-innovus-postcts_hold/mflowgen-check-preconditions.py 15-cadence-innovus-postcts_hold; fi && if [[ -e .mflowgen/15-cadence-innovus-postcts_hold/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/15-cadence-innovus-postcts_hold/mflowgen-check-postconditions.py && cp -f .mflowgen/15-cadence-innovus-postcts_hold/mflowgen-check-postconditions.py 15-cadence-innovus-postcts_hold; fi && cd 15-cadence-innovus-postcts_hold && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 15-cadence-innovus-postcts_hold/outputs/*
endef

15-cadence-innovus-postcts_hold/.execstamp: 15-cadence-innovus-postcts_hold/.stamp 15-cadence-innovus-postcts_hold/inputs/.stamp.adk 15-cadence-innovus-postcts_hold/inputs/.stamp.design.checkpoint 15-cadence-innovus-postcts_hold/inputs/.stamp.innovus-foundation-flow
	$(call 15_cadence_innovus_postcts_hold_commands_rule)
	touch $@

15-cadence-innovus-postcts_hold/outputs/.execstamp.design.checkpoint: 15-cadence-innovus-postcts_hold/.execstamp
	touch $@

endif

# collect outputs

15-cadence-innovus-postcts_hold/outputs/.stamp.design.checkpoint: 15-cadence-innovus-postcts_hold/.execstamp 15-cadence-innovus-postcts_hold/outputs/.execstamp.design.checkpoint
	$(call stamp,15-cadence-innovus-postcts_hold/outputs/.stamp.design.checkpoint)

# post-conditions

define 15_cadence_innovus_postcts_hold_post_conditions_commands_rule
	cd 15-cadence-innovus-postcts_hold && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

15-cadence-innovus-postcts_hold/.postconditions.stamp: 15-cadence-innovus-postcts_hold/.execstamp 15-cadence-innovus-postcts_hold/outputs/.execstamp.design.checkpoint 15-cadence-innovus-postcts_hold/outputs/.stamp.design.checkpoint
	$(call 15_cadence_innovus_postcts_hold_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-postcts_hold

cadence-innovus-postcts_hold: 15-cadence-innovus-postcts_hold/.execstamp 15-cadence-innovus-postcts_hold/.postconditions.stamp 15-cadence-innovus-postcts_hold/outputs/.execstamp.design.checkpoint 15-cadence-innovus-postcts_hold/outputs/.stamp.design.checkpoint

.PHONY: 15

15: 15-cadence-innovus-postcts_hold/.execstamp 15-cadence-innovus-postcts_hold/.postconditions.stamp 15-cadence-innovus-postcts_hold/outputs/.execstamp.design.checkpoint 15-cadence-innovus-postcts_hold/outputs/.stamp.design.checkpoint

# debug

define 15_debug_rule
	cd 15-cadence-innovus-postcts_hold && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-cadence-innovus-postcts_hold: 
	$(call 15_debug_rule)

.PHONY: debug-15

debug-15: debug-cadence-innovus-postcts_hold

# ------------------------------------------------------------------------
# cadence-innovus-route
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 16-cadence-innovus-route/.prebuilt)","")
16-cadence-innovus-route/.stamp: 10-cadence-innovus-flowsetup/.execstamp 10-cadence-innovus-flowsetup/.postconditions.stamp 10-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 10-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
16-cadence-innovus-route/.stamp: 15-cadence-innovus-postcts_hold/.execstamp 15-cadence-innovus-postcts_hold/.postconditions.stamp 15-cadence-innovus-postcts_hold/outputs/.execstamp.design.checkpoint 15-cadence-innovus-postcts_hold/outputs/.stamp.design.checkpoint
16-cadence-innovus-route/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
16-cadence-innovus-route/.stamp:
	$(call cpdir-and-parameterize,16-cadence-innovus-route,../../mflowgen/steps/cadence-innovus-route,16-cadence-innovus-route/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 16-cadence-innovus-route/.prebuilt)","")
16-cadence-innovus-route/inputs/.stamp.adk: 16-cadence-innovus-route/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,16-cadence-innovus-route/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 16-cadence-innovus-route/.prebuilt)","")
16-cadence-innovus-route/inputs/.stamp.design.checkpoint: 16-cadence-innovus-route/.stamp 15-cadence-innovus-postcts_hold/outputs/.stamp.design.checkpoint
	$(call symlink,16-cadence-innovus-route/inputs,design.checkpoint,../../15-cadence-innovus-postcts_hold/outputs/design.checkpoint,.stamp.design.checkpoint)
endif

ifeq ("$(wildcard 16-cadence-innovus-route/.prebuilt)","")
16-cadence-innovus-route/inputs/.stamp.innovus-foundation-flow: 16-cadence-innovus-route/.stamp 10-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call symlink,16-cadence-innovus-route/inputs,innovus-foundation-flow,../../10-cadence-innovus-flowsetup/outputs/innovus-foundation-flow,.stamp.innovus-foundation-flow)
endif

# execute

ifeq ("$(wildcard 16-cadence-innovus-route/.prebuilt)","")

define 16_cadence_innovus_route_commands_rule
	mkdir -p 16-cadence-innovus-route/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-route && chmod +x .mflowgen/16-cadence-innovus-route/mflowgen-run && cp -f .mflowgen/16-cadence-innovus-route/mflowgen-run 16-cadence-innovus-route && if [[ -e .mflowgen/16-cadence-innovus-route/mflowgen-debug ]]; then chmod +x .mflowgen/16-cadence-innovus-route/mflowgen-debug && cp -f .mflowgen/16-cadence-innovus-route/mflowgen-debug 16-cadence-innovus-route; fi && if [[ -e .mflowgen/16-cadence-innovus-route/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/16-cadence-innovus-route/mflowgen-check-preconditions.py && cp -f .mflowgen/16-cadence-innovus-route/mflowgen-check-preconditions.py 16-cadence-innovus-route; fi && if [[ -e .mflowgen/16-cadence-innovus-route/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/16-cadence-innovus-route/mflowgen-check-postconditions.py && cp -f .mflowgen/16-cadence-innovus-route/mflowgen-check-postconditions.py 16-cadence-innovus-route; fi && cd 16-cadence-innovus-route && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 16-cadence-innovus-route/outputs/*
endef

16-cadence-innovus-route/.execstamp: 16-cadence-innovus-route/.stamp 16-cadence-innovus-route/inputs/.stamp.adk 16-cadence-innovus-route/inputs/.stamp.design.checkpoint 16-cadence-innovus-route/inputs/.stamp.innovus-foundation-flow
	$(call 16_cadence_innovus_route_commands_rule)
	touch $@

16-cadence-innovus-route/outputs/.execstamp.design.checkpoint: 16-cadence-innovus-route/.execstamp
	touch $@

endif

# collect outputs

16-cadence-innovus-route/outputs/.stamp.design.checkpoint: 16-cadence-innovus-route/.execstamp 16-cadence-innovus-route/outputs/.execstamp.design.checkpoint
	$(call stamp,16-cadence-innovus-route/outputs/.stamp.design.checkpoint)

# post-conditions

define 16_cadence_innovus_route_post_conditions_commands_rule
	cd 16-cadence-innovus-route && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

16-cadence-innovus-route/.postconditions.stamp: 16-cadence-innovus-route/.execstamp 16-cadence-innovus-route/outputs/.execstamp.design.checkpoint 16-cadence-innovus-route/outputs/.stamp.design.checkpoint
	$(call 16_cadence_innovus_route_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-route

cadence-innovus-route: 16-cadence-innovus-route/.execstamp 16-cadence-innovus-route/.postconditions.stamp 16-cadence-innovus-route/outputs/.execstamp.design.checkpoint 16-cadence-innovus-route/outputs/.stamp.design.checkpoint

.PHONY: 16

16: 16-cadence-innovus-route/.execstamp 16-cadence-innovus-route/.postconditions.stamp 16-cadence-innovus-route/outputs/.execstamp.design.checkpoint 16-cadence-innovus-route/outputs/.stamp.design.checkpoint

# debug

define 16_debug_rule
	cd 16-cadence-innovus-route && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-cadence-innovus-route: 
	$(call 16_debug_rule)

.PHONY: debug-16

debug-16: debug-cadence-innovus-route

# ------------------------------------------------------------------------
# cadence-innovus-postroute
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 17-cadence-innovus-postroute/.prebuilt)","")
17-cadence-innovus-postroute/.stamp: 10-cadence-innovus-flowsetup/.execstamp 10-cadence-innovus-flowsetup/.postconditions.stamp 10-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 10-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
17-cadence-innovus-postroute/.stamp: 16-cadence-innovus-route/.execstamp 16-cadence-innovus-route/.postconditions.stamp 16-cadence-innovus-route/outputs/.execstamp.design.checkpoint 16-cadence-innovus-route/outputs/.stamp.design.checkpoint
17-cadence-innovus-postroute/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
17-cadence-innovus-postroute/.stamp:
	$(call cpdir-and-parameterize,17-cadence-innovus-postroute,../../mflowgen/steps/cadence-innovus-postroute,17-cadence-innovus-postroute/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 17-cadence-innovus-postroute/.prebuilt)","")
17-cadence-innovus-postroute/inputs/.stamp.adk: 17-cadence-innovus-postroute/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,17-cadence-innovus-postroute/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 17-cadence-innovus-postroute/.prebuilt)","")
17-cadence-innovus-postroute/inputs/.stamp.design.checkpoint: 17-cadence-innovus-postroute/.stamp 16-cadence-innovus-route/outputs/.stamp.design.checkpoint
	$(call symlink,17-cadence-innovus-postroute/inputs,design.checkpoint,../../16-cadence-innovus-route/outputs/design.checkpoint,.stamp.design.checkpoint)
endif

ifeq ("$(wildcard 17-cadence-innovus-postroute/.prebuilt)","")
17-cadence-innovus-postroute/inputs/.stamp.innovus-foundation-flow: 17-cadence-innovus-postroute/.stamp 10-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call symlink,17-cadence-innovus-postroute/inputs,innovus-foundation-flow,../../10-cadence-innovus-flowsetup/outputs/innovus-foundation-flow,.stamp.innovus-foundation-flow)
endif

# execute

ifeq ("$(wildcard 17-cadence-innovus-postroute/.prebuilt)","")

define 17_cadence_innovus_postroute_commands_rule
	mkdir -p 17-cadence-innovus-postroute/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-postroute && chmod +x .mflowgen/17-cadence-innovus-postroute/mflowgen-run && cp -f .mflowgen/17-cadence-innovus-postroute/mflowgen-run 17-cadence-innovus-postroute && if [[ -e .mflowgen/17-cadence-innovus-postroute/mflowgen-debug ]]; then chmod +x .mflowgen/17-cadence-innovus-postroute/mflowgen-debug && cp -f .mflowgen/17-cadence-innovus-postroute/mflowgen-debug 17-cadence-innovus-postroute; fi && if [[ -e .mflowgen/17-cadence-innovus-postroute/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/17-cadence-innovus-postroute/mflowgen-check-preconditions.py && cp -f .mflowgen/17-cadence-innovus-postroute/mflowgen-check-preconditions.py 17-cadence-innovus-postroute; fi && if [[ -e .mflowgen/17-cadence-innovus-postroute/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/17-cadence-innovus-postroute/mflowgen-check-postconditions.py && cp -f .mflowgen/17-cadence-innovus-postroute/mflowgen-check-postconditions.py 17-cadence-innovus-postroute; fi && cd 17-cadence-innovus-postroute && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 17-cadence-innovus-postroute/outputs/*
endef

17-cadence-innovus-postroute/.execstamp: 17-cadence-innovus-postroute/.stamp 17-cadence-innovus-postroute/inputs/.stamp.adk 17-cadence-innovus-postroute/inputs/.stamp.design.checkpoint 17-cadence-innovus-postroute/inputs/.stamp.innovus-foundation-flow
	$(call 17_cadence_innovus_postroute_commands_rule)
	touch $@

17-cadence-innovus-postroute/outputs/.execstamp.design.checkpoint: 17-cadence-innovus-postroute/.execstamp
	touch $@

endif

# collect outputs

17-cadence-innovus-postroute/outputs/.stamp.design.checkpoint: 17-cadence-innovus-postroute/.execstamp 17-cadence-innovus-postroute/outputs/.execstamp.design.checkpoint
	$(call stamp,17-cadence-innovus-postroute/outputs/.stamp.design.checkpoint)

# post-conditions

define 17_cadence_innovus_postroute_post_conditions_commands_rule
	cd 17-cadence-innovus-postroute && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

17-cadence-innovus-postroute/.postconditions.stamp: 17-cadence-innovus-postroute/.execstamp 17-cadence-innovus-postroute/outputs/.execstamp.design.checkpoint 17-cadence-innovus-postroute/outputs/.stamp.design.checkpoint
	$(call 17_cadence_innovus_postroute_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-postroute

cadence-innovus-postroute: 17-cadence-innovus-postroute/.execstamp 17-cadence-innovus-postroute/.postconditions.stamp 17-cadence-innovus-postroute/outputs/.execstamp.design.checkpoint 17-cadence-innovus-postroute/outputs/.stamp.design.checkpoint

.PHONY: 17

17: 17-cadence-innovus-postroute/.execstamp 17-cadence-innovus-postroute/.postconditions.stamp 17-cadence-innovus-postroute/outputs/.execstamp.design.checkpoint 17-cadence-innovus-postroute/outputs/.stamp.design.checkpoint

# debug

define 17_debug_rule
	cd 17-cadence-innovus-postroute && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-cadence-innovus-postroute: 
	$(call 17_debug_rule)

.PHONY: debug-17

debug-17: debug-cadence-innovus-postroute

# ------------------------------------------------------------------------
# cadence-innovus-signoff
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 18-cadence-innovus-signoff/.prebuilt)","")
18-cadence-innovus-signoff/.stamp: 10-cadence-innovus-flowsetup/.execstamp 10-cadence-innovus-flowsetup/.postconditions.stamp 10-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 10-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
18-cadence-innovus-signoff/.stamp: 17-cadence-innovus-postroute/.execstamp 17-cadence-innovus-postroute/.postconditions.stamp 17-cadence-innovus-postroute/outputs/.execstamp.design.checkpoint 17-cadence-innovus-postroute/outputs/.stamp.design.checkpoint
18-cadence-innovus-signoff/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
18-cadence-innovus-signoff/.stamp:
	$(call cpdir-and-parameterize,18-cadence-innovus-signoff,../design/cadence-innovus-signoff,18-cadence-innovus-signoff/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 18-cadence-innovus-signoff/.prebuilt)","")
18-cadence-innovus-signoff/inputs/.stamp.adk: 18-cadence-innovus-signoff/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,18-cadence-innovus-signoff/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 18-cadence-innovus-signoff/.prebuilt)","")
18-cadence-innovus-signoff/inputs/.stamp.design.checkpoint: 18-cadence-innovus-signoff/.stamp 17-cadence-innovus-postroute/outputs/.stamp.design.checkpoint
	$(call symlink,18-cadence-innovus-signoff/inputs,design.checkpoint,../../17-cadence-innovus-postroute/outputs/design.checkpoint,.stamp.design.checkpoint)
endif

ifeq ("$(wildcard 18-cadence-innovus-signoff/.prebuilt)","")
18-cadence-innovus-signoff/inputs/.stamp.innovus-foundation-flow: 18-cadence-innovus-signoff/.stamp 10-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call symlink,18-cadence-innovus-signoff/inputs,innovus-foundation-flow,../../10-cadence-innovus-flowsetup/outputs/innovus-foundation-flow,.stamp.innovus-foundation-flow)
endif

# execute

ifeq ("$(wildcard 18-cadence-innovus-signoff/.prebuilt)","")

define 18_cadence_innovus_signoff_commands_rule
	mkdir -p 18-cadence-innovus-signoff/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-signoff && chmod +x .mflowgen/18-cadence-innovus-signoff/mflowgen-run && cp -f .mflowgen/18-cadence-innovus-signoff/mflowgen-run 18-cadence-innovus-signoff && if [[ -e .mflowgen/18-cadence-innovus-signoff/mflowgen-debug ]]; then chmod +x .mflowgen/18-cadence-innovus-signoff/mflowgen-debug && cp -f .mflowgen/18-cadence-innovus-signoff/mflowgen-debug 18-cadence-innovus-signoff; fi && if [[ -e .mflowgen/18-cadence-innovus-signoff/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/18-cadence-innovus-signoff/mflowgen-check-preconditions.py && cp -f .mflowgen/18-cadence-innovus-signoff/mflowgen-check-preconditions.py 18-cadence-innovus-signoff; fi && if [[ -e .mflowgen/18-cadence-innovus-signoff/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/18-cadence-innovus-signoff/mflowgen-check-postconditions.py && cp -f .mflowgen/18-cadence-innovus-signoff/mflowgen-check-postconditions.py 18-cadence-innovus-signoff; fi && cd 18-cadence-innovus-signoff && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 18-cadence-innovus-signoff/outputs/*
endef

18-cadence-innovus-signoff/.execstamp: 18-cadence-innovus-signoff/.stamp 18-cadence-innovus-signoff/inputs/.stamp.adk 18-cadence-innovus-signoff/inputs/.stamp.design.checkpoint 18-cadence-innovus-signoff/inputs/.stamp.innovus-foundation-flow
	$(call 18_cadence_innovus_signoff_commands_rule)
	touch $@

18-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint: 18-cadence-innovus-signoff/.execstamp
	touch $@
18-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz: 18-cadence-innovus-signoff/.execstamp
	touch $@
18-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds: 18-cadence-innovus-signoff/.execstamp
	touch $@
18-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v: 18-cadence-innovus-signoff/.execstamp
	touch $@
18-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v: 18-cadence-innovus-signoff/.execstamp
	touch $@
18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v: 18-cadence-innovus-signoff/.execstamp
	touch $@
18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v: 18-cadence-innovus-signoff/.execstamp
	touch $@
18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v: 18-cadence-innovus-signoff/.execstamp
	touch $@
18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v: 18-cadence-innovus-signoff/.execstamp
	touch $@
18-cadence-innovus-signoff/outputs/.execstamp.design.lef: 18-cadence-innovus-signoff/.execstamp
	touch $@
18-cadence-innovus-signoff/outputs/.execstamp.design.def.gz: 18-cadence-innovus-signoff/.execstamp
	touch $@
18-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc: 18-cadence-innovus-signoff/.execstamp
	touch $@
18-cadence-innovus-signoff/outputs/.execstamp.design.sdf: 18-cadence-innovus-signoff/.execstamp
	touch $@
18-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v: 18-cadence-innovus-signoff/.execstamp
	touch $@
18-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz: 18-cadence-innovus-signoff/.execstamp
	touch $@
18-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz: 18-cadence-innovus-signoff/.execstamp
	touch $@

endif

# collect outputs

18-cadence-innovus-signoff/outputs/.stamp.design.checkpoint: 18-cadence-innovus-signoff/.execstamp 18-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.lef 18-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.sdf 18-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,18-cadence-innovus-signoff/outputs/.stamp.design.checkpoint)

18-cadence-innovus-signoff/outputs/.stamp.design.gds.gz: 18-cadence-innovus-signoff/.execstamp 18-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.lef 18-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.sdf 18-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,18-cadence-innovus-signoff/outputs/.stamp.design.gds.gz)

18-cadence-innovus-signoff/outputs/.stamp.design-merged.gds: 18-cadence-innovus-signoff/.execstamp 18-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.lef 18-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.sdf 18-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,18-cadence-innovus-signoff/outputs/.stamp.design-merged.gds)

18-cadence-innovus-signoff/outputs/.stamp.design.lvs.v: 18-cadence-innovus-signoff/.execstamp 18-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.lef 18-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.sdf 18-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,18-cadence-innovus-signoff/outputs/.stamp.design.lvs.v)

18-cadence-innovus-signoff/outputs/.stamp.design.flatbuslvs.v: 18-cadence-innovus-signoff/.execstamp 18-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.lef 18-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.sdf 18-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,18-cadence-innovus-signoff/outputs/.stamp.design.flatbuslvs.v)

18-cadence-innovus-signoff/outputs/.stamp.design.nofillerlvs.v: 18-cadence-innovus-signoff/.execstamp 18-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.lef 18-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.sdf 18-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,18-cadence-innovus-signoff/outputs/.stamp.design.nofillerlvs.v)

18-cadence-innovus-signoff/outputs/.stamp.design.nofillerflatbuslvs.v: 18-cadence-innovus-signoff/.execstamp 18-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.lef 18-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.sdf 18-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,18-cadence-innovus-signoff/outputs/.stamp.design.nofillerflatbuslvs.v)

18-cadence-innovus-signoff/outputs/.stamp.design.vcs.v: 18-cadence-innovus-signoff/.execstamp 18-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.lef 18-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.sdf 18-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,18-cadence-innovus-signoff/outputs/.stamp.design.vcs.v)

18-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v: 18-cadence-innovus-signoff/.execstamp 18-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.lef 18-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.sdf 18-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,18-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v)

18-cadence-innovus-signoff/outputs/.stamp.design.lef: 18-cadence-innovus-signoff/.execstamp 18-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.lef 18-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.sdf 18-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,18-cadence-innovus-signoff/outputs/.stamp.design.lef)

18-cadence-innovus-signoff/outputs/.stamp.design.def.gz: 18-cadence-innovus-signoff/.execstamp 18-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.lef 18-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.sdf 18-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,18-cadence-innovus-signoff/outputs/.stamp.design.def.gz)

18-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc: 18-cadence-innovus-signoff/.execstamp 18-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.lef 18-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.sdf 18-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,18-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc)

18-cadence-innovus-signoff/outputs/.stamp.design.sdf: 18-cadence-innovus-signoff/.execstamp 18-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.lef 18-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.sdf 18-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,18-cadence-innovus-signoff/outputs/.stamp.design.sdf)

18-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v: 18-cadence-innovus-signoff/.execstamp 18-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.lef 18-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.sdf 18-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,18-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v)

18-cadence-innovus-signoff/outputs/.stamp.design.spef.gz: 18-cadence-innovus-signoff/.execstamp 18-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.lef 18-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.sdf 18-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,18-cadence-innovus-signoff/outputs/.stamp.design.spef.gz)

18-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz: 18-cadence-innovus-signoff/.execstamp 18-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.lef 18-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.sdf 18-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,18-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz)

# post-conditions

define 18_cadence_innovus_signoff_post_conditions_commands_rule
	cd 18-cadence-innovus-signoff && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

18-cadence-innovus-signoff/.postconditions.stamp: 18-cadence-innovus-signoff/.execstamp 18-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.lef 18-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.sdf 18-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 18-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.stamp.design.def.gz 18-cadence-innovus-signoff/outputs/.stamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.stamp.design.lef 18-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.stamp.design.sdf 18-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
	$(call 18_cadence_innovus_signoff_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-signoff

cadence-innovus-signoff: 18-cadence-innovus-signoff/.execstamp 18-cadence-innovus-signoff/.postconditions.stamp 18-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.lef 18-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.sdf 18-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 18-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.stamp.design.def.gz 18-cadence-innovus-signoff/outputs/.stamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.stamp.design.lef 18-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.stamp.design.sdf 18-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v

.PHONY: 18

18: 18-cadence-innovus-signoff/.execstamp 18-cadence-innovus-signoff/.postconditions.stamp 18-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.lef 18-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.sdf 18-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 18-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.stamp.design.def.gz 18-cadence-innovus-signoff/outputs/.stamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.stamp.design.lef 18-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.stamp.design.sdf 18-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v

# debug

define 18_debug_rule
	cd 18-cadence-innovus-signoff && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-cadence-innovus-signoff: 
	$(call 18_debug_rule)

.PHONY: debug-18

debug-18: debug-cadence-innovus-signoff

# ------------------------------------------------------------------------
# mentor-calibre-gdsmerge
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 19-mentor-calibre-gdsmerge/.prebuilt)","")
19-mentor-calibre-gdsmerge/.stamp: 18-cadence-innovus-signoff/.execstamp 18-cadence-innovus-signoff/.postconditions.stamp 18-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.lef 18-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.sdf 18-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 18-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.stamp.design.def.gz 18-cadence-innovus-signoff/outputs/.stamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.stamp.design.lef 18-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.stamp.design.sdf 18-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
19-mentor-calibre-gdsmerge/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
19-mentor-calibre-gdsmerge/.stamp:
	$(call cpdir-and-parameterize,19-mentor-calibre-gdsmerge,../../mflowgen/steps/mentor-calibre-gdsmerge,19-mentor-calibre-gdsmerge/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 19-mentor-calibre-gdsmerge/.prebuilt)","")
19-mentor-calibre-gdsmerge/inputs/.stamp.adk: 19-mentor-calibre-gdsmerge/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,19-mentor-calibre-gdsmerge/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 19-mentor-calibre-gdsmerge/.prebuilt)","")
19-mentor-calibre-gdsmerge/inputs/.stamp.design.gds.gz: 19-mentor-calibre-gdsmerge/.stamp 18-cadence-innovus-signoff/outputs/.stamp.design.gds.gz
	$(call symlink,19-mentor-calibre-gdsmerge/inputs,design.gds.gz,../../18-cadence-innovus-signoff/outputs/design.gds.gz,.stamp.design.gds.gz)
endif

# execute

ifeq ("$(wildcard 19-mentor-calibre-gdsmerge/.prebuilt)","")

define 19_mentor_calibre_gdsmerge_commands_rule
	mkdir -p 19-mentor-calibre-gdsmerge/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t mentor-calibre-gdsmerge && chmod +x .mflowgen/19-mentor-calibre-gdsmerge/mflowgen-run && cp -f .mflowgen/19-mentor-calibre-gdsmerge/mflowgen-run 19-mentor-calibre-gdsmerge && if [[ -e .mflowgen/19-mentor-calibre-gdsmerge/mflowgen-debug ]]; then chmod +x .mflowgen/19-mentor-calibre-gdsmerge/mflowgen-debug && cp -f .mflowgen/19-mentor-calibre-gdsmerge/mflowgen-debug 19-mentor-calibre-gdsmerge; fi && if [[ -e .mflowgen/19-mentor-calibre-gdsmerge/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/19-mentor-calibre-gdsmerge/mflowgen-check-preconditions.py && cp -f .mflowgen/19-mentor-calibre-gdsmerge/mflowgen-check-preconditions.py 19-mentor-calibre-gdsmerge; fi && if [[ -e .mflowgen/19-mentor-calibre-gdsmerge/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/19-mentor-calibre-gdsmerge/mflowgen-check-postconditions.py && cp -f .mflowgen/19-mentor-calibre-gdsmerge/mflowgen-check-postconditions.py 19-mentor-calibre-gdsmerge; fi && cd 19-mentor-calibre-gdsmerge && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 19-mentor-calibre-gdsmerge/outputs/*
endef

19-mentor-calibre-gdsmerge/.execstamp: 19-mentor-calibre-gdsmerge/.stamp 19-mentor-calibre-gdsmerge/inputs/.stamp.adk 19-mentor-calibre-gdsmerge/inputs/.stamp.design.gds.gz
	$(call 19_mentor_calibre_gdsmerge_commands_rule)
	touch $@

19-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds: 19-mentor-calibre-gdsmerge/.execstamp
	touch $@

endif

# collect outputs

19-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds: 19-mentor-calibre-gdsmerge/.execstamp 19-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds
	$(call stamp,19-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds)

# post-conditions

define 19_mentor_calibre_gdsmerge_post_conditions_commands_rule
	cd 19-mentor-calibre-gdsmerge && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

19-mentor-calibre-gdsmerge/.postconditions.stamp: 19-mentor-calibre-gdsmerge/.execstamp 19-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 19-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
	$(call 19_mentor_calibre_gdsmerge_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: mentor-calibre-gdsmerge

mentor-calibre-gdsmerge: 19-mentor-calibre-gdsmerge/.execstamp 19-mentor-calibre-gdsmerge/.postconditions.stamp 19-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 19-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds

.PHONY: 19

19: 19-mentor-calibre-gdsmerge/.execstamp 19-mentor-calibre-gdsmerge/.postconditions.stamp 19-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 19-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds

# debug

define 19_debug_rule
	cd 19-mentor-calibre-gdsmerge && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-mentor-calibre-gdsmerge: 
	$(call 19_debug_rule)

.PHONY: debug-19

debug-19: debug-mentor-calibre-gdsmerge

# ------------------------------------------------------------------------
# open-magic-def2spice
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 20-open-magic-def2spice/.prebuilt)","")
20-open-magic-def2spice/.stamp: 18-cadence-innovus-signoff/.execstamp 18-cadence-innovus-signoff/.postconditions.stamp 18-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.lef 18-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.sdf 18-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 18-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.stamp.design.def.gz 18-cadence-innovus-signoff/outputs/.stamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.stamp.design.lef 18-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.stamp.design.sdf 18-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
20-open-magic-def2spice/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
20-open-magic-def2spice/.stamp:
	$(call cpdir-and-parameterize,20-open-magic-def2spice,../design/open-magic-def2spice,20-open-magic-def2spice/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 20-open-magic-def2spice/.prebuilt)","")
20-open-magic-def2spice/inputs/.stamp.adk: 20-open-magic-def2spice/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,20-open-magic-def2spice/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 20-open-magic-def2spice/.prebuilt)","")
20-open-magic-def2spice/inputs/.stamp.design.def.gz: 20-open-magic-def2spice/.stamp 18-cadence-innovus-signoff/outputs/.stamp.design.def.gz
	$(call symlink,20-open-magic-def2spice/inputs,design.def.gz,../../18-cadence-innovus-signoff/outputs/design.def.gz,.stamp.design.def.gz)
endif

# execute

ifeq ("$(wildcard 20-open-magic-def2spice/.prebuilt)","")

define 20_open_magic_def2spice_commands_rule
	mkdir -p 20-open-magic-def2spice/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-def2spice && chmod +x .mflowgen/20-open-magic-def2spice/mflowgen-run && cp -f .mflowgen/20-open-magic-def2spice/mflowgen-run 20-open-magic-def2spice && if [[ -e .mflowgen/20-open-magic-def2spice/mflowgen-debug ]]; then chmod +x .mflowgen/20-open-magic-def2spice/mflowgen-debug && cp -f .mflowgen/20-open-magic-def2spice/mflowgen-debug 20-open-magic-def2spice; fi && if [[ -e .mflowgen/20-open-magic-def2spice/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/20-open-magic-def2spice/mflowgen-check-preconditions.py && cp -f .mflowgen/20-open-magic-def2spice/mflowgen-check-preconditions.py 20-open-magic-def2spice; fi && if [[ -e .mflowgen/20-open-magic-def2spice/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/20-open-magic-def2spice/mflowgen-check-postconditions.py && cp -f .mflowgen/20-open-magic-def2spice/mflowgen-check-postconditions.py 20-open-magic-def2spice; fi && cd 20-open-magic-def2spice && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 20-open-magic-def2spice/outputs/*
endef

20-open-magic-def2spice/.execstamp: 20-open-magic-def2spice/.stamp 20-open-magic-def2spice/inputs/.stamp.adk 20-open-magic-def2spice/inputs/.stamp.design.def.gz
	$(call 20_open_magic_def2spice_commands_rule)
	touch $@

20-open-magic-def2spice/outputs/.execstamp.design_extracted.spice: 20-open-magic-def2spice/.execstamp
	touch $@

endif

# collect outputs

20-open-magic-def2spice/outputs/.stamp.design_extracted.spice: 20-open-magic-def2spice/.execstamp 20-open-magic-def2spice/outputs/.execstamp.design_extracted.spice
	$(call stamp,20-open-magic-def2spice/outputs/.stamp.design_extracted.spice)

# post-conditions

define 20_open_magic_def2spice_post_conditions_commands_rule
	cd 20-open-magic-def2spice && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

20-open-magic-def2spice/.postconditions.stamp: 20-open-magic-def2spice/.execstamp 20-open-magic-def2spice/outputs/.execstamp.design_extracted.spice 20-open-magic-def2spice/outputs/.stamp.design_extracted.spice
	$(call 20_open_magic_def2spice_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: open-magic-def2spice

open-magic-def2spice: 20-open-magic-def2spice/.execstamp 20-open-magic-def2spice/.postconditions.stamp 20-open-magic-def2spice/outputs/.execstamp.design_extracted.spice 20-open-magic-def2spice/outputs/.stamp.design_extracted.spice

.PHONY: 20

20: 20-open-magic-def2spice/.execstamp 20-open-magic-def2spice/.postconditions.stamp 20-open-magic-def2spice/outputs/.execstamp.design_extracted.spice 20-open-magic-def2spice/outputs/.stamp.design_extracted.spice

# debug

# ------------------------------------------------------------------------
# synopsys-pt-timing-signoff
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 21-synopsys-pt-timing-signoff/.prebuilt)","")
21-synopsys-pt-timing-signoff/.stamp: 18-cadence-innovus-signoff/.execstamp 18-cadence-innovus-signoff/.postconditions.stamp 18-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.lef 18-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.sdf 18-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 18-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.stamp.design.def.gz 18-cadence-innovus-signoff/outputs/.stamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.stamp.design.lef 18-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.stamp.design.sdf 18-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
21-synopsys-pt-timing-signoff/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
21-synopsys-pt-timing-signoff/.stamp:
	$(call cpdir-and-parameterize,21-synopsys-pt-timing-signoff,../../mflowgen/steps/synopsys-pt-timing-signoff,21-synopsys-pt-timing-signoff/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 21-synopsys-pt-timing-signoff/.prebuilt)","")
21-synopsys-pt-timing-signoff/inputs/.stamp.adk: 21-synopsys-pt-timing-signoff/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,21-synopsys-pt-timing-signoff/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 21-synopsys-pt-timing-signoff/.prebuilt)","")
21-synopsys-pt-timing-signoff/inputs/.stamp.design.pt.sdc: 21-synopsys-pt-timing-signoff/.stamp 18-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc
	$(call symlink,21-synopsys-pt-timing-signoff/inputs,design.pt.sdc,../../18-cadence-innovus-signoff/outputs/design.pt.sdc,.stamp.design.pt.sdc)
endif

ifeq ("$(wildcard 21-synopsys-pt-timing-signoff/.prebuilt)","")
21-synopsys-pt-timing-signoff/inputs/.stamp.design.spef.gz: 21-synopsys-pt-timing-signoff/.stamp 18-cadence-innovus-signoff/outputs/.stamp.design.spef.gz
	$(call symlink,21-synopsys-pt-timing-signoff/inputs,design.spef.gz,../../18-cadence-innovus-signoff/outputs/design.spef.gz,.stamp.design.spef.gz)
endif

ifeq ("$(wildcard 21-synopsys-pt-timing-signoff/.prebuilt)","")
21-synopsys-pt-timing-signoff/inputs/.stamp.design.vcs.v: 21-synopsys-pt-timing-signoff/.stamp 18-cadence-innovus-signoff/outputs/.stamp.design.vcs.v
	$(call symlink,21-synopsys-pt-timing-signoff/inputs,design.vcs.v,../../18-cadence-innovus-signoff/outputs/design.vcs.v,.stamp.design.vcs.v)
endif

# execute

ifeq ("$(wildcard 21-synopsys-pt-timing-signoff/.prebuilt)","")

define 21_synopsys_pt_timing_signoff_commands_rule
	mkdir -p 21-synopsys-pt-timing-signoff/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t synopsys-pt-timing-signoff && chmod +x .mflowgen/21-synopsys-pt-timing-signoff/mflowgen-run && cp -f .mflowgen/21-synopsys-pt-timing-signoff/mflowgen-run 21-synopsys-pt-timing-signoff && if [[ -e .mflowgen/21-synopsys-pt-timing-signoff/mflowgen-debug ]]; then chmod +x .mflowgen/21-synopsys-pt-timing-signoff/mflowgen-debug && cp -f .mflowgen/21-synopsys-pt-timing-signoff/mflowgen-debug 21-synopsys-pt-timing-signoff; fi && if [[ -e .mflowgen/21-synopsys-pt-timing-signoff/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/21-synopsys-pt-timing-signoff/mflowgen-check-preconditions.py && cp -f .mflowgen/21-synopsys-pt-timing-signoff/mflowgen-check-preconditions.py 21-synopsys-pt-timing-signoff; fi && if [[ -e .mflowgen/21-synopsys-pt-timing-signoff/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/21-synopsys-pt-timing-signoff/mflowgen-check-postconditions.py && cp -f .mflowgen/21-synopsys-pt-timing-signoff/mflowgen-check-postconditions.py 21-synopsys-pt-timing-signoff; fi && cd 21-synopsys-pt-timing-signoff && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 21-synopsys-pt-timing-signoff/outputs/*
endef

21-synopsys-pt-timing-signoff/.execstamp: 21-synopsys-pt-timing-signoff/.stamp 21-synopsys-pt-timing-signoff/inputs/.stamp.adk 21-synopsys-pt-timing-signoff/inputs/.stamp.design.pt.sdc 21-synopsys-pt-timing-signoff/inputs/.stamp.design.spef.gz 21-synopsys-pt-timing-signoff/inputs/.stamp.design.vcs.v
	$(call 21_synopsys_pt_timing_signoff_commands_rule)
	touch $@

21-synopsys-pt-timing-signoff/outputs/.execstamp.design.sdf: 21-synopsys-pt-timing-signoff/.execstamp
	touch $@

endif

# collect outputs

21-synopsys-pt-timing-signoff/outputs/.stamp.design.sdf: 21-synopsys-pt-timing-signoff/.execstamp 21-synopsys-pt-timing-signoff/outputs/.execstamp.design.sdf
	$(call stamp,21-synopsys-pt-timing-signoff/outputs/.stamp.design.sdf)

# post-conditions

define 21_synopsys_pt_timing_signoff_post_conditions_commands_rule
	cd 21-synopsys-pt-timing-signoff && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

21-synopsys-pt-timing-signoff/.postconditions.stamp: 21-synopsys-pt-timing-signoff/.execstamp 21-synopsys-pt-timing-signoff/outputs/.execstamp.design.sdf 21-synopsys-pt-timing-signoff/outputs/.stamp.design.sdf
	$(call 21_synopsys_pt_timing_signoff_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: synopsys-pt-timing-signoff

synopsys-pt-timing-signoff: 21-synopsys-pt-timing-signoff/.execstamp 21-synopsys-pt-timing-signoff/.postconditions.stamp 21-synopsys-pt-timing-signoff/outputs/.execstamp.design.sdf 21-synopsys-pt-timing-signoff/outputs/.stamp.design.sdf

.PHONY: 21

21: 21-synopsys-pt-timing-signoff/.execstamp 21-synopsys-pt-timing-signoff/.postconditions.stamp 21-synopsys-pt-timing-signoff/outputs/.execstamp.design.sdf 21-synopsys-pt-timing-signoff/outputs/.stamp.design.sdf

# debug

# ------------------------------------------------------------------------
# synopsys-ptpx-rtl
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 22-synopsys-ptpx-rtl/.prebuilt)","")
22-synopsys-ptpx-rtl/.stamp: 18-cadence-innovus-signoff/.execstamp 18-cadence-innovus-signoff/.postconditions.stamp 18-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.lef 18-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.sdf 18-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 18-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.stamp.design.def.gz 18-cadence-innovus-signoff/outputs/.stamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.stamp.design.lef 18-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.stamp.design.sdf 18-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
22-synopsys-ptpx-rtl/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
22-synopsys-ptpx-rtl/.stamp: 8-synopsys-vcs-sim/.execstamp 8-synopsys-vcs-sim/.postconditions.stamp 8-synopsys-vcs-sim/outputs/.execstamp.design.vpd 8-synopsys-vcs-sim/outputs/.execstamp.run.saif 8-synopsys-vcs-sim/outputs/.stamp.design.vpd 8-synopsys-vcs-sim/outputs/.stamp.run.saif
22-synopsys-ptpx-rtl/.stamp: 9-synopsys-dc-synthesis/.execstamp 9-synopsys-dc-synthesis/.postconditions.stamp 9-synopsys-dc-synthesis/outputs/.execstamp.design.namemap 9-synopsys-dc-synthesis/outputs/.execstamp.design.sdc 9-synopsys-dc-synthesis/outputs/.execstamp.design.svf 9-synopsys-dc-synthesis/outputs/.execstamp.design.v 9-synopsys-dc-synthesis/outputs/.stamp.design.namemap 9-synopsys-dc-synthesis/outputs/.stamp.design.sdc 9-synopsys-dc-synthesis/outputs/.stamp.design.svf 9-synopsys-dc-synthesis/outputs/.stamp.design.v
22-synopsys-ptpx-rtl/.stamp:
	$(call cpdir-and-parameterize,22-synopsys-ptpx-rtl,../design/synopsys-ptpx-rtl,22-synopsys-ptpx-rtl/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 22-synopsys-ptpx-rtl/.prebuilt)","")
22-synopsys-ptpx-rtl/inputs/.stamp.adk: 22-synopsys-ptpx-rtl/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,22-synopsys-ptpx-rtl/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 22-synopsys-ptpx-rtl/.prebuilt)","")
22-synopsys-ptpx-rtl/inputs/.stamp.design.namemap: 22-synopsys-ptpx-rtl/.stamp 9-synopsys-dc-synthesis/outputs/.stamp.design.namemap
	$(call symlink,22-synopsys-ptpx-rtl/inputs,design.namemap,../../9-synopsys-dc-synthesis/outputs/design.namemap,.stamp.design.namemap)
endif

ifeq ("$(wildcard 22-synopsys-ptpx-rtl/.prebuilt)","")
22-synopsys-ptpx-rtl/inputs/.stamp.design.pt.sdc: 22-synopsys-ptpx-rtl/.stamp 18-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc
	$(call symlink,22-synopsys-ptpx-rtl/inputs,design.pt.sdc,../../18-cadence-innovus-signoff/outputs/design.pt.sdc,.stamp.design.pt.sdc)
endif

ifeq ("$(wildcard 22-synopsys-ptpx-rtl/.prebuilt)","")
22-synopsys-ptpx-rtl/inputs/.stamp.design.spef.gz: 22-synopsys-ptpx-rtl/.stamp 18-cadence-innovus-signoff/outputs/.stamp.design.spef.gz
	$(call symlink,22-synopsys-ptpx-rtl/inputs,design.spef.gz,../../18-cadence-innovus-signoff/outputs/design.spef.gz,.stamp.design.spef.gz)
endif

ifeq ("$(wildcard 22-synopsys-ptpx-rtl/.prebuilt)","")
22-synopsys-ptpx-rtl/inputs/.stamp.design.vcs.v: 22-synopsys-ptpx-rtl/.stamp 18-cadence-innovus-signoff/outputs/.stamp.design.vcs.v
	$(call symlink,22-synopsys-ptpx-rtl/inputs,design.vcs.v,../../18-cadence-innovus-signoff/outputs/design.vcs.v,.stamp.design.vcs.v)
endif

ifeq ("$(wildcard 22-synopsys-ptpx-rtl/.prebuilt)","")
22-synopsys-ptpx-rtl/inputs/.stamp.run.saif: 22-synopsys-ptpx-rtl/.stamp 8-synopsys-vcs-sim/outputs/.stamp.run.saif
	$(call symlink,22-synopsys-ptpx-rtl/inputs,run.saif,../../8-synopsys-vcs-sim/outputs/run.saif,.stamp.run.saif)
endif

# execute

ifeq ("$(wildcard 22-synopsys-ptpx-rtl/.prebuilt)","")

define 22_synopsys_ptpx_rtl_commands_rule
	mkdir -p 22-synopsys-ptpx-rtl/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t synopsys-ptpx-rtl && chmod +x .mflowgen/22-synopsys-ptpx-rtl/mflowgen-run && cp -f .mflowgen/22-synopsys-ptpx-rtl/mflowgen-run 22-synopsys-ptpx-rtl && if [[ -e .mflowgen/22-synopsys-ptpx-rtl/mflowgen-debug ]]; then chmod +x .mflowgen/22-synopsys-ptpx-rtl/mflowgen-debug && cp -f .mflowgen/22-synopsys-ptpx-rtl/mflowgen-debug 22-synopsys-ptpx-rtl; fi && if [[ -e .mflowgen/22-synopsys-ptpx-rtl/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/22-synopsys-ptpx-rtl/mflowgen-check-preconditions.py && cp -f .mflowgen/22-synopsys-ptpx-rtl/mflowgen-check-preconditions.py 22-synopsys-ptpx-rtl; fi && if [[ -e .mflowgen/22-synopsys-ptpx-rtl/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/22-synopsys-ptpx-rtl/mflowgen-check-postconditions.py && cp -f .mflowgen/22-synopsys-ptpx-rtl/mflowgen-check-postconditions.py 22-synopsys-ptpx-rtl; fi && cd 22-synopsys-ptpx-rtl && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 22-synopsys-ptpx-rtl/outputs/*
endef

22-synopsys-ptpx-rtl/.execstamp: 22-synopsys-ptpx-rtl/.stamp 22-synopsys-ptpx-rtl/inputs/.stamp.adk 22-synopsys-ptpx-rtl/inputs/.stamp.design.namemap 22-synopsys-ptpx-rtl/inputs/.stamp.design.pt.sdc 22-synopsys-ptpx-rtl/inputs/.stamp.design.spef.gz 22-synopsys-ptpx-rtl/inputs/.stamp.design.vcs.v 22-synopsys-ptpx-rtl/inputs/.stamp.run.saif
	$(call 22_synopsys_ptpx_rtl_commands_rule)
	touch $@

22-synopsys-ptpx-rtl/outputs/.execstamp.design.pwr.rpt: 22-synopsys-ptpx-rtl/.execstamp
	touch $@
22-synopsys-ptpx-rtl/outputs/.execstamp.design.pwr.hier.rpt: 22-synopsys-ptpx-rtl/.execstamp
	touch $@
22-synopsys-ptpx-rtl/outputs/.execstamp.design.sw.rpt: 22-synopsys-ptpx-rtl/.execstamp
	touch $@

endif

# collect outputs

22-synopsys-ptpx-rtl/outputs/.stamp.design.pwr.rpt: 22-synopsys-ptpx-rtl/.execstamp 22-synopsys-ptpx-rtl/outputs/.execstamp.design.pwr.hier.rpt 22-synopsys-ptpx-rtl/outputs/.execstamp.design.pwr.rpt 22-synopsys-ptpx-rtl/outputs/.execstamp.design.sw.rpt
	$(call stamp,22-synopsys-ptpx-rtl/outputs/.stamp.design.pwr.rpt)

22-synopsys-ptpx-rtl/outputs/.stamp.design.pwr.hier.rpt: 22-synopsys-ptpx-rtl/.execstamp 22-synopsys-ptpx-rtl/outputs/.execstamp.design.pwr.hier.rpt 22-synopsys-ptpx-rtl/outputs/.execstamp.design.pwr.rpt 22-synopsys-ptpx-rtl/outputs/.execstamp.design.sw.rpt
	$(call stamp,22-synopsys-ptpx-rtl/outputs/.stamp.design.pwr.hier.rpt)

22-synopsys-ptpx-rtl/outputs/.stamp.design.sw.rpt: 22-synopsys-ptpx-rtl/.execstamp 22-synopsys-ptpx-rtl/outputs/.execstamp.design.pwr.hier.rpt 22-synopsys-ptpx-rtl/outputs/.execstamp.design.pwr.rpt 22-synopsys-ptpx-rtl/outputs/.execstamp.design.sw.rpt
	$(call stamp,22-synopsys-ptpx-rtl/outputs/.stamp.design.sw.rpt)

# post-conditions

define 22_synopsys_ptpx_rtl_post_conditions_commands_rule
	cd 22-synopsys-ptpx-rtl && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

22-synopsys-ptpx-rtl/.postconditions.stamp: 22-synopsys-ptpx-rtl/.execstamp 22-synopsys-ptpx-rtl/outputs/.execstamp.design.pwr.hier.rpt 22-synopsys-ptpx-rtl/outputs/.execstamp.design.pwr.rpt 22-synopsys-ptpx-rtl/outputs/.execstamp.design.sw.rpt 22-synopsys-ptpx-rtl/outputs/.stamp.design.pwr.hier.rpt 22-synopsys-ptpx-rtl/outputs/.stamp.design.pwr.rpt 22-synopsys-ptpx-rtl/outputs/.stamp.design.sw.rpt
	$(call 22_synopsys_ptpx_rtl_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: synopsys-ptpx-rtl

synopsys-ptpx-rtl: 22-synopsys-ptpx-rtl/.execstamp 22-synopsys-ptpx-rtl/.postconditions.stamp 22-synopsys-ptpx-rtl/outputs/.execstamp.design.pwr.hier.rpt 22-synopsys-ptpx-rtl/outputs/.execstamp.design.pwr.rpt 22-synopsys-ptpx-rtl/outputs/.execstamp.design.sw.rpt 22-synopsys-ptpx-rtl/outputs/.stamp.design.pwr.hier.rpt 22-synopsys-ptpx-rtl/outputs/.stamp.design.pwr.rpt 22-synopsys-ptpx-rtl/outputs/.stamp.design.sw.rpt

.PHONY: 22

22: 22-synopsys-ptpx-rtl/.execstamp 22-synopsys-ptpx-rtl/.postconditions.stamp 22-synopsys-ptpx-rtl/outputs/.execstamp.design.pwr.hier.rpt 22-synopsys-ptpx-rtl/outputs/.execstamp.design.pwr.rpt 22-synopsys-ptpx-rtl/outputs/.execstamp.design.sw.rpt 22-synopsys-ptpx-rtl/outputs/.stamp.design.pwr.hier.rpt 22-synopsys-ptpx-rtl/outputs/.stamp.design.pwr.rpt 22-synopsys-ptpx-rtl/outputs/.stamp.design.sw.rpt

# debug

# ------------------------------------------------------------------------
# gl-sim
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 23-gl-sim/.prebuilt)","")
23-gl-sim/.stamp: 18-cadence-innovus-signoff/.execstamp 18-cadence-innovus-signoff/.postconditions.stamp 18-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.lef 18-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.sdf 18-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 18-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.stamp.design.def.gz 18-cadence-innovus-signoff/outputs/.stamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.stamp.design.lef 18-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.stamp.design.sdf 18-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
23-gl-sim/.stamp: 21-synopsys-pt-timing-signoff/.execstamp 21-synopsys-pt-timing-signoff/.postconditions.stamp 21-synopsys-pt-timing-signoff/outputs/.execstamp.design.sdf 21-synopsys-pt-timing-signoff/outputs/.stamp.design.sdf
23-gl-sim/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
23-gl-sim/.stamp: 6-testbench/.execstamp 6-testbench/.postconditions.stamp 6-testbench/outputs/.execstamp.design.args 6-testbench/outputs/.execstamp.design.args.gls 6-testbench/outputs/.execstamp.testbench.sv 6-testbench/outputs/.execstamp.testbench.v 6-testbench/outputs/.stamp.design.args 6-testbench/outputs/.stamp.design.args.gls 6-testbench/outputs/.stamp.testbench.sv 6-testbench/outputs/.stamp.testbench.v
23-gl-sim/.stamp:
	$(call cpdir-and-parameterize,23-gl-sim,../design/synopsys-vcs-sim,23-gl-sim/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 23-gl-sim/.prebuilt)","")
23-gl-sim/inputs/.stamp.adk: 23-gl-sim/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,23-gl-sim/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 23-gl-sim/.prebuilt)","")
23-gl-sim/inputs/.stamp.design.args: 23-gl-sim/.stamp 6-testbench/outputs/.stamp.design.args.gls
	$(call symlink,23-gl-sim/inputs,design.args,../../6-testbench/outputs/design.args.gls,.stamp.design.args)
endif

ifeq ("$(wildcard 23-gl-sim/.prebuilt)","")
23-gl-sim/inputs/.stamp.design.sdf: 23-gl-sim/.stamp 21-synopsys-pt-timing-signoff/outputs/.stamp.design.sdf
	$(call symlink,23-gl-sim/inputs,design.sdf,../../21-synopsys-pt-timing-signoff/outputs/design.sdf,.stamp.design.sdf)
endif

ifeq ("$(wildcard 23-gl-sim/.prebuilt)","")
23-gl-sim/inputs/.stamp.design.vcs.v: 23-gl-sim/.stamp 18-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v
	$(call symlink,23-gl-sim/inputs,design.vcs.v,../../18-cadence-innovus-signoff/outputs/design.vcs.pg.v,.stamp.design.vcs.v)
endif

ifeq ("$(wildcard 23-gl-sim/.prebuilt)","")
23-gl-sim/inputs/.stamp.testbench.sv: 23-gl-sim/.stamp 6-testbench/outputs/.stamp.testbench.sv
	$(call symlink,23-gl-sim/inputs,testbench.sv,../../6-testbench/outputs/testbench.sv,.stamp.testbench.sv)
endif

# execute

ifeq ("$(wildcard 23-gl-sim/.prebuilt)","")

define 23_gl_sim_commands_rule
	mkdir -p 23-gl-sim/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t gl-sim && chmod +x .mflowgen/23-gl-sim/mflowgen-run && cp -f .mflowgen/23-gl-sim/mflowgen-run 23-gl-sim && if [[ -e .mflowgen/23-gl-sim/mflowgen-debug ]]; then chmod +x .mflowgen/23-gl-sim/mflowgen-debug && cp -f .mflowgen/23-gl-sim/mflowgen-debug 23-gl-sim; fi && if [[ -e .mflowgen/23-gl-sim/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/23-gl-sim/mflowgen-check-preconditions.py && cp -f .mflowgen/23-gl-sim/mflowgen-check-preconditions.py 23-gl-sim; fi && if [[ -e .mflowgen/23-gl-sim/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/23-gl-sim/mflowgen-check-postconditions.py && cp -f .mflowgen/23-gl-sim/mflowgen-check-postconditions.py 23-gl-sim; fi && cd 23-gl-sim && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 23-gl-sim/outputs/*
endef

23-gl-sim/.execstamp: 23-gl-sim/.stamp 23-gl-sim/inputs/.stamp.adk 23-gl-sim/inputs/.stamp.design.args 23-gl-sim/inputs/.stamp.design.sdf 23-gl-sim/inputs/.stamp.design.vcs.v 23-gl-sim/inputs/.stamp.testbench.sv
	$(call 23_gl_sim_commands_rule)
	touch $@

23-gl-sim/outputs/.execstamp.design.vpd: 23-gl-sim/.execstamp
	touch $@

endif

# collect outputs

23-gl-sim/outputs/.stamp.design.vpd: 23-gl-sim/.execstamp 23-gl-sim/outputs/.execstamp.design.vpd
	$(call stamp,23-gl-sim/outputs/.stamp.design.vpd)

# post-conditions

define 23_gl_sim_post_conditions_commands_rule
	cd 23-gl-sim && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

23-gl-sim/.postconditions.stamp: 23-gl-sim/.execstamp 23-gl-sim/outputs/.execstamp.design.vpd 23-gl-sim/outputs/.stamp.design.vpd
	$(call 23_gl_sim_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: gl-sim

gl-sim: 23-gl-sim/.execstamp 23-gl-sim/.postconditions.stamp 23-gl-sim/outputs/.execstamp.design.vpd 23-gl-sim/outputs/.stamp.design.vpd

.PHONY: 23

23: 23-gl-sim/.execstamp 23-gl-sim/.postconditions.stamp 23-gl-sim/outputs/.execstamp.design.vpd 23-gl-sim/outputs/.stamp.design.vpd

# debug

# ------------------------------------------------------------------------
# netgen-lvs-def
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 24-netgen-lvs-def/.prebuilt)","")
24-netgen-lvs-def/.stamp: 18-cadence-innovus-signoff/.execstamp 18-cadence-innovus-signoff/.postconditions.stamp 18-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.lef 18-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.sdf 18-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 18-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.stamp.design.def.gz 18-cadence-innovus-signoff/outputs/.stamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.stamp.design.lef 18-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.stamp.design.sdf 18-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
24-netgen-lvs-def/.stamp: 20-open-magic-def2spice/.execstamp 20-open-magic-def2spice/.postconditions.stamp 20-open-magic-def2spice/outputs/.execstamp.design_extracted.spice 20-open-magic-def2spice/outputs/.stamp.design_extracted.spice
24-netgen-lvs-def/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
24-netgen-lvs-def/.stamp:
	$(call cpdir-and-parameterize,24-netgen-lvs-def,../design/open-netgen-lvs,24-netgen-lvs-def/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 24-netgen-lvs-def/.prebuilt)","")
24-netgen-lvs-def/inputs/.stamp.adk: 24-netgen-lvs-def/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,24-netgen-lvs-def/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 24-netgen-lvs-def/.prebuilt)","")
24-netgen-lvs-def/inputs/.stamp.design.lvs.v: 24-netgen-lvs-def/.stamp 18-cadence-innovus-signoff/outputs/.stamp.design.lvs.v
	$(call symlink,24-netgen-lvs-def/inputs,design.lvs.v,../../18-cadence-innovus-signoff/outputs/design.lvs.v,.stamp.design.lvs.v)
endif

ifeq ("$(wildcard 24-netgen-lvs-def/.prebuilt)","")
24-netgen-lvs-def/inputs/.stamp.design_extracted.spice: 24-netgen-lvs-def/.stamp 20-open-magic-def2spice/outputs/.stamp.design_extracted.spice
	$(call symlink,24-netgen-lvs-def/inputs,design_extracted.spice,../../20-open-magic-def2spice/outputs/design_extracted.spice,.stamp.design_extracted.spice)
endif

# execute

ifeq ("$(wildcard 24-netgen-lvs-def/.prebuilt)","")

define 24_netgen_lvs_def_commands_rule
	mkdir -p 24-netgen-lvs-def/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t netgen-lvs-def && chmod +x .mflowgen/24-netgen-lvs-def/mflowgen-run && cp -f .mflowgen/24-netgen-lvs-def/mflowgen-run 24-netgen-lvs-def && if [[ -e .mflowgen/24-netgen-lvs-def/mflowgen-debug ]]; then chmod +x .mflowgen/24-netgen-lvs-def/mflowgen-debug && cp -f .mflowgen/24-netgen-lvs-def/mflowgen-debug 24-netgen-lvs-def; fi && if [[ -e .mflowgen/24-netgen-lvs-def/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/24-netgen-lvs-def/mflowgen-check-preconditions.py && cp -f .mflowgen/24-netgen-lvs-def/mflowgen-check-preconditions.py 24-netgen-lvs-def; fi && if [[ -e .mflowgen/24-netgen-lvs-def/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/24-netgen-lvs-def/mflowgen-check-postconditions.py && cp -f .mflowgen/24-netgen-lvs-def/mflowgen-check-postconditions.py 24-netgen-lvs-def; fi && cd 24-netgen-lvs-def && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 24-netgen-lvs-def/outputs/*
endef

24-netgen-lvs-def/.execstamp: 24-netgen-lvs-def/.stamp 24-netgen-lvs-def/inputs/.stamp.adk 24-netgen-lvs-def/inputs/.stamp.design.lvs.v 24-netgen-lvs-def/inputs/.stamp.design_extracted.spice
	$(call 24_netgen_lvs_def_commands_rule)
	touch $@

24-netgen-lvs-def/outputs/.execstamp.lvs_results.log: 24-netgen-lvs-def/.execstamp
	touch $@

endif

# collect outputs

24-netgen-lvs-def/outputs/.stamp.lvs_results.log: 24-netgen-lvs-def/.execstamp 24-netgen-lvs-def/outputs/.execstamp.lvs_results.log
	$(call stamp,24-netgen-lvs-def/outputs/.stamp.lvs_results.log)

# post-conditions

define 24_netgen_lvs_def_post_conditions_commands_rule
	cd 24-netgen-lvs-def && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

24-netgen-lvs-def/.postconditions.stamp: 24-netgen-lvs-def/.execstamp 24-netgen-lvs-def/outputs/.execstamp.lvs_results.log 24-netgen-lvs-def/outputs/.stamp.lvs_results.log
	$(call 24_netgen_lvs_def_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: netgen-lvs-def

netgen-lvs-def: 24-netgen-lvs-def/.execstamp 24-netgen-lvs-def/.postconditions.stamp 24-netgen-lvs-def/outputs/.execstamp.lvs_results.log 24-netgen-lvs-def/outputs/.stamp.lvs_results.log

.PHONY: 24

24: 24-netgen-lvs-def/.execstamp 24-netgen-lvs-def/.postconditions.stamp 24-netgen-lvs-def/outputs/.execstamp.lvs_results.log 24-netgen-lvs-def/outputs/.stamp.lvs_results.log

# debug

# ------------------------------------------------------------------------
# open-magic-antenna
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 25-open-magic-antenna/.prebuilt)","")
25-open-magic-antenna/.stamp: 19-mentor-calibre-gdsmerge/.execstamp 19-mentor-calibre-gdsmerge/.postconditions.stamp 19-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 19-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
25-open-magic-antenna/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
25-open-magic-antenna/.stamp:
	$(call cpdir-and-parameterize,25-open-magic-antenna,../design/open-magic-antenna,25-open-magic-antenna/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 25-open-magic-antenna/.prebuilt)","")
25-open-magic-antenna/inputs/.stamp.adk: 25-open-magic-antenna/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,25-open-magic-antenna/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 25-open-magic-antenna/.prebuilt)","")
25-open-magic-antenna/inputs/.stamp.design_merged.gds: 25-open-magic-antenna/.stamp 19-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
	$(call symlink,25-open-magic-antenna/inputs,design_merged.gds,../../19-mentor-calibre-gdsmerge/outputs/design_merged.gds,.stamp.design_merged.gds)
endif

# execute

ifeq ("$(wildcard 25-open-magic-antenna/.prebuilt)","")

define 25_open_magic_antenna_commands_rule
	mkdir -p 25-open-magic-antenna/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-antenna && chmod +x .mflowgen/25-open-magic-antenna/mflowgen-run && cp -f .mflowgen/25-open-magic-antenna/mflowgen-run 25-open-magic-antenna && if [[ -e .mflowgen/25-open-magic-antenna/mflowgen-debug ]]; then chmod +x .mflowgen/25-open-magic-antenna/mflowgen-debug && cp -f .mflowgen/25-open-magic-antenna/mflowgen-debug 25-open-magic-antenna; fi && if [[ -e .mflowgen/25-open-magic-antenna/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/25-open-magic-antenna/mflowgen-check-preconditions.py && cp -f .mflowgen/25-open-magic-antenna/mflowgen-check-preconditions.py 25-open-magic-antenna; fi && if [[ -e .mflowgen/25-open-magic-antenna/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/25-open-magic-antenna/mflowgen-check-postconditions.py && cp -f .mflowgen/25-open-magic-antenna/mflowgen-check-postconditions.py 25-open-magic-antenna; fi && cd 25-open-magic-antenna && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 25-open-magic-antenna/outputs/*
endef

25-open-magic-antenna/.execstamp: 25-open-magic-antenna/.stamp 25-open-magic-antenna/inputs/.stamp.adk 25-open-magic-antenna/inputs/.stamp.design_merged.gds
	$(call 25_open_magic_antenna_commands_rule)
	touch $@

25-open-magic-antenna/outputs/.execstamp.antenna_check.log: 25-open-magic-antenna/.execstamp
	touch $@

endif

# collect outputs

25-open-magic-antenna/outputs/.stamp.antenna_check.log: 25-open-magic-antenna/.execstamp 25-open-magic-antenna/outputs/.execstamp.antenna_check.log
	$(call stamp,25-open-magic-antenna/outputs/.stamp.antenna_check.log)

# post-conditions

define 25_open_magic_antenna_post_conditions_commands_rule
	cd 25-open-magic-antenna && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

25-open-magic-antenna/.postconditions.stamp: 25-open-magic-antenna/.execstamp 25-open-magic-antenna/outputs/.execstamp.antenna_check.log 25-open-magic-antenna/outputs/.stamp.antenna_check.log
	$(call 25_open_magic_antenna_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: open-magic-antenna

open-magic-antenna: 25-open-magic-antenna/.execstamp 25-open-magic-antenna/.postconditions.stamp 25-open-magic-antenna/outputs/.execstamp.antenna_check.log 25-open-magic-antenna/outputs/.stamp.antenna_check.log

.PHONY: 25

25: 25-open-magic-antenna/.execstamp 25-open-magic-antenna/.postconditions.stamp 25-open-magic-antenna/outputs/.execstamp.antenna_check.log 25-open-magic-antenna/outputs/.stamp.antenna_check.log

# debug

# ------------------------------------------------------------------------
# open-magic-drc
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 26-open-magic-drc/.prebuilt)","")
26-open-magic-drc/.stamp: 19-mentor-calibre-gdsmerge/.execstamp 19-mentor-calibre-gdsmerge/.postconditions.stamp 19-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 19-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
26-open-magic-drc/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
26-open-magic-drc/.stamp:
	$(call cpdir-and-parameterize,26-open-magic-drc,../design/open-magic-drc,26-open-magic-drc/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 26-open-magic-drc/.prebuilt)","")
26-open-magic-drc/inputs/.stamp.adk: 26-open-magic-drc/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,26-open-magic-drc/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 26-open-magic-drc/.prebuilt)","")
26-open-magic-drc/inputs/.stamp.design_merged.gds: 26-open-magic-drc/.stamp 19-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
	$(call symlink,26-open-magic-drc/inputs,design_merged.gds,../../19-mentor-calibre-gdsmerge/outputs/design_merged.gds,.stamp.design_merged.gds)
endif

# execute

ifeq ("$(wildcard 26-open-magic-drc/.prebuilt)","")

define 26_open_magic_drc_commands_rule
	mkdir -p 26-open-magic-drc/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-drc && chmod +x .mflowgen/26-open-magic-drc/mflowgen-run && cp -f .mflowgen/26-open-magic-drc/mflowgen-run 26-open-magic-drc && if [[ -e .mflowgen/26-open-magic-drc/mflowgen-debug ]]; then chmod +x .mflowgen/26-open-magic-drc/mflowgen-debug && cp -f .mflowgen/26-open-magic-drc/mflowgen-debug 26-open-magic-drc; fi && if [[ -e .mflowgen/26-open-magic-drc/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/26-open-magic-drc/mflowgen-check-preconditions.py && cp -f .mflowgen/26-open-magic-drc/mflowgen-check-preconditions.py 26-open-magic-drc; fi && if [[ -e .mflowgen/26-open-magic-drc/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/26-open-magic-drc/mflowgen-check-postconditions.py && cp -f .mflowgen/26-open-magic-drc/mflowgen-check-postconditions.py 26-open-magic-drc; fi && cd 26-open-magic-drc && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 26-open-magic-drc/outputs/*
endef

26-open-magic-drc/.execstamp: 26-open-magic-drc/.stamp 26-open-magic-drc/inputs/.stamp.adk 26-open-magic-drc/inputs/.stamp.design_merged.gds
	$(call 26_open_magic_drc_commands_rule)
	touch $@

26-open-magic-drc/outputs/.execstamp.drc_results.log: 26-open-magic-drc/.execstamp
	touch $@

endif

# collect outputs

26-open-magic-drc/outputs/.stamp.drc_results.log: 26-open-magic-drc/.execstamp 26-open-magic-drc/outputs/.execstamp.drc_results.log
	$(call stamp,26-open-magic-drc/outputs/.stamp.drc_results.log)

# post-conditions

define 26_open_magic_drc_post_conditions_commands_rule
	cd 26-open-magic-drc && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

26-open-magic-drc/.postconditions.stamp: 26-open-magic-drc/.execstamp 26-open-magic-drc/outputs/.execstamp.drc_results.log 26-open-magic-drc/outputs/.stamp.drc_results.log
	$(call 26_open_magic_drc_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: open-magic-drc

open-magic-drc: 26-open-magic-drc/.execstamp 26-open-magic-drc/.postconditions.stamp 26-open-magic-drc/outputs/.execstamp.drc_results.log 26-open-magic-drc/outputs/.stamp.drc_results.log

.PHONY: 26

26: 26-open-magic-drc/.execstamp 26-open-magic-drc/.postconditions.stamp 26-open-magic-drc/outputs/.execstamp.drc_results.log 26-open-magic-drc/outputs/.stamp.drc_results.log

# debug

# ------------------------------------------------------------------------
# open-magic-gds2spice
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 27-open-magic-gds2spice/.prebuilt)","")
27-open-magic-gds2spice/.stamp: 19-mentor-calibre-gdsmerge/.execstamp 19-mentor-calibre-gdsmerge/.postconditions.stamp 19-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 19-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
27-open-magic-gds2spice/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
27-open-magic-gds2spice/.stamp:
	$(call cpdir-and-parameterize,27-open-magic-gds2spice,../design/open-magic-gds2spice,27-open-magic-gds2spice/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 27-open-magic-gds2spice/.prebuilt)","")
27-open-magic-gds2spice/inputs/.stamp.adk: 27-open-magic-gds2spice/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,27-open-magic-gds2spice/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 27-open-magic-gds2spice/.prebuilt)","")
27-open-magic-gds2spice/inputs/.stamp.design_merged.gds: 27-open-magic-gds2spice/.stamp 19-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
	$(call symlink,27-open-magic-gds2spice/inputs,design_merged.gds,../../19-mentor-calibre-gdsmerge/outputs/design_merged.gds,.stamp.design_merged.gds)
endif

# execute

ifeq ("$(wildcard 27-open-magic-gds2spice/.prebuilt)","")

define 27_open_magic_gds2spice_commands_rule
	mkdir -p 27-open-magic-gds2spice/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-gds2spice && chmod +x .mflowgen/27-open-magic-gds2spice/mflowgen-run && cp -f .mflowgen/27-open-magic-gds2spice/mflowgen-run 27-open-magic-gds2spice && if [[ -e .mflowgen/27-open-magic-gds2spice/mflowgen-debug ]]; then chmod +x .mflowgen/27-open-magic-gds2spice/mflowgen-debug && cp -f .mflowgen/27-open-magic-gds2spice/mflowgen-debug 27-open-magic-gds2spice; fi && if [[ -e .mflowgen/27-open-magic-gds2spice/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/27-open-magic-gds2spice/mflowgen-check-preconditions.py && cp -f .mflowgen/27-open-magic-gds2spice/mflowgen-check-preconditions.py 27-open-magic-gds2spice; fi && if [[ -e .mflowgen/27-open-magic-gds2spice/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/27-open-magic-gds2spice/mflowgen-check-postconditions.py && cp -f .mflowgen/27-open-magic-gds2spice/mflowgen-check-postconditions.py 27-open-magic-gds2spice; fi && cd 27-open-magic-gds2spice && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 27-open-magic-gds2spice/outputs/*
endef

27-open-magic-gds2spice/.execstamp: 27-open-magic-gds2spice/.stamp 27-open-magic-gds2spice/inputs/.stamp.adk 27-open-magic-gds2spice/inputs/.stamp.design_merged.gds
	$(call 27_open_magic_gds2spice_commands_rule)
	touch $@

27-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice: 27-open-magic-gds2spice/.execstamp
	touch $@

endif

# collect outputs

27-open-magic-gds2spice/outputs/.stamp.design_extracted.spice: 27-open-magic-gds2spice/.execstamp 27-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice
	$(call stamp,27-open-magic-gds2spice/outputs/.stamp.design_extracted.spice)

# post-conditions

define 27_open_magic_gds2spice_post_conditions_commands_rule
	cd 27-open-magic-gds2spice && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

27-open-magic-gds2spice/.postconditions.stamp: 27-open-magic-gds2spice/.execstamp 27-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice 27-open-magic-gds2spice/outputs/.stamp.design_extracted.spice
	$(call 27_open_magic_gds2spice_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: open-magic-gds2spice

open-magic-gds2spice: 27-open-magic-gds2spice/.execstamp 27-open-magic-gds2spice/.postconditions.stamp 27-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice 27-open-magic-gds2spice/outputs/.stamp.design_extracted.spice

.PHONY: 27

27: 27-open-magic-gds2spice/.execstamp 27-open-magic-gds2spice/.postconditions.stamp 27-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice 27-open-magic-gds2spice/outputs/.stamp.design_extracted.spice

# debug

# ------------------------------------------------------------------------
# gen-saif-gl
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 28-gen-saif-gl/.prebuilt)","")
28-gen-saif-gl/.stamp: 23-gl-sim/.execstamp 23-gl-sim/.postconditions.stamp 23-gl-sim/outputs/.execstamp.design.vpd 23-gl-sim/outputs/.stamp.design.vpd
28-gen-saif-gl/.stamp:
	$(call cpdir-and-parameterize,28-gen-saif-gl,../../mflowgen/steps/synopsys-vcd2saif-convert,28-gen-saif-gl/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 28-gen-saif-gl/.prebuilt)","")
28-gen-saif-gl/inputs/.stamp.run.vcd: 28-gen-saif-gl/.stamp 23-gl-sim/outputs/.stamp.design.vpd
	$(call symlink,28-gen-saif-gl/inputs,run.vcd,../../23-gl-sim/outputs/design.vpd,.stamp.run.vcd)
endif

# execute

ifeq ("$(wildcard 28-gen-saif-gl/.prebuilt)","")

define 28_gen_saif_gl_commands_rule
	mkdir -p 28-gen-saif-gl/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t gen-saif-gl && chmod +x .mflowgen/28-gen-saif-gl/mflowgen-run && cp -f .mflowgen/28-gen-saif-gl/mflowgen-run 28-gen-saif-gl && if [[ -e .mflowgen/28-gen-saif-gl/mflowgen-debug ]]; then chmod +x .mflowgen/28-gen-saif-gl/mflowgen-debug && cp -f .mflowgen/28-gen-saif-gl/mflowgen-debug 28-gen-saif-gl; fi && if [[ -e .mflowgen/28-gen-saif-gl/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/28-gen-saif-gl/mflowgen-check-preconditions.py && cp -f .mflowgen/28-gen-saif-gl/mflowgen-check-preconditions.py 28-gen-saif-gl; fi && if [[ -e .mflowgen/28-gen-saif-gl/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/28-gen-saif-gl/mflowgen-check-postconditions.py && cp -f .mflowgen/28-gen-saif-gl/mflowgen-check-postconditions.py 28-gen-saif-gl; fi && cd 28-gen-saif-gl && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 28-gen-saif-gl/outputs/*
endef

28-gen-saif-gl/.execstamp: 28-gen-saif-gl/.stamp 28-gen-saif-gl/inputs/.stamp.run.vcd
	$(call 28_gen_saif_gl_commands_rule)
	touch $@

28-gen-saif-gl/outputs/.execstamp.run.saif: 28-gen-saif-gl/.execstamp
	touch $@

endif

# collect outputs

28-gen-saif-gl/outputs/.stamp.run.saif: 28-gen-saif-gl/.execstamp 28-gen-saif-gl/outputs/.execstamp.run.saif
	$(call stamp,28-gen-saif-gl/outputs/.stamp.run.saif)

# post-conditions

define 28_gen_saif_gl_post_conditions_commands_rule
	cd 28-gen-saif-gl && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

28-gen-saif-gl/.postconditions.stamp: 28-gen-saif-gl/.execstamp 28-gen-saif-gl/outputs/.execstamp.run.saif 28-gen-saif-gl/outputs/.stamp.run.saif
	$(call 28_gen_saif_gl_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: gen-saif-gl

gen-saif-gl: 28-gen-saif-gl/.execstamp 28-gen-saif-gl/.postconditions.stamp 28-gen-saif-gl/outputs/.execstamp.run.saif 28-gen-saif-gl/outputs/.stamp.run.saif

.PHONY: 28

28: 28-gen-saif-gl/.execstamp 28-gen-saif-gl/.postconditions.stamp 28-gen-saif-gl/outputs/.execstamp.run.saif 28-gen-saif-gl/outputs/.stamp.run.saif

# debug

# ------------------------------------------------------------------------
# mentor-calibre-comparison
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 29-mentor-calibre-comparison/.prebuilt)","")
29-mentor-calibre-comparison/.stamp: 18-cadence-innovus-signoff/.execstamp 18-cadence-innovus-signoff/.postconditions.stamp 18-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.lef 18-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.sdf 18-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 18-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.stamp.design.def.gz 18-cadence-innovus-signoff/outputs/.stamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.stamp.design.lef 18-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.stamp.design.sdf 18-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
29-mentor-calibre-comparison/.stamp: 27-open-magic-gds2spice/.execstamp 27-open-magic-gds2spice/.postconditions.stamp 27-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice 27-open-magic-gds2spice/outputs/.stamp.design_extracted.spice
29-mentor-calibre-comparison/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
29-mentor-calibre-comparison/.stamp:
	$(call cpdir-and-parameterize,29-mentor-calibre-comparison,../design/mentor-calibre-comparison,29-mentor-calibre-comparison/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 29-mentor-calibre-comparison/.prebuilt)","")
29-mentor-calibre-comparison/inputs/.stamp.adk: 29-mentor-calibre-comparison/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,29-mentor-calibre-comparison/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 29-mentor-calibre-comparison/.prebuilt)","")
29-mentor-calibre-comparison/inputs/.stamp.design.lvs.v: 29-mentor-calibre-comparison/.stamp 18-cadence-innovus-signoff/outputs/.stamp.design.lvs.v
	$(call symlink,29-mentor-calibre-comparison/inputs,design.lvs.v,../../18-cadence-innovus-signoff/outputs/design.lvs.v,.stamp.design.lvs.v)
endif

ifeq ("$(wildcard 29-mentor-calibre-comparison/.prebuilt)","")
29-mentor-calibre-comparison/inputs/.stamp.design_extracted.spice: 29-mentor-calibre-comparison/.stamp 27-open-magic-gds2spice/outputs/.stamp.design_extracted.spice
	$(call symlink,29-mentor-calibre-comparison/inputs,design_extracted.spice,../../27-open-magic-gds2spice/outputs/design_extracted.spice,.stamp.design_extracted.spice)
endif

# execute

ifeq ("$(wildcard 29-mentor-calibre-comparison/.prebuilt)","")

define 29_mentor_calibre_comparison_commands_rule
	mkdir -p 29-mentor-calibre-comparison/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t mentor-calibre-comparison && chmod +x .mflowgen/29-mentor-calibre-comparison/mflowgen-run && cp -f .mflowgen/29-mentor-calibre-comparison/mflowgen-run 29-mentor-calibre-comparison && if [[ -e .mflowgen/29-mentor-calibre-comparison/mflowgen-debug ]]; then chmod +x .mflowgen/29-mentor-calibre-comparison/mflowgen-debug && cp -f .mflowgen/29-mentor-calibre-comparison/mflowgen-debug 29-mentor-calibre-comparison; fi && if [[ -e .mflowgen/29-mentor-calibre-comparison/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/29-mentor-calibre-comparison/mflowgen-check-preconditions.py && cp -f .mflowgen/29-mentor-calibre-comparison/mflowgen-check-preconditions.py 29-mentor-calibre-comparison; fi && if [[ -e .mflowgen/29-mentor-calibre-comparison/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/29-mentor-calibre-comparison/mflowgen-check-postconditions.py && cp -f .mflowgen/29-mentor-calibre-comparison/mflowgen-check-postconditions.py 29-mentor-calibre-comparison; fi && cd 29-mentor-calibre-comparison && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 29-mentor-calibre-comparison/outputs/*
endef

29-mentor-calibre-comparison/.execstamp: 29-mentor-calibre-comparison/.stamp 29-mentor-calibre-comparison/inputs/.stamp.adk 29-mentor-calibre-comparison/inputs/.stamp.design.lvs.v 29-mentor-calibre-comparison/inputs/.stamp.design_extracted.spice
	$(call 29_mentor_calibre_comparison_commands_rule)
	touch $@

29-mentor-calibre-comparison/outputs/.execstamp.lvs.report: 29-mentor-calibre-comparison/.execstamp
	touch $@

endif

# collect outputs

29-mentor-calibre-comparison/outputs/.stamp.lvs.report: 29-mentor-calibre-comparison/.execstamp 29-mentor-calibre-comparison/outputs/.execstamp.lvs.report
	$(call stamp,29-mentor-calibre-comparison/outputs/.stamp.lvs.report)

# post-conditions

define 29_mentor_calibre_comparison_post_conditions_commands_rule
	cd 29-mentor-calibre-comparison && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

29-mentor-calibre-comparison/.postconditions.stamp: 29-mentor-calibre-comparison/.execstamp 29-mentor-calibre-comparison/outputs/.execstamp.lvs.report 29-mentor-calibre-comparison/outputs/.stamp.lvs.report
	$(call 29_mentor_calibre_comparison_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: mentor-calibre-comparison

mentor-calibre-comparison: 29-mentor-calibre-comparison/.execstamp 29-mentor-calibre-comparison/.postconditions.stamp 29-mentor-calibre-comparison/outputs/.execstamp.lvs.report 29-mentor-calibre-comparison/outputs/.stamp.lvs.report

.PHONY: 29

29: 29-mentor-calibre-comparison/.execstamp 29-mentor-calibre-comparison/.postconditions.stamp 29-mentor-calibre-comparison/outputs/.execstamp.lvs.report 29-mentor-calibre-comparison/outputs/.stamp.lvs.report

# debug

define 29_debug_rule
	cd 29-mentor-calibre-comparison && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-mentor-calibre-comparison: 
	$(call 29_debug_rule)

.PHONY: debug-29

debug-29: debug-mentor-calibre-comparison

# ------------------------------------------------------------------------
# netgen-lvs-gds
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 30-netgen-lvs-gds/.prebuilt)","")
30-netgen-lvs-gds/.stamp: 18-cadence-innovus-signoff/.execstamp 18-cadence-innovus-signoff/.postconditions.stamp 18-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.lef 18-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.sdf 18-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 18-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.stamp.design.def.gz 18-cadence-innovus-signoff/outputs/.stamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.stamp.design.lef 18-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.stamp.design.sdf 18-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
30-netgen-lvs-gds/.stamp: 27-open-magic-gds2spice/.execstamp 27-open-magic-gds2spice/.postconditions.stamp 27-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice 27-open-magic-gds2spice/outputs/.stamp.design_extracted.spice
30-netgen-lvs-gds/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
30-netgen-lvs-gds/.stamp:
	$(call cpdir-and-parameterize,30-netgen-lvs-gds,../design/open-netgen-lvs,30-netgen-lvs-gds/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 30-netgen-lvs-gds/.prebuilt)","")
30-netgen-lvs-gds/inputs/.stamp.adk: 30-netgen-lvs-gds/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,30-netgen-lvs-gds/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 30-netgen-lvs-gds/.prebuilt)","")
30-netgen-lvs-gds/inputs/.stamp.design.lvs.v: 30-netgen-lvs-gds/.stamp 18-cadence-innovus-signoff/outputs/.stamp.design.lvs.v
	$(call symlink,30-netgen-lvs-gds/inputs,design.lvs.v,../../18-cadence-innovus-signoff/outputs/design.lvs.v,.stamp.design.lvs.v)
endif

ifeq ("$(wildcard 30-netgen-lvs-gds/.prebuilt)","")
30-netgen-lvs-gds/inputs/.stamp.design_extracted.spice: 30-netgen-lvs-gds/.stamp 27-open-magic-gds2spice/outputs/.stamp.design_extracted.spice
	$(call symlink,30-netgen-lvs-gds/inputs,design_extracted.spice,../../27-open-magic-gds2spice/outputs/design_extracted.spice,.stamp.design_extracted.spice)
endif

# execute

ifeq ("$(wildcard 30-netgen-lvs-gds/.prebuilt)","")

define 30_netgen_lvs_gds_commands_rule
	mkdir -p 30-netgen-lvs-gds/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t netgen-lvs-gds && chmod +x .mflowgen/30-netgen-lvs-gds/mflowgen-run && cp -f .mflowgen/30-netgen-lvs-gds/mflowgen-run 30-netgen-lvs-gds && if [[ -e .mflowgen/30-netgen-lvs-gds/mflowgen-debug ]]; then chmod +x .mflowgen/30-netgen-lvs-gds/mflowgen-debug && cp -f .mflowgen/30-netgen-lvs-gds/mflowgen-debug 30-netgen-lvs-gds; fi && if [[ -e .mflowgen/30-netgen-lvs-gds/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/30-netgen-lvs-gds/mflowgen-check-preconditions.py && cp -f .mflowgen/30-netgen-lvs-gds/mflowgen-check-preconditions.py 30-netgen-lvs-gds; fi && if [[ -e .mflowgen/30-netgen-lvs-gds/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/30-netgen-lvs-gds/mflowgen-check-postconditions.py && cp -f .mflowgen/30-netgen-lvs-gds/mflowgen-check-postconditions.py 30-netgen-lvs-gds; fi && cd 30-netgen-lvs-gds && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 30-netgen-lvs-gds/outputs/*
endef

30-netgen-lvs-gds/.execstamp: 30-netgen-lvs-gds/.stamp 30-netgen-lvs-gds/inputs/.stamp.adk 30-netgen-lvs-gds/inputs/.stamp.design.lvs.v 30-netgen-lvs-gds/inputs/.stamp.design_extracted.spice
	$(call 30_netgen_lvs_gds_commands_rule)
	touch $@

30-netgen-lvs-gds/outputs/.execstamp.lvs_results.log: 30-netgen-lvs-gds/.execstamp
	touch $@

endif

# collect outputs

30-netgen-lvs-gds/outputs/.stamp.lvs_results.log: 30-netgen-lvs-gds/.execstamp 30-netgen-lvs-gds/outputs/.execstamp.lvs_results.log
	$(call stamp,30-netgen-lvs-gds/outputs/.stamp.lvs_results.log)

# post-conditions

define 30_netgen_lvs_gds_post_conditions_commands_rule
	cd 30-netgen-lvs-gds && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

30-netgen-lvs-gds/.postconditions.stamp: 30-netgen-lvs-gds/.execstamp 30-netgen-lvs-gds/outputs/.execstamp.lvs_results.log 30-netgen-lvs-gds/outputs/.stamp.lvs_results.log
	$(call 30_netgen_lvs_gds_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: netgen-lvs-gds

netgen-lvs-gds: 30-netgen-lvs-gds/.execstamp 30-netgen-lvs-gds/.postconditions.stamp 30-netgen-lvs-gds/outputs/.execstamp.lvs_results.log 30-netgen-lvs-gds/outputs/.stamp.lvs_results.log

.PHONY: 30

30: 30-netgen-lvs-gds/.execstamp 30-netgen-lvs-gds/.postconditions.stamp 30-netgen-lvs-gds/outputs/.execstamp.lvs_results.log 30-netgen-lvs-gds/outputs/.stamp.lvs_results.log

# debug

# ------------------------------------------------------------------------
# synopsys-ptpx-gl
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 31-synopsys-ptpx-gl/.prebuilt)","")
31-synopsys-ptpx-gl/.stamp: 18-cadence-innovus-signoff/.execstamp 18-cadence-innovus-signoff/.postconditions.stamp 18-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.lef 18-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.sdf 18-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 18-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 18-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 18-cadence-innovus-signoff/outputs/.stamp.design.def.gz 18-cadence-innovus-signoff/outputs/.stamp.design.flatbuslvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 18-cadence-innovus-signoff/outputs/.stamp.design.lef 18-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.nofillerflatbuslvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.nofillerlvs.v 18-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc 18-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 18-cadence-innovus-signoff/outputs/.stamp.design.sdf 18-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 18-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 18-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 18-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
31-synopsys-ptpx-gl/.stamp: 28-gen-saif-gl/.execstamp 28-gen-saif-gl/.postconditions.stamp 28-gen-saif-gl/outputs/.execstamp.run.saif 28-gen-saif-gl/outputs/.stamp.run.saif
31-synopsys-ptpx-gl/.stamp: 5-skywater-130nm/.execstamp 5-skywater-130nm/.postconditions.stamp 5-skywater-130nm/outputs/.execstamp.adk 5-skywater-130nm/outputs/.stamp.adk
31-synopsys-ptpx-gl/.stamp:
	$(call cpdir-and-parameterize,31-synopsys-ptpx-gl,../../mflowgen/steps/synopsys-ptpx-gl,31-synopsys-ptpx-gl/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 31-synopsys-ptpx-gl/.prebuilt)","")
31-synopsys-ptpx-gl/inputs/.stamp.adk: 31-synopsys-ptpx-gl/.stamp 5-skywater-130nm/outputs/.stamp.adk
	$(call symlink,31-synopsys-ptpx-gl/inputs,adk,../../5-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 31-synopsys-ptpx-gl/.prebuilt)","")
31-synopsys-ptpx-gl/inputs/.stamp.design.pt.sdc: 31-synopsys-ptpx-gl/.stamp 18-cadence-innovus-signoff/outputs/.stamp.design.pt.sdc
	$(call symlink,31-synopsys-ptpx-gl/inputs,design.pt.sdc,../../18-cadence-innovus-signoff/outputs/design.pt.sdc,.stamp.design.pt.sdc)
endif

ifeq ("$(wildcard 31-synopsys-ptpx-gl/.prebuilt)","")
31-synopsys-ptpx-gl/inputs/.stamp.design.spef.gz: 31-synopsys-ptpx-gl/.stamp 18-cadence-innovus-signoff/outputs/.stamp.design.spef.gz
	$(call symlink,31-synopsys-ptpx-gl/inputs,design.spef.gz,../../18-cadence-innovus-signoff/outputs/design.spef.gz,.stamp.design.spef.gz)
endif

ifeq ("$(wildcard 31-synopsys-ptpx-gl/.prebuilt)","")
31-synopsys-ptpx-gl/inputs/.stamp.design.vcs.v: 31-synopsys-ptpx-gl/.stamp 18-cadence-innovus-signoff/outputs/.stamp.design.vcs.v
	$(call symlink,31-synopsys-ptpx-gl/inputs,design.vcs.v,../../18-cadence-innovus-signoff/outputs/design.vcs.v,.stamp.design.vcs.v)
endif

ifeq ("$(wildcard 31-synopsys-ptpx-gl/.prebuilt)","")
31-synopsys-ptpx-gl/inputs/.stamp.run.saif: 31-synopsys-ptpx-gl/.stamp 28-gen-saif-gl/outputs/.stamp.run.saif
	$(call symlink,31-synopsys-ptpx-gl/inputs,run.saif,../../28-gen-saif-gl/outputs/run.saif,.stamp.run.saif)
endif

# execute

ifeq ("$(wildcard 31-synopsys-ptpx-gl/.prebuilt)","")

define 31_synopsys_ptpx_gl_commands_rule
	mkdir -p 31-synopsys-ptpx-gl/outputs && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t synopsys-ptpx-gl && chmod +x .mflowgen/31-synopsys-ptpx-gl/mflowgen-run && cp -f .mflowgen/31-synopsys-ptpx-gl/mflowgen-run 31-synopsys-ptpx-gl && if [[ -e .mflowgen/31-synopsys-ptpx-gl/mflowgen-debug ]]; then chmod +x .mflowgen/31-synopsys-ptpx-gl/mflowgen-debug && cp -f .mflowgen/31-synopsys-ptpx-gl/mflowgen-debug 31-synopsys-ptpx-gl; fi && if [[ -e .mflowgen/31-synopsys-ptpx-gl/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/31-synopsys-ptpx-gl/mflowgen-check-preconditions.py && cp -f .mflowgen/31-synopsys-ptpx-gl/mflowgen-check-preconditions.py 31-synopsys-ptpx-gl; fi && if [[ -e .mflowgen/31-synopsys-ptpx-gl/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/31-synopsys-ptpx-gl/mflowgen-check-postconditions.py && cp -f .mflowgen/31-synopsys-ptpx-gl/mflowgen-check-postconditions.py 31-synopsys-ptpx-gl; fi && cd 31-synopsys-ptpx-gl && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 31-synopsys-ptpx-gl/outputs/*
endef

31-synopsys-ptpx-gl/.execstamp: 31-synopsys-ptpx-gl/.stamp 31-synopsys-ptpx-gl/inputs/.stamp.adk 31-synopsys-ptpx-gl/inputs/.stamp.design.pt.sdc 31-synopsys-ptpx-gl/inputs/.stamp.design.spef.gz 31-synopsys-ptpx-gl/inputs/.stamp.design.vcs.v 31-synopsys-ptpx-gl/inputs/.stamp.run.saif
	$(call 31_synopsys_ptpx_gl_commands_rule)

31-synopsys-ptpx-gl/.execstamp.execute-phony: 31-synopsys-ptpx-gl/.execstamp
	touch $@

endif

# collect outputs

# post-conditions

define 31_synopsys_ptpx_gl_post_conditions_commands_rule
	cd 31-synopsys-ptpx-gl && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

31-synopsys-ptpx-gl/.postconditions.stamp: 31-synopsys-ptpx-gl/.execstamp 31-synopsys-ptpx-gl/.execstamp.execute-phony
	$(call 31_synopsys_ptpx_gl_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: synopsys-ptpx-gl

synopsys-ptpx-gl: 31-synopsys-ptpx-gl/.execstamp 31-synopsys-ptpx-gl/.execstamp.execute-phony 31-synopsys-ptpx-gl/.postconditions.stamp

.PHONY: 31

31: 31-synopsys-ptpx-gl/.execstamp 31-synopsys-ptpx-gl/.execstamp.execute-phony 31-synopsys-ptpx-gl/.postconditions.stamp

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
	rm -rf ./10-cadence-innovus-flowsetup

.PHONY: clean-cadence-innovus-flowsetup

clean-cadence-innovus-flowsetup: clean-10

.PHONY: clean-11

clean-11:
	rm -rf ./11-cadence-innovus-init

.PHONY: clean-cadence-innovus-init

clean-cadence-innovus-init: clean-11

.PHONY: clean-12

clean-12:
	rm -rf ./12-cadence-innovus-power

.PHONY: clean-cadence-innovus-power

clean-cadence-innovus-power: clean-12

.PHONY: clean-13

clean-13:
	rm -rf ./13-cadence-innovus-place

.PHONY: clean-cadence-innovus-place

clean-cadence-innovus-place: clean-13

.PHONY: clean-14

clean-14:
	rm -rf ./14-cadence-innovus-cts

.PHONY: clean-cadence-innovus-cts

clean-cadence-innovus-cts: clean-14

.PHONY: clean-15

clean-15:
	rm -rf ./15-cadence-innovus-postcts_hold

.PHONY: clean-cadence-innovus-postcts_hold

clean-cadence-innovus-postcts_hold: clean-15

.PHONY: clean-16

clean-16:
	rm -rf ./16-cadence-innovus-route

.PHONY: clean-cadence-innovus-route

clean-cadence-innovus-route: clean-16

.PHONY: clean-17

clean-17:
	rm -rf ./17-cadence-innovus-postroute

.PHONY: clean-cadence-innovus-postroute

clean-cadence-innovus-postroute: clean-17

.PHONY: clean-18

clean-18:
	rm -rf ./18-cadence-innovus-signoff

.PHONY: clean-cadence-innovus-signoff

clean-cadence-innovus-signoff: clean-18

.PHONY: clean-19

clean-19:
	rm -rf ./19-mentor-calibre-gdsmerge

.PHONY: clean-mentor-calibre-gdsmerge

clean-mentor-calibre-gdsmerge: clean-19

.PHONY: clean-2

clean-2:
	rm -rf ./2-info

.PHONY: clean-info

clean-info: clean-2

.PHONY: clean-20

clean-20:
	rm -rf ./20-open-magic-def2spice

.PHONY: clean-open-magic-def2spice

clean-open-magic-def2spice: clean-20

.PHONY: clean-21

clean-21:
	rm -rf ./21-synopsys-pt-timing-signoff

.PHONY: clean-synopsys-pt-timing-signoff

clean-synopsys-pt-timing-signoff: clean-21

.PHONY: clean-22

clean-22:
	rm -rf ./22-synopsys-ptpx-rtl

.PHONY: clean-synopsys-ptpx-rtl

clean-synopsys-ptpx-rtl: clean-22

.PHONY: clean-23

clean-23:
	rm -rf ./23-gl-sim

.PHONY: clean-gl-sim

clean-gl-sim: clean-23

.PHONY: clean-24

clean-24:
	rm -rf ./24-netgen-lvs-def

.PHONY: clean-netgen-lvs-def

clean-netgen-lvs-def: clean-24

.PHONY: clean-25

clean-25:
	rm -rf ./25-open-magic-antenna

.PHONY: clean-open-magic-antenna

clean-open-magic-antenna: clean-25

.PHONY: clean-26

clean-26:
	rm -rf ./26-open-magic-drc

.PHONY: clean-open-magic-drc

clean-open-magic-drc: clean-26

.PHONY: clean-27

clean-27:
	rm -rf ./27-open-magic-gds2spice

.PHONY: clean-open-magic-gds2spice

clean-open-magic-gds2spice: clean-27

.PHONY: clean-28

clean-28:
	rm -rf ./28-gen-saif-gl

.PHONY: clean-gen-saif-gl

clean-gen-saif-gl: clean-28

.PHONY: clean-29

clean-29:
	rm -rf ./29-mentor-calibre-comparison

.PHONY: clean-mentor-calibre-comparison

clean-mentor-calibre-comparison: clean-29

.PHONY: clean-3

clean-3:
	rm -rf ./3-pin-placement

.PHONY: clean-pin-placement

clean-pin-placement: clean-3

.PHONY: clean-30

clean-30:
	rm -rf ./30-netgen-lvs-gds

.PHONY: clean-netgen-lvs-gds

clean-netgen-lvs-gds: clean-30

.PHONY: clean-31

clean-31:
	rm -rf ./31-synopsys-ptpx-gl

.PHONY: clean-synopsys-ptpx-gl

clean-synopsys-ptpx-gl: clean-31

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
	rm -rf ./6-testbench

.PHONY: clean-testbench

clean-testbench: clean-6

.PHONY: clean-7

clean-7:
	rm -rf ./7-cadence-ncsim-sim

.PHONY: clean-cadence-ncsim-sim

clean-cadence-ncsim-sim: clean-7

.PHONY: clean-8

clean-8:
	rm -rf ./8-synopsys-vcs-sim

.PHONY: clean-synopsys-vcs-sim

clean-synopsys-vcs-sim: clean-8

.PHONY: clean-9

clean-9:
	rm -rf ./9-synopsys-dc-synthesis

.PHONY: clean-synopsys-dc-synthesis

clean-synopsys-dc-synthesis: clean-9

# Diff

.PHONY: diff-0

diff-0:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/constraints 0-constraints | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/constraints.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 0-constraints.*' && echo || true

.PHONY: diff-1

diff-1:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/floorplan 1-floorplan | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/floorplan.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 1-floorplan.*' && echo || true

.PHONY: diff-2

diff-2:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../mflowgen/steps/info 2-info | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../mflowgen/steps/info.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 2-info.*' && echo || true

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
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/testbench 6-testbench | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/testbench.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 6-testbench.*' && echo || true

.PHONY: diff-7

diff-7:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/cadence-xcelium-sim 7-cadence-ncsim-sim | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/cadence-xcelium-sim.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 7-cadence-ncsim-sim.*' && echo || true

.PHONY: diff-8

diff-8:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/synopsys-vcs-sim 8-synopsys-vcs-sim | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/synopsys-vcs-sim.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 8-synopsys-vcs-sim.*' && echo || true

.PHONY: diff-9

diff-9:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../mflowgen/steps/synopsys-dc-synthesis 9-synopsys-dc-synthesis | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../mflowgen/steps/synopsys-dc-synthesis.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 9-synopsys-dc-synthesis.*' && echo || true

.PHONY: diff-10

diff-10:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../mflowgen/steps/cadence-innovus-flowsetup 10-cadence-innovus-flowsetup | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../mflowgen/steps/cadence-innovus-flowsetup.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 10-cadence-innovus-flowsetup.*' && echo || true

.PHONY: diff-11

diff-11:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../mflowgen/steps/cadence-innovus-init 11-cadence-innovus-init | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../mflowgen/steps/cadence-innovus-init.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 11-cadence-innovus-init.*' && echo || true

.PHONY: diff-12

diff-12:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/cadence-innovus-power 12-cadence-innovus-power | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/cadence-innovus-power.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 12-cadence-innovus-power.*' && echo || true

.PHONY: diff-13

diff-13:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../mflowgen/steps/cadence-innovus-place 13-cadence-innovus-place | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../mflowgen/steps/cadence-innovus-place.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 13-cadence-innovus-place.*' && echo || true

.PHONY: diff-14

diff-14:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../mflowgen/steps/cadence-innovus-cts 14-cadence-innovus-cts | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../mflowgen/steps/cadence-innovus-cts.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 14-cadence-innovus-cts.*' && echo || true

.PHONY: diff-15

diff-15:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../mflowgen/steps/cadence-innovus-postcts_hold 15-cadence-innovus-postcts_hold | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../mflowgen/steps/cadence-innovus-postcts_hold.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 15-cadence-innovus-postcts_hold.*' && echo || true

.PHONY: diff-16

diff-16:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../mflowgen/steps/cadence-innovus-route 16-cadence-innovus-route | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../mflowgen/steps/cadence-innovus-route.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 16-cadence-innovus-route.*' && echo || true

.PHONY: diff-17

diff-17:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../mflowgen/steps/cadence-innovus-postroute 17-cadence-innovus-postroute | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../mflowgen/steps/cadence-innovus-postroute.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 17-cadence-innovus-postroute.*' && echo || true

.PHONY: diff-18

diff-18:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/cadence-innovus-signoff 18-cadence-innovus-signoff | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/cadence-innovus-signoff.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 18-cadence-innovus-signoff.*' && echo || true

.PHONY: diff-19

diff-19:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../mflowgen/steps/mentor-calibre-gdsmerge 19-mentor-calibre-gdsmerge | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../mflowgen/steps/mentor-calibre-gdsmerge.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 19-mentor-calibre-gdsmerge.*' && echo || true

.PHONY: diff-20

diff-20:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/open-magic-def2spice 20-open-magic-def2spice | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/open-magic-def2spice.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 20-open-magic-def2spice.*' && echo || true

.PHONY: diff-21

diff-21:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../mflowgen/steps/synopsys-pt-timing-signoff 21-synopsys-pt-timing-signoff | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../mflowgen/steps/synopsys-pt-timing-signoff.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 21-synopsys-pt-timing-signoff.*' && echo || true

.PHONY: diff-22

diff-22:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/synopsys-ptpx-rtl 22-synopsys-ptpx-rtl | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/synopsys-ptpx-rtl.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 22-synopsys-ptpx-rtl.*' && echo || true

.PHONY: diff-23

diff-23:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/synopsys-vcs-sim 23-gl-sim | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/synopsys-vcs-sim.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 23-gl-sim.*' && echo || true

.PHONY: diff-24

diff-24:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/open-netgen-lvs 24-netgen-lvs-def | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/open-netgen-lvs.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 24-netgen-lvs-def.*' && echo || true

.PHONY: diff-25

diff-25:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/open-magic-antenna 25-open-magic-antenna | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/open-magic-antenna.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 25-open-magic-antenna.*' && echo || true

.PHONY: diff-26

diff-26:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/open-magic-drc 26-open-magic-drc | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/open-magic-drc.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 26-open-magic-drc.*' && echo || true

.PHONY: diff-27

diff-27:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/open-magic-gds2spice 27-open-magic-gds2spice | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/open-magic-gds2spice.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 27-open-magic-gds2spice.*' && echo || true

.PHONY: diff-28

diff-28:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../mflowgen/steps/synopsys-vcd2saif-convert 28-gen-saif-gl | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../mflowgen/steps/synopsys-vcd2saif-convert.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 28-gen-saif-gl.*' && echo || true

.PHONY: diff-29

diff-29:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/mentor-calibre-comparison 29-mentor-calibre-comparison | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/mentor-calibre-comparison.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 29-mentor-calibre-comparison.*' && echo || true

.PHONY: diff-30

diff-30:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/open-netgen-lvs 30-netgen-lvs-gds | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/open-netgen-lvs.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 30-netgen-lvs-gds.*' && echo || true

.PHONY: diff-31

diff-31:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../mflowgen/steps/synopsys-ptpx-gl 31-synopsys-ptpx-gl | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../mflowgen/steps/synopsys-ptpx-gl.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 31-synopsys-ptpx-gl.*' && echo || true

# Info

.PHONY: info-0

info-0:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t constraints && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/0-constraints/configure.yml

.PHONY: info-1

info-1:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t floorplan && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/1-floorplan/configure.yml

.PHONY: info-2

info-2:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t info && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/2-info/configure.yml

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
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t testbench && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/6-testbench/configure.yml

.PHONY: info-7

info-7:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-ncsim-sim && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/7-cadence-ncsim-sim/configure.yml

.PHONY: info-8

info-8:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t synopsys-vcs-sim && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/8-synopsys-vcs-sim/configure.yml

.PHONY: info-9

info-9:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t synopsys-dc-synthesis && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/9-synopsys-dc-synthesis/configure.yml

.PHONY: info-10

info-10:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-flowsetup && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/10-cadence-innovus-flowsetup/configure.yml

.PHONY: info-11

info-11:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-init && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/11-cadence-innovus-init/configure.yml

.PHONY: info-12

info-12:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-power && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/12-cadence-innovus-power/configure.yml

.PHONY: info-13

info-13:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-place && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/13-cadence-innovus-place/configure.yml

.PHONY: info-14

info-14:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-cts && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/14-cadence-innovus-cts/configure.yml

.PHONY: info-15

info-15:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-postcts_hold && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/15-cadence-innovus-postcts_hold/configure.yml

.PHONY: info-16

info-16:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-route && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/16-cadence-innovus-route/configure.yml

.PHONY: info-17

info-17:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-postroute && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/17-cadence-innovus-postroute/configure.yml

.PHONY: info-18

info-18:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-signoff && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/18-cadence-innovus-signoff/configure.yml

.PHONY: info-19

info-19:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t mentor-calibre-gdsmerge && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/19-mentor-calibre-gdsmerge/configure.yml

.PHONY: info-20

info-20:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-def2spice && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/20-open-magic-def2spice/configure.yml

.PHONY: info-21

info-21:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t synopsys-pt-timing-signoff && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/21-synopsys-pt-timing-signoff/configure.yml

.PHONY: info-22

info-22:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t synopsys-ptpx-rtl && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/22-synopsys-ptpx-rtl/configure.yml

.PHONY: info-23

info-23:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t gl-sim && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/23-gl-sim/configure.yml

.PHONY: info-24

info-24:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t netgen-lvs-def && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/24-netgen-lvs-def/configure.yml

.PHONY: info-25

info-25:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-antenna && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/25-open-magic-antenna/configure.yml

.PHONY: info-26

info-26:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-drc && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/26-open-magic-drc/configure.yml

.PHONY: info-27

info-27:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-gds2spice && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/27-open-magic-gds2spice/configure.yml

.PHONY: info-28

info-28:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t gen-saif-gl && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/28-gen-saif-gl/configure.yml

.PHONY: info-29

info-29:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t mentor-calibre-comparison && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/29-mentor-calibre-comparison/configure.yml

.PHONY: info-30

info-30:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t netgen-lvs-gds && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/30-netgen-lvs-gds/configure.yml

.PHONY: info-31

info-31:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-letters -c -t synopsys-ptpx-gl && /home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/31-synopsys-ptpx-gl/configure.yml

# Runtimes

.PHONY: runtimes

runtimes:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-runtimes

# List

.PHONY: list

list:
	@echo && echo Generic Targets: && echo && printf " - %s\\n" "list      -- List all steps" "status    -- Print build status for each step" "runtimes  -- Print runtimes for each step" "graph     -- Generate a PDF of the step dependency graph" "clean-all -- Remove all build directories" "clean-N   -- Clean target N" "info-N    -- Print configured info for step N" "diff-N    -- Diff target N" && echo && echo Targets: && echo && printf " - %s\\n" "  0 : constraints" "  1 : floorplan" "  2 : info" "  3 : pin-placement" "  4 : rtl" "  5 : skywater-130nm" "  6 : testbench" "  7 : cadence-ncsim-sim" "  8 : synopsys-vcs-sim" "  9 : synopsys-dc-synthesis" " 10 : cadence-innovus-flowsetup" " 11 : cadence-innovus-init" " 12 : cadence-innovus-power" " 13 : cadence-innovus-place" " 14 : cadence-innovus-cts" " 15 : cadence-innovus-postcts_hold" " 16 : cadence-innovus-route" " 17 : cadence-innovus-postroute" " 18 : cadence-innovus-signoff" " 19 : mentor-calibre-gdsmerge" " 20 : open-magic-def2spice" " 21 : synopsys-pt-timing-signoff" " 22 : synopsys-ptpx-rtl" " 23 : gl-sim" " 24 : netgen-lvs-def" " 25 : open-magic-antenna" " 26 : open-magic-drc" " 27 : open-magic-gds2spice" " 28 : gen-saif-gl" " 29 : mentor-calibre-comparison" " 30 : netgen-lvs-gds" " 31 : synopsys-ptpx-gl" && echo && echo Debug Targets: && echo && printf " - %s\\n" "debug-9  : debug-synopsys-dc-synthesis" "debug-11 : debug-cadence-innovus-init" "debug-12 : debug-cadence-innovus-power" "debug-13 : debug-cadence-innovus-place" "debug-14 : debug-cadence-innovus-cts" "debug-15 : debug-cadence-innovus-postcts_hold" "debug-16 : debug-cadence-innovus-route" "debug-17 : debug-cadence-innovus-postroute" "debug-18 : debug-cadence-innovus-signoff" "debug-19 : debug-mentor-calibre-gdsmerge" "debug-29 : debug-mentor-calibre-comparison" && echo

# Graph

.PHONY: graph

graph:
	dot -Tpdf .mflowgen/graph.dot > graph.pdf

# Status

.PHONY: status

status:
	@/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/digital_synth_pnr/mflowgen/mflowgen/scripts/mflowgen-status --backend make -s 0-constraints,1-floorplan,2-info,3-pin-placement,4-rtl,5-skywater-130nm,6-testbench,7-cadence-ncsim-sim,8-synopsys-vcs-sim,9-synopsys-dc-synthesis,10-cadence-innovus-flowsetup,11-cadence-innovus-init,12-cadence-innovus-power,13-cadence-innovus-place,14-cadence-innovus-cts,15-cadence-innovus-postcts_hold,16-cadence-innovus-route,17-cadence-innovus-postroute,18-cadence-innovus-signoff,19-mentor-calibre-gdsmerge,20-open-magic-def2spice,21-synopsys-pt-timing-signoff,22-synopsys-ptpx-rtl,23-gl-sim,24-netgen-lvs-def,25-open-magic-antenna,26-open-magic-drc,27-open-magic-gds2spice,28-gen-saif-gl,29-mentor-calibre-comparison,30-netgen-lvs-gds,31-synopsys-ptpx-gl

