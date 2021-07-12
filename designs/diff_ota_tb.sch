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
N 480 -440 510 -440 { lab=vip}
N 600 -530 600 -440 { lab=#net1}
N 600 -530 640 -530 { lab=#net1}
N 700 -530 760 -530 { lab=vom}
N 760 -530 760 -430 { lab=vom}
N 600 -380 600 -290 { lab=#net2}
N 600 -290 640 -290 { lab=#net2}
N 700 -290 760 -290 { lab=vop}
N 760 -390 760 -290 { lab=vop}
N 480 -380 510 -380 { lab=vim}
N 740 -390 850 -390 { lab=vop}
N 740 -430 850 -430 { lab=vom}
N 570 -440 620 -440 { lab=#net1}
N 570 -380 620 -380 { lab=#net2}
N 570 -380 570 -330 { lab=#net2}
N 510 -380 510 -330 { lab=vim}
N 510 -490 510 -440 { lab=vip}
N 570 -490 570 -440 { lab=#net1}
N 480 -410 620 -410 { lab=vocm}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Nikhil Poole"}
C {devices/code.sym} 1030 -350 0 0 {name=STIMULI 
only_toplevel=true
place=end
value=".include diff_ota_tb_commands.spice"}
C {devices/code.sym} 1030 -500 0 0 {name=TT_MODELS
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
C {devices/lab_wire.sym} 480 -440 0 0 {name=l2 sig_type=std_logic lab=vip}
C {devices/lab_wire.sym} 480 -380 0 0 {name=l3 sig_type=std_logic lab=vim}
C {devices/lab_wire.sym} 480 -410 0 0 {name=l4 sig_type=std_logic lab=vocm}
C {devices/capa.sym} 670 -530 1 1 {name=C1
m=1
value=500f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 540 -440 1 1 {name=C2
m=1
value=500f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 670 -290 1 0 {name=C3
m=1
value=500f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 540 -380 1 0 {name=C4
m=1
value=500f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 780 -430 0 1 {name=l5 sig_type=std_logic lab=vom}
C {devices/lab_wire.sym} 780 -390 0 1 {name=l6 sig_type=std_logic lab=vop}
C {devices/capa.sym} 850 -460 2 1 {name=C5
m=1
value=500f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 850 -360 0 0 {name=C6
m=1
value=500f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 850 -490 2 1 {name=l7 lab=GND}
C {devices/gnd.sym} 850 -330 0 0 {name=l8 lab=GND}
C {devices/res.sym} 540 -490 1 0 {name=R1
value=100g
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 540 -330 1 1 {name=R2
value=100g
footprint=1206
device=resistor
m=1}
C {/home/users/nhpoole/ee272b/ee272b_mixed_signal_mmwave_accelerator/designs/diff_fold_casc_ota.sym} 680 -410 0 0 {name=x1 Lbias=4.8 Ibias=10u Itail=10u Ccomp=2p}
