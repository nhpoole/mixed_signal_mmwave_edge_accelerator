v {xschem version=2.9.9 file_version=1.2 

* Copyright 2020 Stefan Frederik Schippers
* 
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.

}
G {}
K {}
V {}
S {}
E {}
N 380 -390 380 -380 { lab=#net1}
N 380 -380 430 -380 { lab=#net1}
N 380 -440 380 -430 { lab=#net2}
N 380 -440 430 -440 { lab=#net2}
N 90 -440 180 -440 { lab=vstimp}
N 90 -380 180 -380 { lab=vstimm}
N 550 -430 620 -430 { lab=#net2}
N 620 -440 620 -430 { lab=#net2}
N 620 -440 660 -440 { lab=#net2}
N 550 -390 620 -390 { lab=#net1}
N 620 -390 620 -380 { lab=#net1}
N 620 -380 660 -380 { lab=#net1}
N 780 -430 850 -430 { lab=vfiltp}
N 850 -440 850 -430 { lab=vfiltp}
N 850 -440 890 -440 { lab=vfiltp}
N 780 -390 850 -390 { lab=vfiltm}
N 850 -390 850 -380 { lab=vfiltm}
N 380 -540 380 -440 { lab=#net2}
N 380 -540 980 -540 { lab=#net2}
N 980 -540 1070 -390 { lab=#net2}
N 380 -380 380 -280 { lab=#net1}
N 380 -280 980 -280 { lab=#net1}
N 980 -280 1070 -430 { lab=#net1}
N 1010 -430 1120 -430 { lab=#net1}
N 1010 -390 1120 -390 { lab=#net2}
N 620 -540 620 -440 { lab=#net2}
N 620 -380 620 -280 { lab=#net1}
N 850 -380 890 -380 { lab=vfiltm}
N 850 -560 930 -560 { lab=vfiltp}
N 850 -260 930 -260 { lab=vfiltm}
N 850 -560 850 -440 { lab=vfiltp}
N 850 -380 850 -260 { lab=vfiltm}
N 850 -580 850 -560 { lab=vfiltp}
N 850 -260 850 -240 { lab=vfiltm}
N 1120 -390 1120 -380 { lab=#net2}
N 1120 -440 1120 -430 { lab=#net1}
N 300 -430 380 -430 { lab=#net2}
N 300 -390 380 -390 { lab=#net1}
N 90 -410 180 -410 { lab=vocm_filt}
N 340 -410 430 -410 { lab=vocm_filt}
N 570 -410 660 -410 { lab=vocm_filt}
N 800 -410 890 -410 { lab=vocm_filt}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Nikhil Poole"}
C {devices/code.sym} 1270 -250 0 0 {name=STIMULI 
only_toplevel=true
place=end
value=".include active_lowpass_filter_commands.spice"}
C {devices/code.sym} 1270 -400 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_nfet_01v8/sky130_fd_pr__esd_nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_pfet_g5v0d10v5/sky130_fd_pr__esd_pfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d16v0/sky130_fd_pr__pfet_g5v0d16v0__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d16v0/sky130_fd_pr__nfet_g5v0d16v0__tt_discrete.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_nfet_g5v0d10v5/sky130_fd_pr__esd_nfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/nonfet.spice
* Mismatch parameters
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__mismatch.corner.spice
* Resistor\\\\$::SKYWATER_MODELS\\\\/Capacitor
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical__lin.spice
* Special cells
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/specialized_cells.spice
* All models
.include \\\\$::SKYWATER_MODELS\\\\/models/all.spice
* Corner
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/rf.spice
"}
C {devices/lab_wire.sym} 160 -410 0 0 {name=l34 sig_type=std_logic lab=vocm_filt}
C {devices/lab_wire.sym} 140 -440 0 0 {name=l35 sig_type=std_logic lab=vstimp}
C {devices/lab_wire.sym} 150 -380 0 0 {name=l36 sig_type=std_logic lab=vstimm}
C {devices/lab_wire.sym} 880 -260 2 0 {name=l37 sig_type=std_logic lab=vfiltm}
C {devices/lab_wire.sym} 880 -560 0 1 {name=l38 sig_type=std_logic lab=vfiltp}
C {devices/capa.sym} 1120 -350 0 1 {name=C17
m=1
value='2*Cfilt'
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1120 -320 0 0 {name=l40 lab=GND}
C {devices/capa.sym} 1120 -470 2 0 {name=C21
m=1
value='2*Cfilt'
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1120 -500 2 1 {name=l46 lab=GND}
C {devices/capa.sym} 850 -610 2 0 {name=C16
m=1
value='2*Cfilt'
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 850 -640 2 1 {name=l49 lab=GND}
C {devices/capa.sym} 850 -210 0 1 {name=C19
m=1
value='2*Cfilt'
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 850 -180 0 0 {name=l50 lab=GND}
C {devices/lab_wire.sym} 410 -410 0 0 {name=l32 sig_type=std_logic lab=vocm_filt}
C {devices/lab_wire.sym} 640 -410 0 0 {name=l39 sig_type=std_logic lab=vocm_filt}
C {devices/lab_wire.sym} 870 -410 0 0 {name=l41 sig_type=std_logic lab=vocm_filt}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/gm_c_stage.sym} 240 -410 0 0 {name=x1 Itail='Itail_filt' Wp=1 Wn_diff=8 Wpcm=1 Wncm=8 Wn_bias=1 Lp=1 Ln_diff=1 Lpcm=1 Lncm=1 Ln_bias=4}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/gm_c_stage.sym} 490 -410 2 1 {name=x2 Itail='Itail_filt' Wp=1 Wn_diff=8 Wpcm=1 Wncm=8 Wn_bias=1 Lp=1 Ln_diff=1 Lpcm=1 Lncm=1 Ln_bias=4}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/gm_c_stage.sym} 720 -410 2 1 {name=x3 Itail='Itail_filt' Wp=1 Wn_diff=8 Wpcm=1 Wncm=8 Wn_bias=1 Lp=1 Ln_diff=1 Lpcm=1 Lncm=1 Ln_bias=4}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/gm_c_stage.sym} 950 -410 0 0 {name=x4 Itail='Itail_filt' Wp=1 Wn_diff=8 Wpcm=1 Wncm=8 Wn_bias=1 Lp=1 Ln_diff=1 Lpcm=1 Lncm=1 Ln_bias=4}
